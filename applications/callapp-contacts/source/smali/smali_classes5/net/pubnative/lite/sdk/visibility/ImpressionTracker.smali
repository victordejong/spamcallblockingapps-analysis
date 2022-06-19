.class public Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$ImpressionRunnable;,
        Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_VISIBLE_PERCENT:D = 0.5

.field private static final VISIBILITY_CHECK_MILLIS:I = 0xfa

.field private static final VISIBILITY_TIME_MILLIS:I = 0x3e8


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mImpressionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mImpressionRunnable:Ljava/lang/Runnable;

.field protected mTrackingViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibilityListener:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;

.field protected mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

.field protected mVisibleViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$ImpressionRunnable;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$ImpressionRunnable;-><init>(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;)V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    .line 48
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;-><init>(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityListener:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->getVisibilityTracker()Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, p1, v1, v2}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->addView(Landroid/view/View;D)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 154
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 155
    invoke-static {v1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->stopTrackingView(Landroid/view/View;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->clear()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 94
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    instance-of v0, p1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 99
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getVisibilityTracker()Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;
    .locals 2

    .line 172
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    .line 174
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityListener:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->setListener(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibilityTracker:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->getVisibilityTracker()Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected scheduleNextRun()V
    .locals 4

    .line 180
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
