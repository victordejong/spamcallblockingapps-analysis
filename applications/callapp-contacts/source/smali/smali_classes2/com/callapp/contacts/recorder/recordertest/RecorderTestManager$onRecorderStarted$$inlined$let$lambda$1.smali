.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->onRecorderStarted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$1$1$1",
        "com/callapp/contacts/recorder/recordertest/RecorderTestManager$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

.field final synthetic b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    .line 149
    new-instance v7, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getRecordTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;JJ)V

    .line 160
    invoke-virtual {v7}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1$1;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setStopRecordTask(Landroid/os/CountDownTimer;)V

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$onRecorderStarted$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setCountDownRunning(Z)V

    return-void
.end method
