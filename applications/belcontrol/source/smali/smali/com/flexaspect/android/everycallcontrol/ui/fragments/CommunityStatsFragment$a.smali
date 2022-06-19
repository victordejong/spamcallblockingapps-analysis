.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;I)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
