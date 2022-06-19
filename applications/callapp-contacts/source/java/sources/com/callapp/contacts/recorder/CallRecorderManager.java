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
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/CallRecorderManager.class */
public class CallRecorderManager implements ManagedLifecycle {

    /* renamed from: a */
    public CallRecorder f27399a = null;

    /* renamed from: b */
    public CallData f27400b;

    /* renamed from: c */
    private RecordingState f27401c;

    /* renamed from: d */
    private boolean f27402d;

    /* renamed from: e */
    private final Object f27403e;

    /* renamed from: f */
    private Set<CallRecorderEvent> f27404f;

    /* renamed from: com.callapp.contacts.recorder.CallRecorderManager$6 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/CallRecorderManager$6.class */
    public static /* synthetic */ class C77136 {

        /* renamed from: a */
        static final /* synthetic */ int[] f27415a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[RecordingState.values().length];
            f27415a = iArr;
            try {
                iArr[RecordingState.RECORDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f27415a[RecordingState.PRE_RECORD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f27415a[RecordingState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f27415a[RecordingState.FILE_READY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f27415a[RecordingState.IDLE.ordinal()] = 5;
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
        this.f27401c = Prefs.f26444eI.get().booleanValue() ? RecordingState.PRE_RECORD : RecordingState.IDLE;
        this.f27403e = new Object();
        this.f27404f = new HashSet();
    }

    /* renamed from: a */
    public static long m27872a(String str) {
        MediaMetadataRetriever mediaMetadataRetriever;
        Throwable th;
        if (StringUtils.m26045b((CharSequence) str)) {
            try {
                Uri parse = Uri.parse(str);
                mediaMetadataRetriever = new MediaMetadataRetriever();
                try {
                    mediaMetadataRetriever.setDataSource(CallAppApplication.get(), parse);
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                    if (extractMetadata == null) {
                        mediaMetadataRetriever.release();
                        return -1L;
                    }
                    long parseLong = Long.parseLong(extractMetadata) / 1000;
                    mediaMetadataRetriever.release();
                    return parseLong;
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
                mediaMetadataRetriever = null;
            } catch (Throwable th3) {
                th = th3;
                mediaMetadataRetriever = null;
            }
        } else {
            return -1L;
        }
    }

    /* renamed from: a */
    public static List<CallRecorder> m27873a(Phone phone, long j) {
        List<CallRecorder> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4700e().m4605b(CallRecorder_.callType, 2L).m4600d().m4611a(CallRecorder_.phoneOrIdKey, ContactData.generateId(phone, j)).m4614a((C17978g) CallRecorder_.date, 1).m4618a().m4628c();
        for (CallRecorder callRecorder : m4628c) {
            m27857e(callRecorder);
        }
        return m4628c;
    }

    /* renamed from: a */
    public static void m27880a(Context context, CallRecorder callRecorder) {
        File file = new File(callRecorder.getFileName());
        if (file.exists()) {
            Uri m27518a = IoUtils.m27518a(context, file);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.STREAM", m27518a);
            intent.putExtra("android.intent.extra.SUBJECT", Activities.getString(2131887657));
            intent.putExtra("android.intent.extra.TEXT", Activities.m27697a(2131886177, HttpUtils.getCallAppDomain()));
            context.startActivity(Intent.createChooser(intent, Activities.getString(2131887657)));
        }
    }

    /* renamed from: a */
    public static void m27871a(List<String> list) {
        CallRecorder callRecorder;
        if (CollectionUtils.m26068b(list)) {
            ArrayList arrayList = new ArrayList();
            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class);
            for (String str : list) {
                if (str != null && (callRecorder = (CallRecorder) m4727d.m4700e().m4611a(CallRecorder_.fileName, str).m4618a().m4641a()) != null) {
                    callRecorder.setUploaded(true);
                    arrayList.add(callRecorder);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            m4727d.m4710a((Collection) arrayList);
        }
    }

    /* renamed from: b */
    public static void m27864b(List<CallRecorder> list) {
        if (CollectionUtils.m26068b(list)) {
            CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4710a((Collection) list);
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m27861c(CallRecorder callRecorder) {
        if (callRecorder != null) {
            CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4711a((C17944a) callRecorder);
        }
    }

    /* renamed from: d */
    public static void m27860d() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class);
        List<CallRecorder> m4628c = m4727d.m4700e().m4614a((C17978g) CallRecorder_.fileName, 0).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            String str = null;
            HashSet hashSet = new HashSet();
            for (CallRecorder callRecorder : m4628c) {
                if (StringUtils.m26044b((Object) str, (Object) callRecorder.getFileName())) {
                    hashSet.add(callRecorder);
                } else {
                    str = callRecorder.getFileName();
                }
            }
            if (!CollectionUtils.m26068b(hashSet)) {
                return;
            }
            m4727d.m4704b((Collection) hashSet);
        }
    }

    /* renamed from: e */
    public static void m27858e() {
        CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4700e().m4613a((C17978g) CallRecorder_.callType, 2L).m4618a().m4624f();
    }

    /* renamed from: e */
    private static void m27857e(CallRecorder callRecorder) {
        String phoneOrIdKey = callRecorder.getPhoneOrIdKey();
        String[] split = phoneOrIdKey.split("@");
        if (split == null || split.length <= 1) {
            callRecorder.setContactId(Long.parseLong(phoneOrIdKey));
            callRecorder.setPhoneText(null);
            return;
        }
        String str = split[0];
        String str2 = str;
        if (StringUtils.m26059a((CharSequence) str)) {
            str2 = RecordService.PRIVATE_NUMBER_STRING;
        }
        callRecorder.setPhoneText(str2);
        callRecorder.setContactId(0L);
    }

    /* renamed from: f */
    private void m27856f() {
        Bundle bundle = new Bundle();
        bundle.putInt("RECORDER_STATE", this.f27401c.ordinal());
        m27879a(bundle);
    }

    /* renamed from: f */
    public static void m27855f(CallRecorder callRecorder) {
        if (callRecorder != null) {
            CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4705b((C17944a) callRecorder);
        }
    }

    /* renamed from: g */
    private void m27854g() {
        if (!this.f27400b.isCallWaiting()) {
            if (this.f27400b.isIncoming() && Prefs.f26444eI.get().booleanValue() && Prefs.f26445eJ.get().booleanValue()) {
                m27881a(2, (RecorderTestData) null);
                CLog.m27611a(CallRecorderManager.class, "Starting service (TALKING - Incoming call) - Number=" + this.f27400b.getNumber().m26101a());
            } else if (!Prefs.f26444eI.get().booleanValue() || !Prefs.f26446eK.get().booleanValue()) {
            } else {
                m27881a(2, (RecorderTestData) null);
                CLog.m27611a(CallRecorderManager.class, "Starting service (TALKING - Outgoing call) - Number=" + this.f27400b.getNumber().m26101a());
            }
        }
    }

    public static CallRecorderManager get() {
        return Singletons.get().getRecordManager();
    }

    /* renamed from: h */
    private boolean m27853h() {
        return !this.f27402d && Prefs.f26444eI.get().booleanValue() && this.f27401c != RecordingState.RECORDING && this.f27401c == RecordingState.PRE_RECORD && !RecorderTestManager.get().isInRecorderTestMode();
    }

    private boolean isRecorderOn() {
        return this.f27401c == RecordingState.RECORDING || this.f27401c == RecordingState.PRE_RECORD;
    }

    /* renamed from: a */
    public final void m27882a() {
        if (!m27862c() || this.f27400b == null || !m27853h()) {
            return;
        }
        m27854g();
    }

    /* renamed from: a */
    public final void m27881a(int i, RecorderTestData recorderTestData) {
        Intent intent = new Intent("com.callapp.contacts.ACTION_CALL_RECORDING");
        Intent component = intent.setComponent(new ComponentName(CallAppApplication.get(), CallAppService.class));
        CallData callData = this.f27400b;
        Intent putExtra = component.putExtra(RecordService.EXTRA_RECORDER_IS_INCOMING, callData != null && callData.isIncoming());
        CallData callData2 = this.f27400b;
        putExtra.putExtra(RecordService.EXTRA_RECORDER_PHONE_NUMBER, callData2 != null ? callData2.getNumber().m26101a() : Phone.f29662b).putExtra(RecordService.EXTRA_RECORDER_COMMAND_TYPE, i).putExtra(RecordService.EXTRA_RECORDING_TEST_DATA, recorderTestData);
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return;
                    }
                }
            }
            CallAppService.m27795a(CallAppApplication.get(), intent, false);
            return;
        }
        CallAppService.m27795a(CallAppApplication.get(), intent, true);
    }

    /* renamed from: a */
    public final void m27879a(Bundle bundle) {
        this.f27401c = RecordingState.values()[bundle.getInt("RECORDER_STATE", RecordingState.IDLE.ordinal())];
        new StringBuilder("notifyRecordStateChanged, recorderEnabled = ").append(this.f27401c.name());
        CLog.m27606a("CallRecorderManager");
        synchronized (this.f27403e) {
            if (CollectionUtils.m26068b(this.f27404f)) {
                for (CallRecorderEvent callRecorderEvent : this.f27404f) {
                    int i = C77136.f27415a[this.f27401c.ordinal()];
                    if (i == 1) {
                        callRecorderEvent.onRecorderStarted(bundle);
                    } else if (i == 2) {
                        callRecorderEvent.onPreRecord(bundle);
                    } else if (i == 3) {
                        callRecorderEvent.onError(bundle);
                    } else if (i == 4) {
                        this.f27399a = (CallRecorder) bundle.getSerializable("RECORDER_DATA");
                        callRecorderEvent.onRecordFileReady(bundle);
                    } else if (i == 5) {
                        callRecorderEvent.onRecorderStopped(bundle);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m27878a(CallData callData, int i) {
        this.f27402d = Prefs.f26443eH.get().booleanValue();
        if (isEnableMode() && i == 1 && this.f27400b == null) {
            this.f27400b = callData;
            if (!m27863b(callData.isIncoming())) {
                return;
            }
            if (callData.getState().isTalking()) {
                m27882a();
            } else {
                setPreRecorderState(callData.isIncoming());
            }
        }
    }

    /* renamed from: a */
    public final void m27877a(final CallRecorder callRecorder) {
        if (callRecorder == null) {
            return;
        }
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.recorder.CallRecorderManager.3
            @Override // java.lang.Runnable
            public void run() {
                CallRecorderManager.m27855f(callRecorder);
                boolean m27504b = IoUtils.m27504b(new File(callRecorder.getFileName()));
                if (callRecorder.equals(CallRecorderManager.this.f27399a)) {
                    CallRecorderManager.this.f27399a = null;
                }
                if (m27504b) {
                    FeedbackManager.get().m28670a("Deleted from db + files", 80);
                }
            }
        });
    }

    /* renamed from: a */
    public final void m27874a(CallRecorderEvent callRecorderEvent, boolean z) {
        synchronized (this.f27403e) {
            this.f27404f.add(callRecorderEvent);
        }
        if (z) {
            m27856f();
        }
    }

    /* renamed from: a */
    public final void m27870a(final List<CallRecorder> list, final ActionDoneListener actionDoneListener) {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.recorder.CallRecorderManager.4
            @Override // java.lang.Runnable
            public void run() {
                for (CallRecorder callRecorder : list) {
                    CallRecorderManager.m27855f(callRecorder);
                    IoUtils.m27504b(new File(callRecorder.getFileName()));
                }
                ActionDoneListener actionDoneListener2 = actionDoneListener;
                if (actionDoneListener2 != null) {
                    actionDoneListener2.mo27471a(true);
                }
            }
        });
    }

    /* renamed from: a */
    public final boolean m27876a(final CallRecorder callRecorder, final ContactData contactData) {
        final boolean z = !callRecorder.getStarred();
        new Task() { // from class: com.callapp.contacts.recorder.CallRecorderManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                callRecorder.setStarred(z);
                CallRecorderManager.m27861c(callRecorder);
                contactData.updateRecords();
                EventBusManager.f25138a.m29046a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f23111a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORD_CHANGED, false);
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
                if (z) {
                    FeedbackManager.get().m28669a(Activities.getString(2131886398), (Integer) 17);
                }
            }
        }.execute();
        return z;
    }

    /* renamed from: a */
    public final boolean m27869a(boolean z) {
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            return true;
        }
        if (!m27862c()) {
            return false;
        }
        if (Prefs.f26443eH.get().booleanValue()) {
            return true;
        }
        boolean booleanValue = Prefs.f26444eI.get().booleanValue();
        boolean booleanValue2 = Prefs.f26445eJ.get().booleanValue();
        boolean booleanValue3 = Prefs.f26446eK.get().booleanValue();
        if (!booleanValue) {
            return false;
        }
        if (z && booleanValue2) {
            return true;
        }
        return !z && booleanValue3;
    }

    /* renamed from: b */
    public final long m27867b(CallRecorder callRecorder) {
        CallRecorder callRecorder2;
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class);
        int intValue = Prefs.f26454eS.get().intValue();
        int i = intValue;
        if (!Prefs.f26339cJ.get().booleanValue()) {
            i = intValue;
            if (intValue >= MaxRecordConfiguration.CONF_1000.ordinal()) {
                i = MaxRecordConfiguration.CONF_200.ordinal();
            }
        }
        if (m4727d.m4700e().m4609a((C17978g) CallRecorder_.starred, false).m4618a().m4625e() >= MaxRecordConfiguration.values()[i].getValue() && (callRecorder2 = (CallRecorder) CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4700e().m4609a((C17978g) CallRecorder_.starred, false).m4614a((C17978g) CallRecorder_.date, 0).m4618a().m4641a()) != null) {
            m27855f(callRecorder2);
            IoUtils.m27504b(new File(callRecorder2.getFileName()));
        }
        return m4727d.m4711a((C17944a) callRecorder);
    }

    /* renamed from: b */
    public final void m27868b() {
        if (this.f27400b != null) {
            m27881a(isRecorderOn() ? 1 : 0, (RecorderTestData) null);
            this.f27402d = true;
        }
    }

    /* renamed from: b */
    public final void m27865b(CallRecorderEvent callRecorderEvent, boolean z) {
        synchronized (this.f27403e) {
            this.f27404f.remove(callRecorderEvent);
        }
        if (z) {
            m27856f();
        }
    }

    /* renamed from: b */
    public final boolean m27863b(boolean z) {
        if (Prefs.f26443eH.get().booleanValue()) {
            return false;
        }
        boolean z2 = Prefs.f26444eI.get().booleanValue() && !this.f27402d;
        boolean booleanValue = Prefs.f26445eJ.get().booleanValue();
        boolean booleanValue2 = Prefs.f26446eK.get().booleanValue();
        if (!z2) {
            return false;
        }
        if (z && booleanValue) {
            return true;
        }
        return !z && booleanValue2;
    }

    /* renamed from: c */
    public final boolean m27862c() {
        if (isTermsAccepted()) {
            return Build.VERSION.SDK_INT < 23 || PhoneManager.get().isDefaultPhoneApp();
        }
        return false;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public List<CallRecorder> getAllRecords() {
        List<CallRecorder> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class).m4700e().m4605b(CallRecorder_.callType, 2L).m4614a((C17978g) CallRecorder_.date, 1).m4618a().m4628c();
        for (CallRecorder callRecorder : m4628c) {
            m27857e(callRecorder);
        }
        return m4628c;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public boolean isEnableMode() {
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            return true;
        }
        boolean z = false;
        if (!m27862c()) {
            return false;
        }
        if (Prefs.f26444eI.get().booleanValue() || this.f27402d) {
            z = true;
        }
        boolean booleanValue = Prefs.f26445eJ.get().booleanValue();
        boolean booleanValue2 = Prefs.f26446eK.get().booleanValue();
        boolean booleanValue3 = Prefs.f26443eH.get().booleanValue();
        if (z && (booleanValue || booleanValue2)) {
            return true;
        }
        return booleanValue3;
    }

    public boolean isRecording() {
        return this.f27401c == RecordingState.RECORDING;
    }

    public boolean isTermsAccepted() {
        return Prefs.f26447eL.get().booleanValue();
    }

    public void setPreRecorderState(boolean z) {
        this.f27401c = m27863b(z) ? RecordingState.PRE_RECORD : RecordingState.IDLE;
        m27856f();
    }
}
