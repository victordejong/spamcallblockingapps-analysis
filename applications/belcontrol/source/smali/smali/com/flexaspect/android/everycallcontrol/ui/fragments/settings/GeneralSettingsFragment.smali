.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lj01;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic K(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/appearance/AppearanceFragment;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/notifications/NotificationsFragment;

    goto :goto_0

    :cond_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->A:Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v6, p1

    check-cast v6, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;

    :goto_1
    return-void
.end method

.method private synthetic M(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lku0;

    new-instance v2, Le01;

    invoke-direct {v2, p0}, Le01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;)V

    invoke-direct {v1, p1, v2}, Lku0;-><init>(Ljava/util/List;Lst0;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic O(Landroid/widget/CompoundButton;Z)V
    .locals 0

    sget-object p0, Lr71$a;->d:Lr71$a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 3

    sget-object p1, Lw91$a;->e0:Lw91$a;

    invoke-static {p0, p1}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DatashareAccessFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private synthetic R(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lr71$a;->m0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f11064f

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f11064e

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f110555

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-static {}, Lfa1;->J()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Lfa1;->A(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1, v0}, Loe1;->a0(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lj01;

    iget-object v0, v0, Lj01;->j:Lve;

    new-instance v1, Lg01;

    invoke-direct {v1, p0}, Lg01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110378

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic L(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->K(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic N(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->M(Ljava/util/List;)V

    return-void
.end method

.method public synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->P(Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->R(Landroid/view/View;)V

    return-void
.end method

.method public final T(Landroid/view/View;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const v4, 0x7f0a02d8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11075f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11052f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->U(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lh01;

    invoke-direct {v0, p0}, Lh01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final U(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p5, :cond_0

    const p5, 0x7f0a034d

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p5, 0x7f0a0351

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    const p5, 0x7f0a035c

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    const p5, 0x7f0a05c5

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0a069f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p5, 0x7f0a0682

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, Lj01;

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {p1, v0}, Lj01;->p(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->T(Landroid/view/View;)V

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->m:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0, p0}, Lta1;->j(Landroidx/fragment/app/Fragment;)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->m:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v0, Lr71$a;->d:Lr71$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_0
    invoke-static {}, Lfa1;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Loe1;->W(Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lqb1;->onStop()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lj01;

    invoke-virtual {v0}, Lj01;->n()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a053a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestFocus()Z

    const p2, 0x7f0a05c2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->m:Landroid/widget/Switch;

    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->m:Landroid/widget/Switch;

    sget-object v0, Lf01;->a:Lf01;

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110705

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1100bc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f0a02d9

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->U(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ld01;

    invoke-direct {p2, p0}, Ld01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d00d3

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lj01;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
