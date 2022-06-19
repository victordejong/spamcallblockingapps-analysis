.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;
.super Lrb1;
.source ""


# instance fields
.field public s:Landroid/app/Activity;

.field public t:I

.field public u:Lx51;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrb1;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->t:I

    return-void
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 1

    const v0, 0x7f11038b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Clicked MORE"

    goto :goto_0

    :cond_1
    const-string p1, "Clicked PLUS"

    :goto_0
    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public m(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->z:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lx51$b;

    iget-wide p4, p4, Lx51$b;->a:J

    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->s:Landroid/app/Activity;

    check-cast p3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {p3, p0, p4, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx51$b;

    iget-wide p1, p1, Lx51$b;->a:J

    long-to-int p2, p1

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->t:I

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lrb1;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->s:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00d6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lrb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->t:I

    const-string v1, "Contacts List"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lrb1;->onStart()V

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lx51;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->s:Landroid/app/Activity;

    const v2, 0x7f0d00d5

    invoke-direct {v0, v1, v2, p2}, Lx51;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/GroupsFragment;->u:Lx51;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
