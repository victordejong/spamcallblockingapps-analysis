.class public Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;,
        Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;,
        Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VisibilityTracker"

.field private static final VISIBILITY_CHECK_DELAY:I = 0x64


# instance fields
.field protected mDeviceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mIsVisibilityCheckScheduled:Z

.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mTrackedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibilityRunnable:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 45
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;-><init>(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mVisibilityRunnable:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;

    .line 46
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;-><init>(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;D)V
    .locals 2

    .line 88
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->containsTrackedView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 103
    :cond_1
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;-><init>(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;)V

    .line 104
    iput-object p1, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    .line 105
    iput-wide p2, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mMinVisibilityPercent:D

    .line 107
    iget-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->scheduleVisibilityCheck()V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 125
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 128
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 130
    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    :cond_0
    iput-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 138
    :cond_1
    iput-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected containsTrackedView(Landroid/view/View;)Z
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->indexOfTrackedView(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected indexOfTrackedView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;

    .line 162
    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected scheduleVisibilityCheck()V
    .locals 4

    .line 146
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mIsVisibilityCheckScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 148
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mVisibilityRunnable:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$VisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;)V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
