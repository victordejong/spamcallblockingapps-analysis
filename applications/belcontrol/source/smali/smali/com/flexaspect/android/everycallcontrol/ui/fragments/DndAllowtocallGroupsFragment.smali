.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallGroupsFragment;
.super Lrb1;
.source ""


# instance fields
.field public s:Lv51;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrb1;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 1

    const v0, 0x7f1100b3

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public a(Lsb1$c;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->G0()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00b5

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallGroupsFragment;->s:Lv51;

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_0

    new-instance p2, Lv51;

    iget-object p3, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-direct {p2, p3}, Lv51;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallGroupsFragment;->s:Lv51;

    :cond_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallGroupsFragment;->s:Lv51;

    invoke-virtual {p0, p1}, Lyd;->n(Landroid/widget/ListAdapter;)V

    return-void
.end method
