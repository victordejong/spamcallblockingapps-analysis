.class final Lcom/facebook/biddingkit/d/g$1;
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

    .line 62
    iput-object p1, p0, Lcom/facebook/biddingkit/d/g$1;->a:Lcom/facebook/biddingkit/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g$1;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v0}, Lcom/facebook/biddingkit/d/g;->a(Lcom/facebook/biddingkit/d/g;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/biddingkit/d/g$1;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v0}, Lcom/facebook/biddingkit/d/g;->d(Lcom/facebook/biddingkit/d/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/d/g$1;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v1}, Lcom/facebook/biddingkit/d/g;->b(Lcom/facebook/biddingkit/d/g;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/biddingkit/d/g$1;->a:Lcom/facebook/biddingkit/d/g;

    invoke-static {v2}, Lcom/facebook/biddingkit/d/g;->c(Lcom/facebook/biddingkit/d/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
