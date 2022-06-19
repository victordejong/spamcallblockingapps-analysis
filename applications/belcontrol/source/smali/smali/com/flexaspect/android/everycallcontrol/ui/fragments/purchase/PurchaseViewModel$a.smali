.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lna1$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->x(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Loa1;)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object v0

    invoke-virtual {v0}, Lna1;->g()V

    invoke-virtual {p1}, Loa1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem setting up In-app Billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->n(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Loa1;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p1, v0, v1, v2}, Lna1;->s(ZLjava/util/List;Lna1$h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lj91;->u(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
