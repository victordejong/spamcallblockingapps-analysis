package com.callapp.contacts.recorder;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.interfaces.CallRecordChangedListener;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.CallRecorder_;
import com.callapp.contacts.recorder.enums.MaxRecordConfiguration;
import com.callapp.contacts.recorder.interfaces.CallRecorderEvent;
import com.callapp.contacts.recorder.recordertest.RecorderTestData;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.recorder.service.RecordService;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/CallRecorderManager.class */
public class CallRecorderManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public CallRecorder f15658a = null;

    /* renamed from: b  reason: collision with root package name */
    public CallData f15659b;

    /* renamed from: c  reason: collision with root package name */
    private RecordingState f15660c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15661d;
    private final Object e;
    private Set<CallRecorderEvent> f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.recorder.CallRecorderManager$6  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/CallRecorderManager$6.class */
    public static /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15672a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[RecordingState.values().length];
            f15672a = iArr;
            try {
                iArr[RecordingState.RECORDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15672a[RecordingState.PRE_RECORD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15672a[RecordingState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f15672a[RecordingState.FILE_READY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f15672a[RecordingState.IDLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/CallRecorderManager$RecordingState.class */
    public enum RecordingState {
        IDLE,
        ERROR,
        PRE_RECORD,
        RECORDING,
        FILE_READY
    }

    public CallRecorderManager() {
        this.f15660c = Prefs.eI.get().booleanValue() ? RecordingState.PRE_RECORD : RecordingState.IDLE;
        this.e = new Object();
        this.f = new HashSet();
    }

    public static long a(String str) {
        Throwable th;
        if (!StringUtils.b((CharSequence) str)) {
            return -1L;
        }
        MediaMetadataRetriever mediaMetadataRetriever = null;
        mediaMetadataRetriever = null;
        try {
            Uri parse = Uri.parse(str);
            mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(CallAppApplication.get(), parse);
                String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                if (extractMetadata != null) {
                    long parseLong = Long.parseLong(extractMetadata) / 1000;
                    mediaMetadataRetriever.release();
                    return parseLong;
                }
                mediaMetadataRetriever.release();
                return -1L;
            } catch (Exception e) {
                if (mediaMetadataRetriever == null) {
                    return -1L;
                }
                mediaMetadataRetriever.release();
                return -1L;
            } catch (Throwable th2) {
                th = th2;
                if (mediaMetadataRetriever != null) {
                    mediaMetadataRetriever.release();
                }
                throw th;
            }
        } catch (Exception e2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static List<CallRecorder> a(Phone phone, long j) {
        List<CallRecorder> c2 = CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).e().b(CallRecorder_.callType, 2L).d().a(CallRecorder_.phoneOrIdKey, ContactData.generateId(phone, j)).a((g) CallRecorder_.date, 1).a().c();
        for (CallRecorder callRecorder : c2) {
            e(callRecorder);
        }
        return c2;
    }

    public static void a(Context context, CallRecorder callRecorder) {
        File file = new File(callRecorder.getFileName());
        if (file.exists()) {
            Uri a2 = IoUtils.a(context, file);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.STREAM", a2);
            intent.putExtra("android.intent.extra.SUBJECT", Activities.getString(2131887657));
            intent.putExtra("android.intent.extra.TEXT", Activities.a(2131886177, HttpUtils.getCallAppDomain()));
            context.startActivity(Intent.createChooser(intent, Activities.getString(2131887657)));
        }
    }

    public static void a(List<String> list) {
        CallRecorder callRecorder;
        if (CollectionUtils.b(list)) {
            ArrayList arrayList = new ArrayList();
            a d2 = CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class);
            for (String str : list) {
                if (!(str == null || (callRecorder = (CallRecorder) d2.e().a(CallRecorder_.fileName, str).a().a()) == null)) {
                    callRecorder.setUploaded(true);
                    arrayList.add(callRecorder);
                }
            }
            if (!arrayList.isEmpty()) {
                d2.a((Collection) arrayList);
            }
        }
    }

    public static void b(List<CallRecorder> list) {
        if (CollectionUtils.b(list)) {
            CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).a((Collection) list);
        }
    }

    static /* synthetic */ void c(CallRecorder callRecorder) {
        if (callRecorder != null) {
            CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).a((a) callRecorder);
        }
    }

    public static void d() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class);
        List<CallRecorder> c2 = d2.e().a((g) CallRecorder_.fileName, 0).a().c();
        if (CollectionUtils.b(c2)) {
            String str = null;
            HashSet hashSet = new HashSet();
            for (CallRecorder callRecorder : c2) {
                if (StringUtils.b((Object) str, (Object) callRecorder.getFileName())) {
                    hashSet.add(callRecorder);
                } else {
                    str = callRecorder.getFileName();
                }
            }
            if (CollectionUtils.b(hashSet)) {
                d2.b((Collection) hashSet);
            }
        }
    }

    public static void e() {
        CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).e().a((g) CallRecorder_.callType, 2L).a().f();
    }

    private static void e(CallRecorder callRecorder) {
        String phoneOrIdKey = callRecorder.getPhoneOrIdKey();
        String[] split = phoneOrIdKey.split("@");
        if (split == null || split.length <= 1) {
            callRecorder.setContactId(Long.parseLong(phoneOrIdKey));
            callRecorder.setPhoneText(null);
            return;
        }
        String str = split[0];
        String str2 = str;
        if (StringUtils.a((CharSequence) str)) {
            str2 = RecordService.PRIVATE_NUMBER_STRING;
        }
        callRecorder.setPhoneText(str2);
        callRecorder.setContactId(0L);
    }

    private void f() {
        Bundle bundle = new Bundle();
        bundle.putInt("RECORDER_STATE", this.f15660c.ordinal());
        a(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(CallRecorder callRecorder) {
        if (callRecorder != null) {
            CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).b((a) callRecorder);
        }
    }

    private void g() {
        if (this.f15659b.isCallWaiting()) {
            return;
        }
        if (this.f15659b.isIncoming() && Prefs.eI.get().booleanValue() && Prefs.eJ.get().booleanValue()) {
            a(2, (RecorderTestData) null);
            CLog.a(CallRecorderManager.class, "Starting service (TALKING - Incoming call) - Number=" + this.f15659b.getNumber().a());
        } else if (Prefs.eI.get().booleanValue() && Prefs.eK.get().booleanValue()) {
            a(2, (RecorderTestData) null);
            CLog.a(CallRecorderManager.class, "Starting service (TALKING - Outgoing call) - Number=" + this.f15659b.getNumber().a());
        }
    }

    public static CallRecorderManager get() {
        return Singletons.get().getRecordManager();
    }

    private boolean h() {
        return !this.f15661d && Prefs.eI.get().booleanValue() && this.f15660c != RecordingState.RECORDING && this.f15660c == RecordingState.PRE_RECORD && !RecorderTestManager.get().isInRecorderTestMode();
    }

    private boolean isRecorderOn() {
        return this.f15660c == RecordingState.RECORDING || this.f15660c == RecordingState.PRE_RECORD;
    }

    public final void a() {
        if (c() && this.f15659b != null && h()) {
            g();
        }
    }

    public final void a(int i, RecorderTestData recorderTestData) {
        Intent intent = new Intent("com.callapp.contacts.ACTION_CALL_RECORDING");
        Intent component = intent.setComponent(new ComponentName(CallAppApplication.get(), CallAppService.class));
        CallData callData = this.f15659b;
        Intent putExtra = component.putExtra(RecordService.EXTRA_RECORDER_IS_INCOMING, callData != null && callData.isIncoming());
        CallData callData2 = this.f15659b;
        putExtra.putExtra(RecordService.EXTRA_RECORDER_PHONE_NUMBER, callData2 != null ? callData2.getNumber().a() : Phone.f17100b).putExtra(RecordService.EXTRA_RECORDER_COMMAND_TYPE, i).putExtra(RecordService.EXTRA_RECORDING_TEST_DATA, recorderTestData);
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return;
                    }
                }
            }
            CallAppService.a(CallAppApplication.get(), intent, false);
            return;
        }
        CallAppService.a(CallAppApplication.get(), intent, true);
    }

    public final void a(Bundle bundle) {
        this.f15660c = RecordingState.values()[bundle.getInt("RECORDER_STATE", RecordingState.IDLE.ordinal())];
        new StringBuilder("notifyRecordStateChanged, recorderEnabled = ").append(this.f15660c.name());
        CLog.a("CallRecorderManager");
        synchronized (this.e) {
            if (CollectionUtils.b(this.f)) {
                for (CallRecorderEvent callRecorderEvent : this.f) {
                    int i = AnonymousClass6.f15672a[this.f15660c.ordinal()];
                    if (i == 1) {
                        callRecorderEvent.onRecorderStarted(bundle);
                    } else if (i == 2) {
                        callRecorderEvent.onPreRecord(bundle);
                    } else if (i == 3) {
                        callRecorderEvent.onError(bundle);
                    } else if (i == 4) {
                        this.f15658a = (CallRecorder) bundle.getSerializable("RECORDER_DATA");
                        callRecorderEvent.onRecordFileReady(bundle);
                    } else if (i == 5) {
                        callRecorderEvent.onRecorderStopped(bundle);
                    }
                }
            }
        }
    }

    public final void a(CallData callData, int i) {
        this.f15661d = Prefs.eH.get().booleanValue();
        if (isEnableMode() && i == 1 && this.f15659b == null) {
            this.f15659b = callData;
            if (!b(callData.isIncoming())) {
                return;
            }
            if (callData.getState().isTalking()) {
                a();
            } else {
                setPreRecorderState(callData.isIncoming());
            }
        }
    }

    public final void a(final CallRecorder callRecorder) {
        if (callRecorder != null) {
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.CallRecorderManager.3
                @Override // java.lang.Runnable
                public void run() {
                    CallRecorderManager.f(callRecorder);
                    boolean b2 = IoUtils.b(new File(callRecorder.getFileName()));
                    if (callRecorder.equals(CallRecorderManager.this.f15658a)) {
                        CallRecorderManager.this.f15658a = null;
                    }
                    if (b2) {
                        FeedbackManager.get().a("Deleted from db + files", 80);
                    }
                }
            });
        }
    }

    public final void a(CallRecorderEvent callRecorderEvent, boolean z) {
        synchronized (this.e) {
            this.f.add(callRecorderEvent);
        }
        if (z) {
            f();
        }
    }

    public final void a(final List<CallRecorder> list, final ActionDoneListener actionDoneListener) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.CallRecorderManager.4
            @Override // java.lang.Runnable
            public void run() {
                for (CallRecorder callRecorder : list) {
                    CallRecorderManager.f(callRecorder);
                    IoUtils.b(new File(callRecorder.getFileName()));
                }
                ActionDoneListener actionDoneListener2 = actionDoneListener;
                if (actionDoneListener2 != null) {
                    actionDoneListener2.a(true);
                }
            }
        });
    }

    public final boolean a(final CallRecorder callRecorder, final ContactData contactData) {
        final boolean z = !callRecorder.getStarred();
        new Task() { // from class: com.callapp.contacts.recorder.CallRecorderManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                callRecorder.setStarred(z);
                CallRecorderManager.c(callRecorder);
                contactData.updateRecords();
                EventBusManager.f14368a.a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f12938a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORD_CHANGED, false);
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
                if (z) {
                    FeedbackManager.get().a(Activities.getString(2131886398), (Integer) 17);
                }
            }
        }.execute();
        return z;
    }

    public final boolean a(boolean z) {
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            return true;
        }
        if (!c()) {
            return false;
        }
        if (Prefs.eH.get().booleanValue()) {
            return true;
        }
        boolean booleanValue = Prefs.eI.get().booleanValue();
        boolean booleanValue2 = Prefs.eJ.get().booleanValue();
        boolean booleanValue3 = Prefs.eK.get().booleanValue();
        if (!booleanValue) {
            return false;
        }
        if (!z || !booleanValue2) {
            return !z && booleanValue3;
        }
        return true;
    }

    public final long b(CallRecorder callRecorder) {
        CallRecorder callRecorder2;
        a d2 = CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class);
        int intValue = Prefs.eS.get().intValue();
        int i = intValue;
        if (!Prefs.cJ.get().booleanValue()) {
            i = intValue;
            if (intValue >= MaxRecordConfiguration.CONF_1000.ordinal()) {
                i = MaxRecordConfiguration.CONF_200.ordinal();
            }
        }
        if (d2.e().a((g) CallRecorder_.starred, false).a().e() >= MaxRecordConfiguration.values()[i].getValue() && (callRecorder2 = (CallRecorder) CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).e().a((g) CallRecorder_.starred, false).a((g) CallRecorder_.date, 0).a().a()) != null) {
            f(callRecorder2);
            IoUtils.b(new File(callRecorder2.getFileName()));
        }
        return d2.a((a) callRecorder);
    }

    public final void b() {
        if (this.f15659b != null) {
            a(isRecorderOn() ? 1 : 0, (RecorderTestData) null);
            this.f15661d = true;
        }
    }

    public final void b(CallRecorderEvent callRecorderEvent, boolean z) {
        synchronized (this.e) {
            this.f.remove(callRecorderEvent);
        }
        if (z) {
            f();
        }
    }

    public final boolean b(boolean z) {
        if (Prefs.eH.get().booleanValue()) {
            return false;
        }
        boolean z2 = Prefs.eI.get().booleanValue() && !this.f15661d;
        boolean booleanValue = Prefs.eJ.get().booleanValue();
        boolean booleanValue2 = Prefs.eK.get().booleanValue();
        if (!z2) {
            return false;
        }
        if (!z || !booleanValue) {
            return !z && booleanValue2;
        }
        return true;
    }

    public final boolean c() {
        if (isTermsAccepted()) {
            return Build.VERSION.SDK_INT < 23 || PhoneManager.get().isDefaultPhoneApp();
        }
        return false;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public List<CallRecorder> getAllRecords() {
        List<CallRecorder> c2 = CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class).e().b(CallRecorder_.callType, 2L).a((g) CallRecorder_.date, 1).a().c();
        for (CallRecorder callRecorder : c2) {
            e(callRecorder);
        }
        return c2;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public boolean isEnableMode() {
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            return true;
        }
        boolean z = false;
        if (!c()) {
            return false;
        }
        if (Prefs.eI.get().booleanValue() || this.f15661d) {
            z = true;
        }
        boolean booleanValue = Prefs.eJ.get().booleanValue();
        boolean booleanValue2 = Prefs.eK.get().booleanValue();
        boolean booleanValue3 = Prefs.eH.get().booleanValue();
        if (!z || (!booleanValue && !booleanValue2)) {
            return booleanValue3;
        }
        return true;
    }

    public boolean isRecording() {
        return this.f15660c == RecordingState.RECORDING;
    }

    public boolean isTermsAccepted() {
        return Prefs.eL.get().booleanValue();
    }

    public void setPreRecorderState(boolean z) {
        this.f15660c = b(z) ? RecordingState.PRE_RECORD : RecordingState.IDLE;
        f();
    }
}
