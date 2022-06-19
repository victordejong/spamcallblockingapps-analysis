.class Lcom/callapp/contacts/recorder/service/RecordService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/service/RecordService;->saveFileIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic b:Lcom/callapp/contacts/recorder/service/RecordService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$6;->b:Lcom/callapp/contacts/recorder/service/RecordService;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/service/RecordService$6;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$6;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 658
    const-class v2, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration < THRESHOLD_MIN_DURATION_TO_SAVE_RECORDS "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$6;->b:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$2300(Lcom/callapp/contacts/recorder/service/RecordService;)V

    return-void

    .line 663
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$6;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 666
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$6;->b:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1500(Lcom/callapp/contacts/recorder/service/RecordService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    .line 670
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
