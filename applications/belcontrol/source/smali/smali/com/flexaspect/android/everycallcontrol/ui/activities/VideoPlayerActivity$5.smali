.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$5;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    rsub-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge p4, v2, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    const-string p4, "22"

    invoke-static {p4, v3, p3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->D(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    new-array p4, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    invoke-virtual {p1, p2, p4}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p3

    const-string p4, "Oops"

    invoke-static {p0, p4, p3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance p3, Lk61$a;

    const/4 p4, -0x1

    const-string v0, "Sorry"

    invoke-direct {p3, v0, p4}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    return-void
.end method
