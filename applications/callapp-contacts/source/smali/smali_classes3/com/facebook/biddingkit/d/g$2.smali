.class final Lcom/facebook/biddingkit/d/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/d/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/biddingkit/d/g;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/d/g;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/facebook/biddingkit/d/g$2;->a:Lcom/facebook/biddingkit/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g$2;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v0}, Lcom/facebook/biddingkit/d/g;->e(Lcom/facebook/biddingkit/d/g;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g$2;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v0}, Lcom/facebook/biddingkit/d/g;->e(Lcom/facebook/biddingkit/d/g;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/d/g$2;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v1}, Lcom/facebook/biddingkit/d/g;->f(Lcom/facebook/biddingkit/d/g;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
