.class public abstract Lcom/facebook/ads/redexgen/X/UU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FE;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/W8;

.field public A01:Lcom/facebook/ads/redexgen/X/Af;

.field public A02:Ljava/lang/Object;

.field public final A03:Lcom/facebook/ads/redexgen/X/FP;

.field public final A04:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/FD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56454
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:Ljava/util/ArrayList;

    .line 56455
    new-instance v0, Lcom/facebook/ads/redexgen/X/FP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FP;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:Lcom/facebook/ads/redexgen/X/FP;

    .line 56456
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/FP;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56457
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:Lcom/facebook/ads/redexgen/X/FP;

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/FP;->A03(ILcom/facebook/ads/redexgen/X/FC;J)Lcom/facebook/ads/redexgen/X/FP;

    move-result-object v0

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:Lcom/facebook/ads/redexgen/X/Af;

    .line 56459
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UU;->A02:Ljava/lang/Object;

    .line 56460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FD;

    .line 56461
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/FD;
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FD;->ABe(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V

    .line 56462
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/FD;
    goto :goto_0

    .line 56463
    :cond_0
    return-void
.end method

.method public abstract A02()V
.end method

.method public abstract A03(Lcom/facebook/ads/redexgen/X/W8;Z)V
.end method

.method public final A3C(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/FS;)V
    .locals 1

    .line 56464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:Lcom/facebook/ads/redexgen/X/FP;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FP;->A08(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/FS;)V

    .line 56465
    return-void
.end method

.method public final ACY(Lcom/facebook/ads/redexgen/X/W8;ZLcom/facebook/ads/redexgen/X/FD;)V
    .locals 2

    .line 56466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:Lcom/facebook/ads/redexgen/X/W8;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 56467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:Lcom/facebook/ads/redexgen/X/W8;

    if-nez v0, :cond_2

    .line 56469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:Lcom/facebook/ads/redexgen/X/W8;

    .line 56470
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/UU;->A03(Lcom/facebook/ads/redexgen/X/W8;Z)V

    .line 56471
    :cond_1
    :goto_1
    return-void

    .line 56472
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:Lcom/facebook/ads/redexgen/X/Af;

    if-eqz v1, :cond_1

    .line 56473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A02:Ljava/lang/Object;

    invoke-interface {p3, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FD;->ABe(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V

    goto :goto_1

    .line 56474
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AD6(Lcom/facebook/ads/redexgen/X/FD;)V
    .locals 1

    .line 56475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:Lcom/facebook/ads/redexgen/X/W8;

    .line 56478
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:Lcom/facebook/ads/redexgen/X/Af;

    .line 56479
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A02:Ljava/lang/Object;

    .line 56480
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UU;->A02()V

    .line 56481
    :cond_0
    return-void
.end method

.method public final AD8(Lcom/facebook/ads/redexgen/X/FS;)V
    .locals 1

    .line 56482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:Lcom/facebook/ads/redexgen/X/FP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FP;->A0E(Lcom/facebook/ads/redexgen/X/FS;)V

    .line 56483
    return-void
.end method
