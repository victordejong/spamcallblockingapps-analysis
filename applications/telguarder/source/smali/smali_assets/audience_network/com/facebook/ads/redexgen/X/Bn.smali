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


# static fields
.field public static A01:[Ljava/lang/String;


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
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bn;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23984
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23985
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Or6ItBFQzqVIMjJSSclN1GQ5FIZhak9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Acv07U9XphEfR0ZYhIBKznWV1jRGGmd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KmtdgRaRLV76jrTm6HtTcpnWhidJ1fZR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "je497hahKhOVAwN2d7kVpprAeKgmPTu5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2POMz9WaAlq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "81PoC2DJnb7OPbHTvUZwtyJco919h8CK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0QIDXWsvKDm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3foGIMvadJ8EUk3kOAhgCwiB4eJinqJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bn;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 4

    .line 23986
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

    .line 23987
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23988
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23989
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 23990
    :cond_0
    return-void
.end method

.method public final A02()V
    .locals 5

    .line 23991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bn;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bn;->A01:[Ljava/lang/String;

    const-string v1, "Xo2aIA7a4TBcAwCEB1H7egd2eu7CVm3z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bm;

    .line 23992
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23993
    .local v4, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bl;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bl;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23994
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v4    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 23995
    :cond_1
    return-void
.end method

.method public final A03()V
    .locals 4

    .line 23996
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

    .line 23997
    .local v0, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23998
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23999
    .end local v0    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 24000
    :cond_0
    return-void
.end method

.method public final A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V
    .locals 2

    .line 24001
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 24002
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bn;->A00:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bm;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bm;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24003
    return-void

    .line 24004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05(Ljava/lang/Exception;)V
    .locals 4

    .line 24005
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

    .line 24006
    .local p1, "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 24007
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Bo;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bj;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Bj;-><init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24008
    .end local p1    # "handlerAndListener":Lcom/facebook/ads/redexgen/X/Bm;
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Bo;
    goto :goto_0

    .line 24009
    :cond_0
    return-void
.end method
