.class final Lcom/mopub/nativeads/ImpressionTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/ImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Lcom/mopub/common/VisibilityTracker;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/ImpressionTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ImpressionTracker;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
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

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v1}, Lcom/mopub/nativeads/ImpressionTracker;->a(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/ImpressionInterface;

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v2}, Lcom/mopub/nativeads/ImpressionTracker;->b(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/k;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, v2, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v2}, Lcom/mopub/nativeads/ImpressionTracker;->b(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/mopub/nativeads/k;

    invoke-direct {v3, v1}, Lcom/mopub/nativeads/k;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v0}, Lcom/mopub/nativeads/ImpressionTracker;->b(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_4
    iget-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {p1}, Lcom/mopub/nativeads/ImpressionTracker;->a()V

    return-void
.end method
