.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;
.super Landroid/widget/Scroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 7

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    iget-object p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {p5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
