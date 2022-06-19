.class public Lcom/mopub/common/VisibilityTracker$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/mopub/common/VisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/common/VisibilityTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker$c;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker$c;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/common/VisibilityTracker;->a(Lcom/mopub/common/VisibilityTracker;Z)Z

    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v0}, Lcom/mopub/common/VisibilityTracker;->b(Lcom/mopub/common/VisibilityTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/common/VisibilityTracker$b;

    iget v3, v3, Lcom/mopub/common/VisibilityTracker$b;->a:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/common/VisibilityTracker$b;

    iget v4, v4, Lcom/mopub/common/VisibilityTracker$b;->b:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/common/VisibilityTracker$b;

    iget-object v5, v5, Lcom/mopub/common/VisibilityTracker$b;->e:Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/VisibilityTracker$b;

    iget-object v1, v1, Lcom/mopub/common/VisibilityTracker$b;->d:Landroid/view/View;

    iget-object v6, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v6}, Lcom/mopub/common/VisibilityTracker;->c(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3, v5}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker$c;->a:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v3}, Lcom/mopub/common/VisibilityTracker;->c(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker$c;->b:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v0}, Lcom/mopub/common/VisibilityTracker;->d(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$c;->c:Lcom/mopub/common/VisibilityTracker;

    invoke-static {v0}, Lcom/mopub/common/VisibilityTracker;->d(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker$c;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mopub/common/VisibilityTracker$c;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
