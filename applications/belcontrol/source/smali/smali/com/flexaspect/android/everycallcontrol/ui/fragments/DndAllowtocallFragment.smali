.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;
.super Lqb1;
.source ""


# instance fields
.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lqb1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Lsb1$c;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->G0()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lqb1;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00b6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lu71;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->g:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lqb1;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lu71;->C(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {}, Lb81;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Lu71;->b()[Ljava/lang/Integer;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-static {}, Lu71;->b()[Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lu71;->y([Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Lu71;->y([Ljava/lang/Integer;)V

    :goto_1
    invoke-static {v0}, Lu71;->A(Z)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lu71;->x(Z)V

    :goto_2
    invoke-static {}, Lu71;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lqb1;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {}, Lu71;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {}, Lu71;->p()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lu71;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$b;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lb81;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$c;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f11021e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$d;

    invoke-direct {v2, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0477

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    const v0, 0x7f1100b3

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method
