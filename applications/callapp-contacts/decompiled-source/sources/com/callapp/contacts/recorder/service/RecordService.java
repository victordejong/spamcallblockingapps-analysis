package com.callapp.contacts.recorder.service;

import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Base64;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.CallRecordChangedListener;
import com.callapp.contacts.activity.records.LowDeviceStorageBroadcastReceiver;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.CallRecorderUtils;
import com.callapp.contacts.recorder.encoder.AudioEncoder;
import com.callapp.contacts.recorder.encoder.DynamicNormalizer;
import com.callapp.contacts.recorder.encoder.DynamicNormalizerFactroy;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/service/RecordService.class */
public class RecordService implements MediaRecorder.OnErrorListener, MediaRecorder.OnInfoListener, AudioModeProvider.AudioModeListener, ContactDataChangeListener {
    public static final String EXTRA_RECORDER_COMMAND_TYPE = "EXTRA_RECORDER_COMMAND_TYPE";
    public static final String EXTRA_RECORDER_IS_INCOMING = "EXTRA_RECORDER_IS_INCOMING";
    public static final String EXTRA_RECORDER_PHONE_NUMBER = "EXTRA_RECORDER_PHONE_NUMBER";
    public static final String EXTRA_RECORDING_TEST_DATA = "EXTRA_RECORDING_TEST_DATA";
    private static final int MEDIA_RECORDER_PREPARE_TIME_TO_COMPLETE = 2000;
    public static final String PRIVATE_NUMBER_STRING = "private";
    private static final int RECORDER_AUDIO_ENCODING = 2;
    private static final int RECORDER_CHANNELS = 16;
    private static final int RECORDER_SAMPLE_RATE = 8000;
    public static final int RECORDING_DISABLED = 1;
    public static final int RECORDING_ENABLED = 0;
    public static final int RECORDING_POST_CALL = 3;
    public static final int RECORDING_TALKING = 2;
    private static final short SAMPLES = 16;
    public static final int THRESHOLD_MIN_DURATION_TO_SAVE_RECORDS = 5;
    private static final int TIMER_INTERVAL = 120;
    private AudioEncoder audioEncoder;
    private String audioFilePath;
    private AudioRecord audioRecorder;
    private byte[] buffer;
    private ByteBuffer byteBuffer;
    private RecordConfiguration configuration;
    private ContactData contactData;
    private Phone currentPhoneNumber;
    private CallRecorderManager.RecordingState currentState;
    private DynamicNormalizer dynamicNormalizer;
    private boolean isIncoming;
    private MediaRecorder mediaRecorder;
    private RecorderTestData recordingTestData;
    private ShortBuffer shortBuffer;
    private Handler updateHandler;
    private HandlerThread updateHandlerThread;
    private final Object recordingLocker = new Object();
    private final Object deleteFileLocker = new Object();
    private final Object fileSavedFileLock = new Object();
    private final Object stopAndReleaseLock = new Object();
    private final Object recordStateChangeLock = new Object();
    private boolean isReadyToSave = false;
    private LowDeviceStorageBroadcastReceiver memoryBroadcastReceiver = new LowDeviceStorageBroadcastReceiver();
    private Integer deviceCallVol = null;
    private boolean isOnSpeaker = false;
    private Runnable updateRunnable = new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.1
        @Override // java.lang.Runnable
        public void run() {
            if (RecordService.this.audioRecorder != null && RecordService.this.currentState != CallRecorderManager.RecordingState.IDLE) {
                try {
                    RecordService.this.audioRecorder.read(RecordService.this.buffer, 0, RecordService.this.buffer.length);
                    if (!RecordService.this.isOnSpeaker && RecordService.this.dynamicNormalizer != null) {
                        RecordService recordService = RecordService.this;
                        recordService.increaseVolumeAndClarity(recordService.buffer, RecordService.this.buffer.length, (short) 16);
                    }
                    RecordService.this.audioEncoder.a(RecordService.this.buffer, RecordService.this.buffer.length);
                    if (RecordService.this.configuration.isInRecorderTest() && !RecordService.this.configuration.isEmptyRecord()) {
                        new Task() { // from class: com.callapp.contacts.recorder.service.RecordService.1.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                if (!RecordService.this.configuration.isEmptyRecord()) {
                                    RecordService.this.configuration.setEmptyBufferCounter(Arrays.equals(RecordService.this.buffer, new byte[RecordService.this.buffer.length]));
                                    if (RecordService.this.configuration.isEmptyRecord()) {
                                        RecordService.this.onError();
                                    }
                                }
                            }
                        }.execute();
                    }
                } catch (IOException | NullPointerException e) {
                    RecordService.this.onError();
                    CLog.a(RecordService.class, "AudioRecorder read/encode error ".concat(String.valueOf(e)));
                }
            }
        }
    };
    private AudioRecord.OnRecordPositionUpdateListener updateListener = new AudioRecord.OnRecordPositionUpdateListener() { // from class: com.callapp.contacts.recorder.service.RecordService.2
        @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
        public void onMarkerReached(AudioRecord audioRecord) {
        }

        @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
        public void onPeriodicNotification(AudioRecord audioRecord) {
            RecordService.this.updateHandler.post(RecordService.this.updateRunnable);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.recorder.service.RecordService$10  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/service/RecordService$10.class */
    public static /* synthetic */ class AnonymousClass10 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15742a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[RecordConfiguration.METHOD.values().length];
            f15742a = iArr;
            try {
                iArr[RecordConfiguration.METHOD.METHOD_NON_NATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15742a[RecordConfiguration.METHOD.METHOD_NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents.class */
    public interface RecordServiceIntentEvents {
        void a();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x00ee -> B:12:0x00be). Please submit an issue!!! */
    public RecordService() {
        boolean z = false;
        this.currentState = Prefs.eI.get().booleanValue() ? CallRecorderManager.RecordingState.PRE_RECORD : CallRecorderManager.RecordingState.IDLE;
        try {
            Prefs.fi.set(Boolean.valueOf(CallAppApplication.get().registerReceiver(this.memoryBroadcastReceiver, getFileStorageIntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) != null ? true : z));
            CallAppApplication.get().registerReceiver(this.memoryBroadcastReceiver, getFileStorageIntentFilter("android.intent.action.DEVICE_STORAGE_OK"));
        } catch (IllegalArgumentException e) {
        }
        HandlerThread handlerThread = new HandlerThread("updateHandlerThread");
        this.updateHandlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.updateHandlerThread.getLooper());
        this.updateHandler = new Handler(this.updateHandlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteFile() {
        CLog.a(RecordService.class, "deleteFile()");
        synchronized (this.deleteFileLocker) {
            if (StringUtils.a((CharSequence) this.audioFilePath)) {
                CLog.a(RecordService.class, "deleteFile(), CallRecorder file already deleted");
                return;
            }
            IoUtils.b(new File(this.audioFilePath));
            CLog.a(RecordService.class, "audioFilePath == null!!!!");
            this.audioFilePath = null;
        }
    }

    private IntentFilter getFileStorageIntentFilter(String str) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(str);
        return intentFilter;
    }

    private String getPhoneAsString() {
        String a2 = this.currentPhoneNumber.a();
        String str = a2;
        if (StringUtils.a((CharSequence) a2)) {
            str = PRIVATE_NUMBER_STRING;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void increaseVolumeAndClarity(byte[] bArr, int i, short s) {
        this.byteBuffer.clear();
        this.byteBuffer.put(bArr, 0, i);
        if (s == 16) {
            this.shortBuffer.rewind();
            int capacity = this.shortBuffer.capacity();
            for (int i2 = 0; i2 < capacity; i2++) {
                this.shortBuffer.put((short) (this.dynamicNormalizer.a(this.shortBuffer.get(i2) / 32767.0f) * 32767.0d));
            }
        } else {
            this.byteBuffer.rewind();
            int capacity2 = this.byteBuffer.capacity();
            for (int i3 = 0; i3 < capacity2; i3++) {
                this.byteBuffer.put((byte) (this.dynamicNormalizer.a(this.byteBuffer.get(i3) / 127.0f) * 127.0d));
            }
        }
        this.byteBuffer.rewind();
        this.byteBuffer.get(bArr, 0, i);
    }

    private void initAudioRecorder() throws Exception {
        int i;
        int i2 = (Prefs.eU.get().booleanValue() ? 2 : 1) * RECORDER_SAMPLE_RATE;
        int source = this.configuration.getAudioSource().getSource();
        if (source == 4) {
            i = 100;
            source = 1;
        } else {
            i = 120;
        }
        int i3 = (i * i2) / 1000;
        int i4 = (((i3 * 2) * 16) * 1) / 8;
        int i5 = i4;
        if (i4 < AudioRecord.getMinBufferSize(i2, 16, 2)) {
            i5 = AudioRecord.getMinBufferSize(i2, 16, 2);
            i3 = i5 / 4;
            CLog.a(RecordService.class, "Increasing buffer size to ".concat(String.valueOf(i5)));
        }
        AudioRecord audioRecord = new AudioRecord(source, i2, 16, 2, i5);
        this.audioRecorder = audioRecord;
        if (audioRecord.getState() == 1) {
            this.buffer = new byte[i5];
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i5);
            this.byteBuffer = allocateDirect;
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            this.byteBuffer.rewind();
            this.shortBuffer = this.byteBuffer.asShortBuffer();
            AudioEncoder audioEncoder = this.configuration.getAudioEncoder();
            this.audioEncoder = audioEncoder;
            audioEncoder.a(i2, i5);
            this.audioRecorder.setRecordPositionUpdateListener(this.updateListener);
            this.audioRecorder.setPositionNotificationPeriod(i3);
            this.dynamicNormalizer = DynamicNormalizerFactroy.getDynamicNormalizer(this.configuration.getVolumeLevel());
            return;
        }
        this.audioRecorder.release();
        this.audioRecorder = null;
        throw new Exception("AudioRecord initialization failed");
    }

    private void initMediaRecorder() {
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.mediaRecorder = mediaRecorder;
        mediaRecorder.setAudioSource(this.configuration.getAudioSource().getSource());
        this.mediaRecorder.setOutputFormat(this.configuration.getOutputFormat().getFormat());
        this.mediaRecorder.setAudioEncoder(this.configuration.getAudioEncoderType());
        this.mediaRecorder.setOutputFile(this.audioFilePath);
        this.mediaRecorder.setOnErrorListener(this);
        this.mediaRecorder.setOnInfoListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initRecording() {
        synchronized (this.recordingLocker) {
            CLog.a(RecordService.class, "init Recording");
            if (this.currentState != CallRecorderManager.RecordingState.RECORDING) {
                this.audioFilePath = CallRecorderUtils.a(this.configuration, getPhoneAsString(), this.isIncoming);
                try {
                    int i = AnonymousClass10.f15742a[this.configuration.getAudioMethod().ordinal()];
                    if (i == 1) {
                        initMediaRecorder();
                    } else if (i == 2) {
                        initAudioRecorder();
                    }
                    prepareRecording();
                } catch (Exception e) {
                    onError();
                    CLog.a(RecordService.class, "init Recording error: " + e.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStateAndDataChanged(Serializable serializable) {
        Bundle bundle = new Bundle();
        bundle.putInt("RECORDER_STATE", this.currentState.ordinal());
        bundle.putParcelable(EXTRA_RECORDING_TEST_DATA, this.recordingTestData);
        if (serializable != null) {
            bundle.putSerializable("RECORDER_DATA", serializable);
        }
        CallRecorderManager.get().a(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError() {
        this.currentState = CallRecorderManager.RecordingState.ERROR;
        notifyStateAndDataChanged(null);
        terminateAndEraseFile();
        CLog.a(RecordService.class, Activities.getString(2131887494));
    }

    private void prepareRecording() {
        CLog.a(RecordService.class, "prepare Recording");
        try {
            int i = AnonymousClass10.f15742a[this.configuration.getAudioMethod().ordinal()];
            if (i == 1) {
                this.mediaRecorder.prepare();
                Thread.sleep(2000L);
            } else if (i == 2) {
                this.audioEncoder.a(this.audioFilePath);
            }
        } catch (IOException | InterruptedException | RuntimeException e) {
            CLog.a(RecordService.class, "prepare Recording error: " + e.getMessage());
            onError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseContact() {
        if (this.contactData != null) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contactData, this);
        }
    }

    private void releaseMediaRecorder() {
        MediaRecorder mediaRecorder = this.mediaRecorder;
        if (mediaRecorder != null) {
            mediaRecorder.reset();
            this.mediaRecorder.release();
            this.mediaRecorder = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveFileIfNeeded() {
        synchronized (this.fileSavedFileLock) {
            if (this.isReadyToSave) {
                CallRecorderManager.get();
                long a2 = CallRecorderManager.a(this.audioFilePath);
                if (a2 != -1) {
                    int i = this.configuration.isInRecorderTest() ? 2 : this.isIncoming ? 1 : 0;
                    final CallRecorder callRecorder = new CallRecorder();
                    CLog.a(RecordService.class, "saveFileIfNeeded audiopath: " + this.audioFilePath);
                    callRecorder.setPhoneOrIdKey(ContactData.generateId(this.currentPhoneNumber, this.contactData.getDeviceId()));
                    callRecorder.setDuration(a2);
                    callRecorder.setFileName(this.audioFilePath);
                    callRecorder.setDate(System.currentTimeMillis());
                    callRecorder.setPhoneText(getPhoneAsString());
                    callRecorder.setCallType(i);
                    callRecorder.setContactId(this.contactData.getDeviceId());
                    CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.6
                        @Override // java.lang.Runnable
                        public void run() {
                            long duration = callRecorder.getDuration();
                            if (duration < 5) {
                                CLog.a(RecordService.class, "duration < THRESHOLD_MIN_DURATION_TO_SAVE_RECORDS ".concat(String.valueOf(duration)));
                                RecordService.this.deleteFile();
                            } else if (CallRecorderManager.get().b(callRecorder) > 0) {
                                EventBusManager.f14368a.c(CallRecordChangedListener.f12938a, EventBusManager.CallAppDataType.CALL_RECORD_CHANGED);
                                if (RecordService.this.isIncoming) {
                                    Prefs.eW.set(Boolean.TRUE);
                                } else {
                                    Prefs.eV.set(Boolean.TRUE);
                                }
                            }
                        }
                    });
                    this.currentState = CallRecorderManager.RecordingState.FILE_READY;
                    notifyStateAndDataChanged(callRecorder);
                    CLog.a(RecordService.class, Activities.getString(2131887493));
                    this.isReadyToSave = false;
                }
            }
        }
    }

    public static native boolean setRecordingConf(AudioRecord audioRecord, int i, int i2, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public void startAudioRecord() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.8
            @Override // java.lang.Runnable
            public void run() {
                if (RecordService.this.audioRecorder == null) {
                    RecordService.this.onError();
                } else if (!CallAppApplication.f10402a || !RecordService.setRecordingConf(RecordService.this.audioRecorder, Build.VERSION.SDK_INT, RecordService.this.configuration.getAudioSource().getSource(), RecordService.this.configuration.isForceIncommunicationMode())) {
                    RecordService.this.onError();
                    CLog.a(RecordService.class, "failed to initiate native call record");
                } else {
                    RecordService.this.updateHandler.post(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RecordService.this.audioRecorder == null) {
                                RecordService.this.onError();
                                return;
                            }
                            if (RecordService.this.audioRecorder.getState() == 1) {
                                CLog.a(RecordService.class, "startRecorder audioRecorder");
                                try {
                                    RecordService.this.audioRecorder.startRecording();
                                    if (RecordService.this.audioRecorder.getRecordingState() == 3) {
                                        RecordService.this.currentState = CallRecorderManager.RecordingState.RECORDING;
                                        RecordService.this.notifyStateAndDataChanged(null);
                                    } else {
                                        RecordService.this.onError();
                                        return;
                                    }
                                } catch (IllegalStateException e) {
                                    RecordService.this.onError();
                                    return;
                                }
                            } else {
                                CLog.a(RecordService.class, "audioRecorder not initialized");
                                RecordService.this.onError();
                            }
                            try {
                                Thread.sleep(Build.VERSION.SDK_INT >= 28 ? 5000L : 500L);
                            } catch (InterruptedException e2) {
                            }
                            if (RecordService.this.audioRecorder == null) {
                                RecordService.this.onError();
                            } else if (CallAppApplication.f10402a) {
                                RecordService.stopRecordingConf();
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0079 -> B:20:0x007f). Please submit an issue!!! */
    public void startRecorder() {
        int i;
        synchronized (this.recordingLocker) {
            if (this.currentState != CallRecorderManager.RecordingState.RECORDING) {
                boolean z = false;
                try {
                    i = AnonymousClass10.f15742a[this.configuration.getAudioMethod().ordinal()];
                } catch (Exception e) {
                    CLog.a(RecordService.class, e);
                }
                if (i == 1) {
                    CLog.a(RecordService.class, "start media Recorder");
                    this.mediaRecorder.start();
                    this.currentState = CallRecorderManager.RecordingState.RECORDING;
                    notifyStateAndDataChanged(null);
                } else if (i == 2) {
                    if (!CallAppApplication.f10402a) {
                        z = true;
                    } else {
                        this.updateHandler.postDelayed(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.5
                            @Override // java.lang.Runnable
                            public void run() {
                                RecordService.this.startAudioRecord();
                            }
                        }, 200L);
                    }
                }
                if (z) {
                    AnalyticsManager.get().a(Constants.CALL_RECORDER, "Failed to record");
                    onError();
                    return;
                }
                AnalyticsManager.get().a(Constants.CALL_RECORDER, "Record success");
                if (!Prefs.fs.get().booleanValue()) {
                    Prefs.fs.set(Boolean.TRUE);
                    AnalyticsManager.get().a(Constants.CALL_RECORDING, "create a record", (String) null, 0.0d);
                }
                CLog.a(RecordService.class, Activities.getString(2131887491));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopAndReleaseRecorder(boolean z, boolean z2) {
        boolean z3;
        synchronized (this.stopAndReleaseLock) {
            CLog.a(RecordService.class, "RecordService stopAndReleaseRecorder: ".concat(String.valueOf(z)));
            try {
                int i = AnonymousClass10.f15742a[this.configuration.getAudioMethod().ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        z3 = false;
                    } else {
                        stopAudioRecord();
                        z3 = false;
                    }
                } else if (this.mediaRecorder != null) {
                    z3 = false;
                    if (this.currentState == CallRecorderManager.RecordingState.RECORDING) {
                        releaseMediaRecorder();
                        z3 = false;
                    }
                } else {
                    return;
                }
            } catch (Exception e) {
                CLog.a(RecordService.class, "stopAndReleaseRecorder() ,Recording object Exception");
                z3 = true;
            }
            AudioRecord audioRecord = this.audioRecorder;
            if (audioRecord != null) {
                audioRecord.setRecordPositionUpdateListener(null);
                this.audioRecorder = null;
            }
            if (!z2) {
                if (z3 || z) {
                    deleteFile();
                    CLog.a(RecordService.class, "stopAndReleaseRecorder exception");
                    return;
                }
                if (this.contactData != null) {
                    this.isReadyToSave = true;
                    saveFileIfNeeded();
                } else {
                    this.isReadyToSave = true;
                }
            }
        }
    }

    private void stopAudioRecord() throws Exception {
        AudioRecord audioRecord = this.audioRecorder;
        if (audioRecord != null) {
            try {
                if (audioRecord.getRecordingState() == 3) {
                    if (this.currentState != CallRecorderManager.RecordingState.ERROR) {
                        this.currentState = CallRecorderManager.RecordingState.IDLE;
                    }
                    this.audioRecorder.stop();
                }
            } catch (IllegalStateException e) {
            }
            if (this.audioRecorder.getState() == 1) {
                this.audioRecorder.release();
            }
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            this.updateHandler.post(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        RecordService.this.audioEncoder.a();
                    } catch (Exception e2) {
                    } catch (Throwable th) {
                        countDownLatch.countDown();
                        throw th;
                    }
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(10000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e2) {
            }
        }
    }

    public static native void stopRecordingConf();

    private void terminateAndEraseFile() {
        CLog.a(RecordService.class, "RecordService terminateAndEraseFile");
        stopAndReleaseRecorder(true, false);
        deleteFile();
    }

    public void destroy() {
        CLog.a(RecordService.class, "RecordService destroy");
        CallAppApplication.get().unregisterReceiver(this.memoryBroadcastReceiver);
        releaseContact();
        Handler handler = this.updateHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.updateHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        this.currentState = CallRecorderManager.RecordingState.IDLE;
        notifyStateAndDataChanged(null);
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(int i) {
        this.isOnSpeaker = i == 8;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    @Override // android.media.MediaRecorder.OnErrorListener
    public void onError(MediaRecorder mediaRecorder, int i, int i2) {
        CLog.a(RecordService.class, mediaRecorder.toString() + " what " + i + " extra " + i2);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.7
            @Override // java.lang.Runnable
            public void run() {
                RecordService.this.onError();
            }
        });
    }

    @Override // android.media.MediaRecorder.OnInfoListener
    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        CLog.a(RecordService.class, mediaRecorder.toString() + " what " + i + " extra " + i2);
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(boolean z) {
    }

    public void start(final Intent intent, final RecordServiceIntentEvents recordServiceIntentEvents) {
        if (intent != null) {
            final int intExtra = intent.getIntExtra(EXTRA_RECORDER_COMMAND_TYPE, 0);
            if (intExtra != 0) {
                if (intExtra != 1) {
                    if (intExtra != 2) {
                        if (intExtra != 3) {
                            return;
                        }
                    }
                }
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.4
                    @Override // java.lang.Runnable
                    public void run() {
                        AudioManager audioManager;
                        synchronized (RecordService.this.recordStateChangeLock) {
                            if (RecordService.this.currentState == CallRecorderManager.RecordingState.RECORDING || RecordService.this.currentState == CallRecorderManager.RecordingState.PRE_RECORD || RecordService.this.currentState == CallRecorderManager.RecordingState.ERROR) {
                                AudioModeProvider.get().b(RecordService.this);
                                try {
                                    AudioManager audioManager2 = (AudioManager) Singletons.a("audio");
                                    audioManager = audioManager2;
                                    if (audioManager2 != null) {
                                        try {
                                            audioManager2.setParameters(new String(Base64.decode(Activities.getString(2131886276) + Activities.getString(2131886277), 0), StandardCharsets.UTF_8));
                                            audioManager2.setParameters(new String(Base64.decode(Activities.getString(2131886278) + Activities.getString(2131886279), 0), StandardCharsets.UTF_8));
                                            audioManager = audioManager2;
                                            if (Prefs.eT.get().intValue() > 0) {
                                                audioManager = audioManager2;
                                                if (RecordService.this.deviceCallVol != null) {
                                                    audioManager2.setStreamVolume(0, RecordService.this.deviceCallVol.intValue(), 0);
                                                    RecordService.this.deviceCallVol = null;
                                                    audioManager = audioManager2;
                                                }
                                            }
                                        } catch (IllegalArgumentException e) {
                                            audioManager = audioManager2;
                                        }
                                    }
                                } catch (IllegalArgumentException e2) {
                                    audioManager = null;
                                }
                                RecordService.this.currentPhoneNumber = PhoneManager.get().a(intent.getStringExtra(RecordService.EXTRA_RECORDER_PHONE_NUMBER));
                                RecordService.this.isIncoming = intent.getBooleanExtra(RecordService.EXTRA_RECORDER_IS_INCOMING, false);
                                if (RecordService.this.currentState != CallRecorderManager.RecordingState.ERROR) {
                                    if (!RecordService.this.configuration.isInRecorderTest() || intExtra != 3) {
                                        RecordService.this.stopAndReleaseRecorder(false, false);
                                    } else {
                                        RecordService.this.recordingTestData = null;
                                        RecordService.this.stopAndReleaseRecorder(true, false);
                                    }
                                }
                                RecordService.this.releaseContact();
                                if (audioManager != null) {
                                    audioManager.setMode(0);
                                }
                                RecordService.this.destroy();
                            }
                        }
                        RecordServiceIntentEvents recordServiceIntentEvents2 = recordServiceIntentEvents;
                        if (recordServiceIntentEvents2 != null) {
                            recordServiceIntentEvents2.a();
                        }
                    }
                });
                return;
            }
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.service.RecordService.3
                /* JADX WARN: Can't wrap try/catch for region: R(15:39|4|(3:9|24|25)|10|(1:12)(1:13)|14|15|16|37|17|(2:19|(1:21))|22|23|24|25) */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 532
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.recorder.service.RecordService.AnonymousClass3.run():void");
                }
            });
        }
    }
}
