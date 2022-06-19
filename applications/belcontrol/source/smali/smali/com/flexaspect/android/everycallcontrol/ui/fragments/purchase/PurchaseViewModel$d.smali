.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lna1$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Loa1;Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object v0

    invoke-virtual {v0}, Lna1;->g()V

    invoke-virtual {p1}, Loa1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error purchasing:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->n(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Loa1;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The item purchased does not match the item selected ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " <> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lbc1;->d()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Lcom/kedlin/cca/core/util/billing/Purchase;Z)V

    return-void
.end method
