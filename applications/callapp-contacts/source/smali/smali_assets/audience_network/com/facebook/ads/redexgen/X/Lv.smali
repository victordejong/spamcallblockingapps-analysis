.class public final Lcom/facebook/ads/redexgen/X/Lv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ch;
    }
.end annotation


# static fields
.field public static A02:Lcom/facebook/ads/redexgen/X/Lv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/ch;

.field public final A01:Lcom/facebook/ads/redexgen/X/Lx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 1

    .line 43347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43348
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Lx;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lv;->A01:Lcom/facebook/ads/redexgen/X/Lx;

    .line 43349
    new-instance v0, Lcom/facebook/ads/redexgen/X/ch;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/ch;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lv;->A00:Lcom/facebook/ads/redexgen/X/ch;

    .line 43350
    return-void
.end method

.method private A00()V
    .locals 2

    .line 43351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lv;->A01:Lcom/facebook/ads/redexgen/X/Lx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lv;->A00:Lcom/facebook/ads/redexgen/X/ch;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lx;->A03(Lcom/facebook/ads/redexgen/X/Lw;)V

    .line 43352
    return-void
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 1

    .line 43353
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43354
    return-void

    .line 43355
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lv;->A02:Lcom/facebook/ads/redexgen/X/Lv;

    if-nez v0, :cond_1

    .line 43356
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lv;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lv;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lv;->A02:Lcom/facebook/ads/redexgen/X/Lv;

    .line 43357
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lv;->A02:Lcom/facebook/ads/redexgen/X/Lv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lv;->A00()V

    .line 43358
    :goto_0
    return-void

    .line 43359
    :cond_1
    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Lv;->A02(Lcom/facebook/ads/redexgen/X/8w;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 1

    .line 43360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lv;->A00:Lcom/facebook/ads/redexgen/X/ch;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/ch;->A08(Lcom/facebook/ads/redexgen/X/ch;Lcom/facebook/ads/redexgen/X/8w;)V

    .line 43361
    return-void
.end method
