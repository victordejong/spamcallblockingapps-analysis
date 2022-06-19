.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->run()V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$1$1$1$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
        "callapp-client_playRelease",
        "com/callapp/contacts/recorder/recordertest/RecorderTestManager$$special$$inlined$let$lambda$1$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    .line 149
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setCountDownRunning(Z)V

    .line 157
    const-class v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFinish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object v2, v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getRecordTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-float p1, v0

    iget-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object p2, p2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {p2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getRecordTime()J

    move-result-wide v0

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 152
    iget-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object p2, p2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-virtual {p2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    new-instance v1, Lkotlin/n;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;

    iget-object v2, v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1091
    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method
