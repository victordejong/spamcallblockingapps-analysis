.class public final Lcom/facebook/ads/redexgen/X/Rh;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0u;->A0D(Lcom/facebook/ads/redexgen/X/8D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51116
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 51117
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    if-nez v0, :cond_0

    .line 51118
    new-instance v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0t;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    .line 51119
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A06()V

    .line 51120
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A05()V

    .line 51121
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A03:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 51122
    :cond_0
    return-void
.end method
