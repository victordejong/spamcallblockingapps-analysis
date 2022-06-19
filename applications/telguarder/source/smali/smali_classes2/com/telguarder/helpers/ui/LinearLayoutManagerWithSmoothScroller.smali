.class public Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "LinearLayoutManagerWithSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;,
        Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack;
    }
.end annotation


# instance fields
.field public mCustomCallBack:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LinearLayoutManagerWithSmoothScroller"

    const-string v0, "onLayoutChildrenError"

    .line 29
    invoke-static {p2, v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;->mCustomCallBack:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;->mCustomCallBack:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack;

    invoke-interface {p2, p1}, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack;->onLayoutChildrenError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 49
    new-instance p2, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;-><init>(Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
