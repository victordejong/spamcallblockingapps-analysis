.class Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityCheck(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    iget-object p1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->clear()V

    return-void

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 58
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 67
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 71
    iget-object p1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->scheduleNextRun()V

    :cond_4
    return-void
.end method
