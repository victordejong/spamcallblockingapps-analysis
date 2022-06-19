.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->A(Lcom/kedlin/cca/core/util/billing/Purchase;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/core/util/billing/Purchase;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;->a:Lcom/kedlin/cca/core/util/billing/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->p(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Origin"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;->a:Lcom/kedlin/cca/core/util/billing/Purchase;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Personification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lw91$a;->j:Lw91$a;

    invoke-static {p0, v1, v0}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    return-void
.end method
