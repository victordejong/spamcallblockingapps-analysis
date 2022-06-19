.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment<",
        "Lp01;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;-><init>()V

    return-void
.end method

.method private synthetic N(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1

    sget-object v0, Lr71$a;->f:Lr71$a;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic P(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lpw0;

    invoke-direct {p2, p1}, Lpw0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ll01;

    invoke-direct {v1, p0, p2, p3, p1}, Ll01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic R(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    new-instance v1, Ln01;

    invoke-direct {v1, p0, p1}, Ln01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lnu0;->g(Ljava/util/List;Lst0;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lp01;

    iget-object v0, v0, Lp01;->g:Lve;

    new-instance v1, Lm01;

    invoke-direct {v1, p0}, Lm01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public M()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic O(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;->N(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public synthetic Q(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;->P(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic S(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;->R(Ljava/util/List;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0024

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lp01;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
