.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/finish/FinishPromoFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lfv0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic J(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public synthetic K(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/finish/FinishPromoFragment;->J(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0520

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lbz0;

    invoke-direct {p2, p0}, Lbz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/finish/FinishPromoFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d00ca

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
