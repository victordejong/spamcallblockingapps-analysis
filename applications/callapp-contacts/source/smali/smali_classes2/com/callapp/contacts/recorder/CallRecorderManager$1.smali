.class Lcom/callapp/contacts/recorder/CallRecorderManager$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic d:Lcom/callapp/contacts/recorder/CallRecorderManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/CallRecorderManager;Lcom/callapp/contacts/model/objectbox/CallRecorder;ZLcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->d:Lcom/callapp/contacts/recorder/CallRecorderManager;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    iput-boolean p3, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->b:Z

    iput-object p4, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    iget-boolean v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->b:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setStarred(Z)V

    .line 429
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->c(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 430
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateRecords()V

    .line 431
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 432
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 434
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->b:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12013e

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
