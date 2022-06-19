.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$3$1",
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    .line 264
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 9

    .line 266
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 267
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    iget-object v3, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->a:Ljava/util/List;

    const-string v4, "recorderTestData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    check-cast v3, Ljava/lang/Iterable;

    .line 1414
    new-instance v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$sortedBy$1;

    invoke-direct {v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$sortedBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v3, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .line 1284
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v6}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v7

    sget-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-eq v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v6

    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    check-cast v5, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v5, :cond_4

    .line 1286
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;

    invoke-direct {v4, v5, v0, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;Ljava/util/List;)V

    check-cast v4, Ljava/lang/Runnable;

    const-wide/16 v5, 0x32

    invoke-virtual {v1, v4, v5, v6}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 271
    iget-object v3, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    new-instance v5, Lkotlin/n;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2091
    invoke-virtual {v3, v4, v5, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    goto :goto_3

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->EMPTY:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    .line 3091
    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_6
    return-void
.end method
