.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    iget-object p2, p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->z:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;

    const/16 p2, 0x64

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;I)I

    const/4 p1, 0x0

    return p1
.end method
