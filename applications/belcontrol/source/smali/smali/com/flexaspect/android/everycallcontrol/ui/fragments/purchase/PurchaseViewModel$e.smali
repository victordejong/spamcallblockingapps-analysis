.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lna1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->r(Lcom/kedlin/cca/core/util/billing/Purchase;)V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kedlin/cca/core/util/billing/Purchase;",
            ">;",
            "Ljava/util/List<",
            "Loa1;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object p1

    invoke-virtual {p1}, Lna1;->g()V

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loa1;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Consume finished with result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lbc1;->a()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p1, p2, v0, v1}, Lna1;->s(ZLjava/util/List;Lna1$h;)V

    :cond_1
    return-void
.end method
