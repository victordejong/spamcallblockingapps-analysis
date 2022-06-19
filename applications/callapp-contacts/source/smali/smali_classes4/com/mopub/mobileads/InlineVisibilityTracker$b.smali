.class final Lcom/mopub/mobileads/InlineVisibilityTracker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/InlineVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/InlineVisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->a(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->b(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z

    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->e(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->c(Lcom/mopub/mobileads/InlineVisibilityTracker;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v2}, Lcom/mopub/mobileads/InlineVisibilityTracker;->d(Lcom/mopub/mobileads/InlineVisibilityTracker;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 1276
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1281
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v1, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1291
    iget-object v1, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 1292
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1291
    invoke-static {v1, v5}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    .line 1293
    iget-object v5, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1294
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1293
    invoke-static {v5, v2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v2

    mul-int v1, v1, v2

    int-to-long v1, v1

    .line 1297
    iget v0, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->a:I

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->e(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->e(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    move-result-object v0

    .line 2252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->c:J

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->e(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    move-result-object v0

    .line 2259
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->c:J

    sub-long/2addr v1, v5

    iget v0, v0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->b:I

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-ltz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->f(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->f(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;->onVisibilityChanged()V

    .line 222
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->g(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->a(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$b;->a:Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->a()V

    :cond_7
    return-void
.end method
