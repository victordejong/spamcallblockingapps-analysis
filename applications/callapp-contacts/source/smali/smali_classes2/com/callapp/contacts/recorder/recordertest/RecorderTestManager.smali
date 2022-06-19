.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;,
        Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 S2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002STB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u00020:H\u0016J\u0008\u0010<\u001a\u00020:H\u0002J\u0008\u0010=\u001a\u00020:H\u0016J\u0008\u0010>\u001a\u00020:H\u0002J\u0006\u0010?\u001a\u00020$J\u0006\u0010@\u001a\u00020$J\u0006\u0010A\u001a\u00020$J\u0012\u0010B\u001a\u00020:2\u0008\u0010C\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010D\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010H\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010I\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0016J\u0012\u0010J\u001a\u00020:2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0010\u0010K\u001a\u00020:2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010L\u001a\u00020:2\u0006\u0010M\u001a\u00020\u001eJ\u000e\u0010N\u001a\u00020:2\u0006\u0010M\u001a\u00020\u001eJ\u0008\u0010O\u001a\u00020:H\u0002J\u0012\u0010P\u001a\u00020:2\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010R\u001a\u00020:R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010.\u001a\u0004\u0018\u00010-2\u0008\u0010,\u001a\u0004\u0018\u00010-@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108\u00a8\u0006U"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;",
        "Lcom/callapp/contacts/manager/ManagedLifecycle;",
        "Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;",
        "()V",
        "currentTestStatus",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        "getCurrentTestStatus",
        "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        "setCurrentTestStatus",
        "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V",
        "eventBus",
        "Lcom/callapp/contacts/event/bus/EventBus;",
        "getEventBus",
        "()Lcom/callapp/contacts/event/bus/EventBus;",
        "setEventBus",
        "(Lcom/callapp/contacts/event/bus/EventBus;)V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "(Landroid/os/Handler;)V",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "getHandlerThread",
        "()Landroid/os/HandlerThread;",
        "setHandlerThread",
        "(Landroid/os/HandlerThread;)V",
        "inProgressRecorderTest",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        "getInProgressRecorderTest",
        "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        "setInProgressRecorderTest",
        "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V",
        "isCountDownRunning",
        "",
        "()Z",
        "setCountDownRunning",
        "(Z)V",
        "isInRecorderTestMode",
        "setInRecorderTestMode",
        "recorderTestCallData",
        "Lcom/callapp/contacts/model/call/CallData;",
        "value",
        "",
        "recorderTestRawNumber",
        "getRecorderTestRawNumber",
        "()Ljava/lang/String;",
        "setRecorderTestRawNumber",
        "(Ljava/lang/String;)V",
        "stopRecordTask",
        "Landroid/os/CountDownTimer;",
        "getStopRecordTask",
        "()Landroid/os/CountDownTimer;",
        "setStopRecordTask",
        "(Landroid/os/CountDownTimer;)V",
        "cancelRecorderTask",
        "",
        "destroy",
        "fireTestStatus",
        "init",
        "initHandler",
        "isRecorderTestFinished",
        "isRecorderTestInProgress",
        "isRecorderTestRunning",
        "onCallStateChanged",
        "callData",
        "onError",
        "bundle",
        "Landroid/os/Bundle;",
        "onPreRecord",
        "onRecordFileReady",
        "onRecorderStarted",
        "onRecorderStopped",
        "registerEventBus",
        "sendConfigurationToServer",
        "recorderTestData",
        "setRecordingConfiguration",
        "startNextTest",
        "stopCurrentTestTest",
        "recordingTestData",
        "unRegisterEventBus",
        "Companion",
        "RecorderTestManagerStatus",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;


# instance fields
.field a:Lcom/callapp/contacts/event/bus/EventBus;

.field private c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

.field private e:Landroid/os/CountDownTimer;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Lcom/callapp/contacts/model/call/CallData;

.field private i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    return-void
.end method

.method private final a()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const/4 v3, 0x0

    .line 7091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 4

    .line 172
    const-class v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopCurrentTestTest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    const-string v1, "entryPoint"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8070
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fe:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8071
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion$startRecorderTest$accessibilityServiceDialog$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion$startRecorderTest$accessibilityServiceDialog$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;-><init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    .line 8074
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    check-cast v0, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 8076
    :cond_0
    check-cast v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final b()V
    .locals 6

    .line 282
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->getNextRecordingTest()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 285
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c()V

    .line 286
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 287
    const-class v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start Call Recording Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    .line 289
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->getAllDoneRecorderTests()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 290
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->FINISHED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    goto :goto_0

    .line 292
    :cond_1
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->EMPTY:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 289
    :goto_0
    iput-object v1, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 294
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Call recorders list"

    const-string v3, "FinishedRecTestSuccessfully"

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 296
    iput-object v1, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 297
    invoke-direct {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a()V

    return-void
.end method

.method public static b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 9

    const-string v0, "recorderTestData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;

    .line 210
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 211
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 212
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 213
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->getValue()I

    move-result v6

    .line 215
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->getSource()I

    move-result v7

    .line 216
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getForceInCommunicationMode()Z

    move-result v8

    move-object v1, v0

    .line 209
    invoke-direct/range {v1 .. v8}, Lcom/callapp/common/model/json/JSONRecordingConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 218
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rcu"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "myp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tk"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cvc"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;Ljava/lang/String;)Z

    return-void
.end method

.method private final c()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->e:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static final get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V

    return-void
.end method

.method public final getCurrentTestStatus()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    return-object v0
.end method

.method public final getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public final getRecorderTestRawNumber()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final init()V
    .locals 3

    .line 126
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V

    return-void
.end method

.method public final isInRecorderTestMode()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->l:Z

    return v0
.end method

.method public final isRecorderTestFinished()Z
    .locals 2

    .line 115
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const-string v1, "Prefs.recorderTestFinished"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.recorderTestFinished.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRecorderTestInProgress()Z
    .locals 2

    .line 110
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const-string v1, "Prefs.recorderTestFinished"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRecorderTestRunning()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 309
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    const-string v2, "it.number"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->h:Lcom/callapp/contacts/model/call/CallData;

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 314
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    sget-object v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->RUNNING:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    if-eq v1, v3, :cond_1

    .line 316
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->RUNNING:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    iput-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 317
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b()V

    .line 318
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 319
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a()V

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->h:Lcom/callapp/contacts/model/call/CallData;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/contacts/model/call/CallData;)V

    .line 7170
    invoke-static {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 326
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setRecorderTestRawNumber(Ljava/lang/String;)V

    .line 329
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 331
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a()V

    .line 332
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setRecorderTestRawNumber(Ljava/lang/String;)V

    .line 335
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isConnectingOrOutgoing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 336
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->STARTED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 337
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a()V

    :cond_5
    return-void
.end method

.method public final onError(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 4091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    const-string v0, "EXTRA_RECORDING_TEST_DATA"

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz p1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 237
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 239
    iget-boolean v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->j:Z

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 242
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    if-nez v0, :cond_3

    .line 246
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 247
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :cond_3
    return-void
.end method

.method public final onPreRecord(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public final onRecordFileReady(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 3091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const-string v0, "EXTRA_RECORDING_TEST_DATA"

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v0, :cond_2

    .line 185
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v3, "RECORDER_DATA"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 186
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Call recorders list"

    const-string v1, "RecTestFilesCreated"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onRecorderStarted(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1130
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 1134
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->g:Landroid/os/Handler;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "EXTRA_RECORDING_TEST_DATA"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz p1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    invoke-direct {v1, p1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_2
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    :cond_3
    return-void
.end method

.method public final onRecorderStopped(Landroid/os/Bundle;)V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    .line 5091
    invoke-virtual {v0, v2, p1, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v2, "EXTRA_RECORDING_TEST_DATA"

    .line 256
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 258
    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v2, :cond_4

    .line 259
    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b()V

    .line 262
    :cond_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_8

    .line 263
    :cond_5
    move-object p1, p0

    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    .line 265
    iget-object v2, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v2, :cond_8

    .line 266
    sget-object v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    iput-object v3, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->i:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 267
    sget-object v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STOPPED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 268
    iget-object v2, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    if-eqz v2, :cond_6

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->STOPPED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 6091
    invoke-virtual {v2, v3, v4, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 269
    :cond_6
    iget-object v1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->g:Landroid/os/Handler;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 270
    :cond_7
    iput-object v0, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 271
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Call recorders list"

    const-string v1, "HangupRecTestBeforeFinish"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a()V

    .line 273
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :cond_8
    return-void
.end method

.method public final setCountDownRunning(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->j:Z

    return-void
.end method

.method public final setInRecorderTestMode(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->l:Z

    return-void
.end method

.method public final setRecorderTestRawNumber(Ljava/lang/String;)V
    .locals 2

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/manager/phone/CallStateListener;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    goto :goto_2

    .line 52
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/manager/phone/CallStateListener;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 54
    :goto_2
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->k:Ljava/lang/String;

    return-void
.end method

.method public final setRecordingConfiguration(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 1

    const-string v0, "recorderTestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 204
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final setStopRecordTask(Landroid/os/CountDownTimer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->e:Landroid/os/CountDownTimer;

    return-void
.end method
