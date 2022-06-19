.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    sget-object v0, Lq71$e;->c:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->x()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    move-result-object p1

    aget-object p1, p1, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lr71$a;->y0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lmx0;

    invoke-direct {p4, p0}, Lmx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsh0;->q()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lsh0;->o()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lsh0;->r()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CCHDevicePromoFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    :cond_1
    invoke-static {p1}, Loe1;->y(Landroid/content/pm/PackageManager;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "com.callcontrolhome"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CCHDevicePromoFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L:Ljava/lang/String;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-virtual {p2, p0, p3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L:Ljava/lang/String;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-virtual {p2, p0, p3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {p2, p0, p3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :pswitch_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {p2, p0, p3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :catchall_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
