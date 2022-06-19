.class public final Lcom/facebook/ads/redexgen/X/Bn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Bm;
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/Bm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23540
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23541
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 23542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bm;

    .line 23543
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23544
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23545
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 23546
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 4

    .line 23547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bm;

    .line 23548
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23549
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bl;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bl;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23550
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 23551
    :cond_0
    return-void
.end method

.method public final A02()V
    .locals 4

    .line 23552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bm;

    .line 23553
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23554
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23555
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 23556
    :cond_0
    return-void
.end method

.method public final A03(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V
    .locals 2

    .line 23557
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 23558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bm;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bm;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 23559
    return-void

    .line 23560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04(Ljava/lang/Exception;)V
    .locals 4

    .line 23561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bm;

    .line 23562
    .local p1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23563
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bj;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Bj;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23564
    .end local p1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 23565
    :cond_0
    return-void
.end method
