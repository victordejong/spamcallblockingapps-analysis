.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setRecordingConfiguration(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

.field final synthetic this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
            ")V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->APPLIED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 194
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getOutputFormat()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 198
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v0

    .line 199
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ac:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",fr:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getForceInCommunicationMode()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",as:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",md:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$setRecordingConfiguration$1;->$recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call recorders list"

    const-string v3, "ApplyFormatRecTest"

    .line 199
    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
