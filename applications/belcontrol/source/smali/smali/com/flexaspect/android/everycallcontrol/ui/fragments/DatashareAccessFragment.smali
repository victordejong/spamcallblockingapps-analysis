.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DatashareAccessFragment;
.super Lrb1;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public s:Lw51;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrb1;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 1

    const v0, 0x7f110235

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DatashareAccessFragment;->s:Lw51;

    invoke-virtual {v0, p1}, Lw51;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsh0;

    invoke-virtual {p1}, Lsh0;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lsh0;->p()Z

    move-result v1

    const-string v2, "Value"

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lw91$a;->f0:Lw91$a;

    invoke-static {p0, v0, v1}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lsh0;->v()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lsh0;->q()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lsh0;->o()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lw91$a;->g0:Lw91$a;

    invoke-static {p0, v0, v1}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsh0;->s(Z)V

    return-void

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->h:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-virtual {v1, v0, v2, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0091

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const v1, 0x18fb4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DatashareAccessFragment;->s:Lw51;

    invoke-virtual {v0}, Lw51;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lw51;

    invoke-direct {p2, p1, p0}, Lw51;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DatashareAccessFragment;->s:Lw51;

    invoke-virtual {p0, p2}, Lyd;->n(Landroid/widget/ListAdapter;)V

    return-void
.end method
