.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Liq0;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lnd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Liq0;-><init>(Landroid/content/Context;Lnd;)V

    invoke-virtual {v0}, Liq0;->e()I

    move-result v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    :goto_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
