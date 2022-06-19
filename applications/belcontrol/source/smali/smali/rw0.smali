.class public Lrw0;
.super Lfd;
.source ""


# static fields
.field public static b:Z = false


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfd;-><init>()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lfd;->dismiss()V

    return-void
.end method

.method private synthetic p(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 12

    const p2, 0x7f0a06a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a0693

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    iget-object v2, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v2, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->a()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0a06a1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    iget-object v8, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v8, v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v8}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->c()D

    move-result-wide v8

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    div-double/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    const v8, 0x7f11073e

    invoke-virtual {p0, v8, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v7

    iget-object v6, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v6, v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v6}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->c()D

    move-result-wide v8

    div-double/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "%s %s/m"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v2, p2, v7

    iget-object v2, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v2, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->c()D

    move-result-wide v4

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lmw0;

    invoke-direct {v0, p0}, Lmw0;-><init>(Lrw0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lnw0;

    invoke-direct {p2, p0}, Lnw0;-><init>(Lrw0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lrw0;->j(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lrw0;->l(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lrw0;->n(Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->b(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lfd;->onCancel(Landroid/content/DialogInterface;)V

    invoke-static {}, Lbc1;->a()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfd;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/view/Window;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    const v0, 0x106000d

    invoke-static {p3, v0}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0d0152

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lrw0;->b:Z

    invoke-super {p0, p1}, Lfd;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-static {}, Lbc1;->a()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lfd;->onStart()V

    iget-object v0, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->x(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a034c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lkw0;

    invoke-direct {v0, p0}, Lkw0;-><init>(Lrw0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lff;->a(Landroidx/fragment/app/Fragment;)Lef;

    move-result-object p2

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p2, v0}, Lef;->a(Ljava/lang/Class;)Ldf;

    move-result-object p2

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iput-object p2, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object p2, p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    new-instance v0, Llw0;

    invoke-direct {v0, p0, p1}, Llw0;-><init>(Lrw0;Landroid/view/View;)V

    invoke-virtual {p2, p0, v0}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public on_purchase_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 2

    invoke-static {}, Lbc1;->a()V

    invoke-virtual {p0}, Lfd;->dismiss()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error purchasing item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public on_purchase_success(Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase success! Item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr71;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrw0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->r(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lkt0;->c:Lkt0;

    invoke-static {p1, v0}, Loe1;->T(Landroid/content/Context;Lkt0;)V

    :cond_0
    invoke-virtual {p0}, Lfd;->dismiss()V

    return-void
.end method

.method public synthetic q(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrw0;->p(Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public show(Lnd;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lrw0;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lfd;->show(Lnd;Ljava/lang/String;)V

    const/4 p1, 0x1

    sput-boolean p1, Lrw0;->b:Z

    return-void
.end method
