package com.callapp.contacts.recorder.recordertest;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.common.model.json.JSONRecordingConfiguration;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.interfaces.RecorderStateListener;
import com.callapp.contacts.activity.interfaces.RecorderTestChangedListener;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.callrecorder.ReenableAccessibilitServiceDialog;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.interfaces.CallRecorderEvent;
import com.callapp.contacts.recorder.recordertest.RecorderTestDataManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.recorder.service.RecordService;
import com.callapp.contacts.sync.syncer.upload.UploadSyncer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import kotlin.C18538n;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018?????? S2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002STB\u0005??\u0006\u0002\u0010\u0004J\b\u00109\u001a\u00020:H\u0002J\b\u0010;\u001a\u00020:H\u0016J\b\u0010<\u001a\u00020:H\u0002J\b\u0010=\u001a\u00020:H\u0016J\b\u0010>\u001a\u00020:H\u0002J\u0006\u0010?\u001a\u00020$J\u0006\u0010@\u001a\u00020$J\u0006\u0010A\u001a\u00020$J\u0012\u0010B\u001a\u00020:2\b\u0010C\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010D\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010H\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010I\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0012\u0010J\u001a\u00020:2\b\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0010\u0010K\u001a\u00020:2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010L\u001a\u00020:2\u0006\u0010M\u001a\u00020\u001eJ\u000e\u0010N\u001a\u00020:2\u0006\u0010M\u001a\u00020\u001eJ\b\u0010O\u001a\u00020:H\u0002J\u0012\u0010P\u001a\u00020:2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010R\u001a\u00020:R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b#\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020$X\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b(\u0010%\"\u0004\b)\u0010'R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e??\u0006\u0002\n??????R(\u0010.\u001a\u0004\u0018\u00010-2\b\u0010,\u001a\u0004\u0018\u00010-@FX\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e??\u0006\u000e\n??????\u001a\u0004\b5\u00106\"\u0004\b7\u00108??\u0006U"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;", "Lcom/callapp/contacts/manager/ManagedLifecycle;", "Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;", "Lcom/callapp/contacts/manager/phone/CallStateListener;", "()V", "currentTestStatus", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "getCurrentTestStatus", "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "setCurrentTestStatus", "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V", "eventBus", "Lcom/callapp/contacts/event/bus/EventBus;", "getEventBus", "()Lcom/callapp/contacts/event/bus/EventBus;", "setEventBus", "(Lcom/callapp/contacts/event/bus/EventBus;)V", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "setHandler", "(Landroid/os/Handler;)V", "handlerThread", "Landroid/os/HandlerThread;", "getHandlerThread", "()Landroid/os/HandlerThread;", "setHandlerThread", "(Landroid/os/HandlerThread;)V", "inProgressRecorderTest", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "getInProgressRecorderTest", "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "setInProgressRecorderTest", "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V", "isCountDownRunning", "", "()Z", "setCountDownRunning", "(Z)V", "isInRecorderTestMode", "setInRecorderTestMode", "recorderTestCallData", "Lcom/callapp/contacts/model/call/CallData;", "value", "", "recorderTestRawNumber", "getRecorderTestRawNumber", "()Ljava/lang/String;", "setRecorderTestRawNumber", "(Ljava/lang/String;)V", "stopRecordTask", "Landroid/os/CountDownTimer;", "getStopRecordTask", "()Landroid/os/CountDownTimer;", "setStopRecordTask", "(Landroid/os/CountDownTimer;)V", "cancelRecorderTask", "", "destroy", "fireTestStatus", "init", "initHandler", "isRecorderTestFinished", "isRecorderTestInProgress", "isRecorderTestRunning", "onCallStateChanged", "callData", "onError", "bundle", "Landroid/os/Bundle;", "onPreRecord", "onRecordFileReady", "onRecorderStarted", "onRecorderStopped", "registerEventBus", "sendConfigurationToServer", "recorderTestData", "setRecordingConfiguration", "startNextTest", "stopCurrentTestTest", "recordingTestData", "unRegisterEventBus", "Companion", "RecorderTestManagerStatus", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestManager.class */
public final class RecorderTestManager implements ManagedLifecycle, CallStateListener, CallRecorderEvent {

    /* renamed from: b */
    public static final Companion f27521b = new Companion(null);

    /* renamed from: a */
    EventBus f27522a;

    /* renamed from: c */
    private RecorderTestData f27523c;

    /* renamed from: e */
    private CountDownTimer f27524e;

    /* renamed from: f */
    private HandlerThread f27525f;

    /* renamed from: g */
    private Handler f27526g;

    /* renamed from: h */
    private CallData f27527h;

    /* renamed from: i */
    private RecorderTestManagerStatus f27528i = RecorderTestManagerStatus.IDLE;

    /* renamed from: j */
    private boolean f27529j;

    /* renamed from: k */
    private String f27530k;

    /* renamed from: l */
    private boolean f27531l;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"?????? \n\u0002\u0018\u0002\n\u0002\u0010??????\n\u0002\b\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018??????2\u00020\u0001B\u0007\b\u0002??\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002??\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;", "", "()V", "get", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;", "startRecorderTest", "", Constants.EXTRA_ENTRY_POINT, "", "startTheTest", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m27803a(String str) {
            BooleanPref booleanPref = Prefs.f26554gM;
            C18524p.m3843b(booleanPref, "Prefs.recorderTestFinished");
            if (booleanPref.isNull()) {
                RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
                RecorderTestDataManager.Companion.m27821c();
            }
            Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
            intent.putExtra("extra_from_recorder_test", true);
            get().setInRecorderTestMode(true);
            Activities.m27656b(CallAppApplication.get(), intent);
            AnalyticsManager.get().m28449a(Constants.CALL_RECORDER, Build.VERSION.SDK_INT >= 29 ? "StartRecTestAndroid10" : "StartRecTestWizard", str);
        }

        public final RecorderTestManager get() {
            Singletons singletons = Singletons.get();
            C18524p.m3843b(singletons, "Singletons.get()");
            RecorderTestManager recordTestManager = singletons.getRecordTestManager();
            C18524p.m3843b(recordTestManager, "run {\n            Single???cordTestManager\n        }");
            return recordTestManager;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0001\u0018??????2\b\u0012\u0004\u0012\u00020??????0\u0001B\u0007\b\u0002??\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t??\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;", "", "(Ljava/lang/String;I)V", "IDLE", "STARTED", "STOPPED", "RUNNING", "FINISHED", "APPLIED", "EMPTY", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus.class */
    public enum RecorderTestManagerStatus {
        IDLE,
        STARTED,
        STOPPED,
        RUNNING,
        FINISHED,
        APPLIED,
        EMPTY
    }

    /* renamed from: a */
    private final void m27810a() {
        EventBus eventBus = this.f27522a;
        if (eventBus != null) {
            eventBus.m29046a((EventType<L, EventType<RecorderTestChangedListener, RecorderTestManagerStatus>>) RecorderTestChangedListener.f23135c, (EventType<RecorderTestChangedListener, RecorderTestManagerStatus>) this.f27528i, false);
        }
    }

    /* renamed from: a */
    public static void m27809a(RecorderTestData recorderTestData) {
        String simpleName = RecorderTestManager.class.getSimpleName();
        new StringBuilder("stopCurrentTestTest ").append(recorderTestData != null ? Long.valueOf(recorderTestData.getId()) : null);
        CLog.m27606a(simpleName);
        CallRecorderManager.get().m27881a(1, recorderTestData);
    }

    /* renamed from: a */
    public static final void m27808a(final String entryPoint) {
        Companion companion = f27521b;
        C18524p.m3840d(entryPoint, "entryPoint");
        if (Build.VERSION.SDK_INT < 29 || Activities.isCallAppAccessibilityServiceEnabled() || Prefs.f26519fe.get().booleanValue()) {
            companion.m27803a(entryPoint);
            return;
        }
        PopupManager.get().m28209a(CallAppApplication.get(), new ReenableAccessibilitServiceDialog(new PopupDoneListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestManager$Companion$startRecorderTest$accessibilityServiceDialog$1
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public final void popupDone(boolean z) {
                RecorderTestManager.f27521b.m27803a(entryPoint);
            }
        }));
    }

    /* renamed from: b */
    private final void m27807b() {
        RecorderTestData nextRecordingTest = RecorderTestDataManager.f27475a.getNextRecordingTest();
        if (nextRecordingTest != null) {
            this.f27523c = nextRecordingTest;
            m27805c();
            CallRecorderManager.get().m27881a(0, nextRecordingTest);
            String simpleName = RecorderTestManager.class.getSimpleName();
            new StringBuilder("start Call Recording Id: ").append(nextRecordingTest.getId());
            CLog.m27606a(simpleName);
            return;
        }
        RecorderTestManager recorderTestManager = this;
        recorderTestManager.f27528i = RecorderTestDataManager.f27475a.getAllDoneRecorderTests() > 0 ? RecorderTestManagerStatus.FINISHED : RecorderTestManagerStatus.EMPTY;
        AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "FinishedRecTestSuccessfully");
        Prefs.f26554gM.set(Boolean.TRUE);
        recorderTestManager.f27523c = null;
        recorderTestManager.m27810a();
    }

    /* renamed from: b */
    public static void m27806b(RecorderTestData recorderTestData) {
        C18524p.m3840d(recorderTestData, "recorderTestData");
        HttpUtils.m26982a(new HttpRequestParams.HttpRequestParamsBuilder(((((((((((((HttpUtils.getCallappServerPrefix() + "rcu") + "?") + "myp") + "=") + UrlUtils.m31878a(Prefs.f26241aR.get())) + "&") + "tk") + "=") + Prefs.f26245aV.get()) + "&") + "cvc") + "=") + CallAppApplication.get().getVersionCode()).m26994a(), UploadSyncer.getJsonObjectMapper().writeValueAsString(new JSONRecordingConfiguration(Build.VERSION.SDK_INT, Build.MANUFACTURER, Build.MODEL, Build.DEVICE, recorderTestData.getAudioMethod().getValue(), recorderTestData.getAudioSource().getSource(), recorderTestData.getForceInCommunicationMode())));
    }

    /* renamed from: c */
    private final void m27805c() {
        CountDownTimer countDownTimer = this.f27524e;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f27524e = null;
    }

    public static final RecorderTestManager get() {
        return f27521b.get();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public final void destroy() {
        HandlerThread handlerThread = this.f27525f;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        Handler handler = this.f27526g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        CallRecorderManager.get().m27865b(this, true);
    }

    public final RecorderTestManagerStatus getCurrentTestStatus() {
        return this.f27528i;
    }

    public final EventBus getEventBus() {
        return this.f27522a;
    }

    public final String getRecorderTestRawNumber() {
        return this.f27530k;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public final void init() {
        CallRecorderManager.get().m27874a((CallRecorderEvent) this, true);
    }

    public final boolean isInRecorderTestMode() {
        return this.f27531l;
    }

    public final boolean isRecorderTestFinished() {
        BooleanPref booleanPref = Prefs.f26554gM;
        C18524p.m3843b(booleanPref, "Prefs.recorderTestFinished");
        if (booleanPref.isNotNull()) {
            Boolean bool = Prefs.f26554gM.get();
            C18524p.m3843b(bool, "Prefs.recorderTestFinished.get()");
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean isRecorderTestInProgress() {
        BooleanPref booleanPref = Prefs.f26554gM;
        C18524p.m3843b(booleanPref, "Prefs.recorderTestFinished");
        return booleanPref.isNotNull() && !Prefs.f26554gM.get().booleanValue();
    }

    public final boolean isRecorderTestRunning() {
        return this.f27528i != RecorderTestManagerStatus.IDLE;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public final void onCallStateChanged(CallData callData) {
        String str = this.f27530k;
        if (str == null || callData == null) {
            return;
        }
        Phone number = callData.getNumber();
        C18524p.m3843b(number, "it.number");
        boolean m3850a = C18524p.m3850a((Object) number.getRawNumber(), (Object) str);
        if (m3850a) {
            this.f27527h = callData;
        }
        CallState state = callData.getState();
        if (state == null) {
            return;
        }
        if (state.isTalking()) {
            if (this.f27528i != RecorderTestManagerStatus.RUNNING) {
                this.f27528i = RecorderTestManagerStatus.RUNNING;
                m27807b();
                Prefs.f26554gM.set(Boolean.FALSE);
                m27810a();
            } else {
                PhoneManager.get();
                PhoneManager.m28242a(this.f27527h);
                m27809a((RecorderTestData) null);
            }
        }
        if (state.isDisconnected() && m3850a) {
            setRecorderTestRawNumber(null);
        }
        if (state.isPostCall()) {
            this.f27528i = RecorderTestManagerStatus.IDLE;
            m27810a();
            setRecorderTestRawNumber(null);
        }
        if (!state.isConnectingOrOutgoing()) {
            return;
        }
        this.f27528i = RecorderTestManagerStatus.STARTED;
        m27810a();
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public final void onError(Bundle bundle) {
        RecorderTestData recorderTestData;
        C18524p.m3840d(bundle, "bundle");
        EventBus eventBus = this.f27522a;
        if (eventBus != null) {
            eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
        }
        RecorderTestData recorderTestData2 = (RecorderTestData) bundle.getParcelable(RecordService.EXTRA_RECORDING_TEST_DATA);
        if (recorderTestData2 == null || (recorderTestData = this.f27523c) == null || recorderTestData.getId() != recorderTestData2.getId()) {
            return;
        }
        RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
        RecorderTestDataManager.Companion.m27824a(recorderTestData2.getId(), RecordConfiguration.STATUS.FAILED, null);
        CountDownTimer countDownTimer = this.f27524e;
        if (countDownTimer != null) {
            if (this.f27529j) {
                countDownTimer.cancel();
                countDownTimer.onFinish();
            }
            if (countDownTimer != null) {
                return;
            }
        }
        m27809a(recorderTestData2);
        C20128v c20128v = C20128v.f66529a;
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public final void onPreRecord(Bundle bundle) {
        C18524p.m3840d(bundle, "bundle");
        EventBus eventBus = this.f27522a;
        if (eventBus != null) {
            eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
        }
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public final void onRecordFileReady(Bundle bundle) {
        C18524p.m3840d(bundle, "bundle");
        EventBus eventBus = this.f27522a;
        if (eventBus != null) {
            eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
        }
        CountDownTimer countDownTimer = this.f27524e;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        RecorderTestData recorderTestData = (RecorderTestData) bundle.getParcelable(RecordService.EXTRA_RECORDING_TEST_DATA);
        if (recorderTestData != null) {
            RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
            RecorderTestDataManager.Companion.m27824a(recorderTestData.getId(), RecordConfiguration.STATUS.DONE, (CallRecorder) bundle.getSerializable("RECORDER_DATA"));
            AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "RecTestFilesCreated");
        }
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public final void onRecorderStarted(Bundle bundle) {
        RecorderTestData recorderTestData;
        C18524p.m3840d(bundle, "bundle");
        if (this.f27525f == null) {
            HandlerThread handlerThread = new HandlerThread(C18496ac.m3882b(RecorderTestManager.class).mo3722c());
            this.f27525f = handlerThread;
            if (handlerThread != null) {
                handlerThread.start();
                AndroidUtils.m27631a(handlerThread.getLooper());
                this.f27526g = new Handler(handlerThread.getLooper());
            }
        }
        EventBus eventBus = this.f27522a;
        if (eventBus != null) {
            eventBus.m29043c(RecorderStateListener.f23132b, bundle);
        }
        final RecorderTestData recorderTestData2 = (RecorderTestData) bundle.getParcelable(RecordService.EXTRA_RECORDING_TEST_DATA);
        if (recorderTestData2 == null || (recorderTestData = this.f27523c) == null || recorderTestData.getId() != recorderTestData2.getId()) {
            return;
        }
        Handler handler = this.f27526g;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1
                /* JADX WARN: Type inference failed for: r1v0, types: [com.callapp.contacts.recorder.recordertest.RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1] */
                @Override // java.lang.Runnable
                public final void run() {
                    this.setStopRecordTask(new CountDownTimer(RecorderTestData.this.getRecordTime(), 1000L) { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1.1
                        @Override // android.os.CountDownTimer
                        public final void onFinish() {
                            this.setCountDownRunning(false);
                            String simpleName = RecorderTestManager.class.getSimpleName();
                            new StringBuilder("onFinish ").append(RecorderTestData.this.getId());
                            CLog.m27606a(simpleName);
                            RecorderTestManager.m27809a(RecorderTestData.this);
                        }

                        @Override // android.os.CountDownTimer
                        public final void onTick(long j) {
                            float recordTime = ((float) (RecorderTestData.this.getRecordTime() - j)) / ((float) RecorderTestData.this.getRecordTime());
                            EventBus eventBus2 = this.getEventBus();
                            if (eventBus2 != null) {
                                eventBus2.m29046a((EventType<L, EventType<RecorderTestChangedListener, C18538n<Long, Float>>>) RecorderTestChangedListener.f23134b, (EventType<RecorderTestChangedListener, C18538n<Long, Float>>) new C18538n(Long.valueOf(RecorderTestData.this.getId()), Float.valueOf(recordTime * 100.0f)), false);
                            }
                        }
                    }.start());
                    this.setCountDownRunning(true);
                }
            });
        }
        RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
        RecorderTestDataManager.Companion.m27824a(recorderTestData2.getId(), RecordConfiguration.STATUS.STARTED, null);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public final void onRecorderStopped(Bundle bundle) {
        C20128v c20128v;
        EventBus eventBus = this.f27522a;
        if (eventBus != null) {
            eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
        }
        CountDownTimer countDownTimer = this.f27524e;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        RecorderTestData recorderTestData = bundle != null ? (RecorderTestData) bundle.getParcelable(RecordService.EXTRA_RECORDING_TEST_DATA) : null;
        if (recorderTestData != null) {
            RecorderTestData recorderTestData2 = this.f27523c;
            if (recorderTestData2 != null) {
                if (recorderTestData2.getId() == recorderTestData.getId()) {
                    m27807b();
                }
                c20128v = C20128v.f66529a;
            } else {
                c20128v = null;
            }
            if (c20128v != null) {
                return;
            }
        }
        RecorderTestManager recorderTestManager = this;
        RecorderTestData recorderTestData3 = recorderTestManager.f27523c;
        if (recorderTestData3 != null) {
            recorderTestManager.f27528i = RecorderTestManagerStatus.IDLE;
            RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
            RecorderTestDataManager.Companion.m27824a(recorderTestData3.getId(), RecordConfiguration.STATUS.STOPPED, null);
            EventBus eventBus2 = recorderTestManager.f27522a;
            if (eventBus2 != null) {
                eventBus2.m29046a((EventType<L, EventType<RecorderTestChangedListener, RecorderTestManagerStatus>>) RecorderTestChangedListener.f23135c, (EventType<RecorderTestChangedListener, RecorderTestManagerStatus>) RecorderTestManagerStatus.STOPPED, false);
            }
            Handler handler = recorderTestManager.f27526g;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            recorderTestManager.f27523c = null;
            AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "HangupRecTestBeforeFinish");
            RecorderTestDataManager.Companion companion2 = RecorderTestDataManager.f27475a;
            RecorderTestDataManager.Companion.m27827a();
            C20128v c20128v2 = C20128v.f66529a;
        }
    }

    public final void setCountDownRunning(boolean z) {
        this.f27529j = z;
    }

    public final void setInRecorderTestMode(boolean z) {
        this.f27531l = z;
    }

    public final void setRecorderTestRawNumber(String str) {
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            PhoneStateManager.get().removeListener(this);
        } else {
            PhoneStateManager.get().addListener(this);
        }
        this.f27530k = str;
    }

    public final void setRecordingConfiguration(final RecorderTestData recorderTestData) {
        C18524p.m3840d(recorderTestData, "recorderTestData");
        new Task() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestManager$setRecordingConfiguration$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                EventBus eventBus = RecorderTestManager.this.getEventBus();
                if (eventBus != null) {
                    eventBus.m29046a((EventType<L, EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus>>) RecorderTestChangedListener.f23135c, (EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus>) RecorderTestManager.RecorderTestManagerStatus.APPLIED, false);
                }
                Prefs.f26450eO.set(recorderTestData.getAudioMethod());
                Prefs.f26451eP.set(recorderTestData.getAudioSource());
                Prefs.f26452eQ.set(recorderTestData.getOutputFormat());
                RecorderTestManager.m27806b(recorderTestData);
                boolean isCallAppAccessibilityServiceEnabled = Activities.isCallAppAccessibilityServiceEnabled();
                AnalyticsManager.get().m28449a(Constants.CALL_RECORDER, "ApplyFormatRecTest", (((((((("os:" + Build.VERSION.SDK_INT) + ",ac:") + isCallAppAccessibilityServiceEnabled) + ",fr:") + recorderTestData.getForceInCommunicationMode()) + ",as:") + recorderTestData.getAudioSource().getTitle()) + ",md:") + recorderTestData.getAudioMethod().getTitle());
            }
        }.execute();
    }

    public final void setStopRecordTask(CountDownTimer countDownTimer) {
        this.f27524e = countDownTimer;
    }
}
