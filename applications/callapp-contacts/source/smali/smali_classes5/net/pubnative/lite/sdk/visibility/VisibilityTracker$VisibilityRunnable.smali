.class public Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityRunnable"
.end annotation


# instance fields
.field private mInvisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mVisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected isVisible(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;)Z
    .locals 6

    .line 228
    iget-object v0, p1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    .line 233
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int v2, v2, v3

    int-to-float v2, v2

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v3, v3, v0

    int-to-float v0, v3

    float-to-double v2, v2

    float-to-double v4, v0

    div-double/2addr v2, v4

    .line 238
    iget-wide v4, p1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mMinVisibilityPercent:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public run()V
    .locals 3

    .line 203
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 205
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;

    .line 207
    invoke-virtual {p0, v1}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->isVisible(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;->onVisibilityCheck(Ljava/util/List;Ljava/util/List;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
