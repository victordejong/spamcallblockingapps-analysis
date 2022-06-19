.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment<",
        "La31;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;-><init>()V

    return-void
.end method

.method private synthetic O(ZILjava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110555

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    sget-object v0, Lr71$a;->p:Lr71$a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic Q(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p3, p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;->N(IZLjava/util/List;)V

    return-void
.end method

.method private synthetic S(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    new-instance v1, Ly21;

    invoke-direct {v1, p0, p1}, Ly21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lnu0;->g(Ljava/util/List;Lst0;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La31;

    iget-object v0, v0, La31;->g:Lve;

    new-instance v1, Lx21;

    invoke-direct {v1, p0}, Lx21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public M()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final N(IZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lkq0;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkq0;

    invoke-virtual {v0}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v1, Lz21;->d:Lz21;

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lw21;

    invoke-direct {v2, p0, p2, p1, p3}, Lw21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;ZILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v1, Lz21;->f:Lz21;

    if-ne v0, v1, :cond_1

    sget-object v1, Lr71$a;->s:Lr71$a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    invoke-virtual {p0, v1, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :cond_1
    sget-object v1, Lz21;->g:Lz21;

    if-ne v0, v1, :cond_2

    sget-object v1, Lr71$a;->r:Lr71$a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    invoke-virtual {p0, v1, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :cond_2
    sget-object v1, Lz21;->h:Lz21;

    if-ne v0, v1, :cond_3

    sget-object v0, Lr71$a;->t:Lr71$a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    invoke-virtual {p0, v0, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    if-nez p2, :cond_3

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1102b3

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1102b7

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110555

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public synthetic P(ZILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;->O(ZILjava/util/List;)V

    return-void
.end method

.method public synthetic R(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;->Q(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic T(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;->S(Ljava/util/List;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0149

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, La31;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
