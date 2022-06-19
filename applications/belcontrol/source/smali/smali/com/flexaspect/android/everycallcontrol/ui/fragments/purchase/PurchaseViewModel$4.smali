.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$4;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->w(Lcom/kedlin/cca/core/util/billing/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 3

    const/16 v0, 0x1f4

    if-nez p3, :cond_0

    new-instance p3, Lk61$a;

    const-string v1, "Purchase info is not available"

    invoke-direct {p3, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase tracking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lv81;->E(Lcom/kedlin/cca/core/util/billing/Purchase;)Z

    invoke-static {p3}, Lme1;->d(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    :try_start_0
    invoke-static {}, Lme1;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1, p2, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance p3, Lk61$a;

    const-string v1, "Unable to complete request"

    invoke-direct {p3, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p3

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :cond_1
    :goto_1
    return-void
.end method
