.class public final Lcom/facebook/ads/redexgen/X/Lx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sc;
    }
.end annotation


# static fields
.field public static A02:Lcom/facebook/ads/redexgen/X/Lx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Sc;

.field public final A01:Lcom/facebook/ads/redexgen/X/Lz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 1

    .line 43488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43489
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Lz;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A01:Lcom/facebook/ads/redexgen/X/Lz;

    .line 43490
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sc;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Sc;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Lcom/facebook/ads/redexgen/X/Sc;

    .line 43491
    return-void
.end method

.method private A00()V
    .locals 2

    .line 43492
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lx;->A01:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Lcom/facebook/ads/redexgen/X/Sc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lz;->A04(Lcom/facebook/ads/redexgen/X/Ly;)V

    .line 43493
    return-void
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 1

    .line 43494
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43495
    return-void

    .line 43496
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lx;->A02:Lcom/facebook/ads/redexgen/X/Lx;

    if-nez v0, :cond_1

    .line 43497
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lx;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lx;->A02:Lcom/facebook/ads/redexgen/X/Lx;

    .line 43498
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lx;->A02:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A00()V

    .line 43499
    :goto_0
    return-void

    .line 43500
    :cond_1
    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Lx;->A02(Lcom/facebook/ads/redexgen/X/8w;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 1

    .line 43501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Lcom/facebook/ads/redexgen/X/Sc;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Sc;->A07(Lcom/facebook/ads/redexgen/X/Sc;Lcom/facebook/ads/redexgen/X/8w;)V

    .line 43502
    return-void
.end method
