.class final Lcom/criteo/publisher/advancednative/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/p;


# instance fields
.field private final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/advancednative/i;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;",
            "Lcom/criteo/publisher/advancednative/i;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/j;->a:Ljava/lang/Iterable;

    .line 43
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/j;->b:Ljava/lang/ref/Reference;

    .line 44
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/j;->c:Lcom/criteo/publisher/advancednative/i;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/j;->c:Lcom/criteo/publisher/advancednative/i;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/j;->a:Ljava/lang/Iterable;

    .line 1057
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 1058
    iget-object v3, v0, Lcom/criteo/publisher/advancednative/i;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/criteo/publisher/advancednative/i$b;

    iget-object v5, v0, Lcom/criteo/publisher/advancednative/i;->a:Lcom/criteo/publisher/j0/g;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v5, v6}, Lcom/criteo/publisher/advancednative/i$b;-><init>(Ljava/net/URL;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/advancednative/i$a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/j;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    if-eqz v0, :cond_2

    .line 58
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/j;->c:Lcom/criteo/publisher/advancednative/i;

    .line 1070
    iget-object v2, v1, Lcom/criteo/publisher/advancednative/i;->c:Lcom/criteo/publisher/e/c;

    new-instance v3, Lcom/criteo/publisher/advancednative/i$a;

    invoke-direct {v3, v1, v0}, Lcom/criteo/publisher/advancednative/i$a;-><init>(Lcom/criteo/publisher/advancednative/i;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    invoke-virtual {v2, v3}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
