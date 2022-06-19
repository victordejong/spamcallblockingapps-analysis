.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroidx/cardview/widget/CardView;

.field public s:Landroidx/cardview/widget/CardView;

.field public t:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;-><init>()V

    return-void
.end method

.method private synthetic K(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic O(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic Q(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->o:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->p:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->r:Landroidx/cardview/widget/CardView;

    new-instance v1, Lfz0;

    invoke-direct {v1, p0, p1}, Lfz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->s:Landroidx/cardview/widget/CardView;

    new-instance v1, Ldz0;

    invoke-direct {v1, p0, p1}, Ldz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->t:Landroidx/cardview/widget/CardView;

    new-instance v1, Lgz0;

    invoke-direct {v1, p0, p1}, Lgz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/PremiumLookupFragment;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    new-instance v1, Lez0;

    invoke-direct {v1, p0}, Lez0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110524

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic L(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->K(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public synthetic N(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->M(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public synthetic P(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->O(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public synthetic R(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->Q(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic T(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->S(Landroid/view/View;)V

    return-void
.end method

.method public final U(Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110555

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    const v1, 0x7f080390

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    const v1, 0x7f110214

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "callcontrol.all.consumable.30credits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "callcontrol.all.consumable.5credits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "callcontrol.all.consumable.15credits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const p1, 0x7f11022c

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const p1, 0x102000b

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v1, 0x800003

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f06019d

    invoke-static {v0, v1}, Lg8;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54e007d9 -> :sswitch_2
        -0x3453458c -> :sswitch_1
        -0x33bd0a32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->n:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lr71$a;->c1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110223

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lqb1;->onStart()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f11022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->x(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->l:Ljava/lang/String;

    const p2, 0x7f0a04ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f11037b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0601a1

    invoke-static {v2, v3}, Lg8;->d(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    const/16 v4, 0x1b

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->l:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, "DIRECT"

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->l:Ljava/lang/String;

    :cond_2
    const p2, 0x7f0a068e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->o:Landroid/widget/TextView;

    const p2, 0x7f0a068d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->p:Landroid/widget/TextView;

    const p2, 0x7f0a068f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->q:Landroid/widget/TextView;

    const p2, 0x7f0a02db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->r:Landroidx/cardview/widget/CardView;

    const p2, 0x7f0a02da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->s:Landroidx/cardview/widget/CardView;

    const p2, 0x7f0a02dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->t:Landroidx/cardview/widget/CardView;

    const p2, 0x7f0a0694

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcz0;

    invoke-direct {v0, p0}, Lcz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0679

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->n:Landroid/widget/TextView;

    return-void
.end method

.method public on_purchase_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 2

    invoke-static {}, Lbc1;->a()V

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

    sget-object v0, Lr71;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->r(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->U(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    :cond_0
    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d008d

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
