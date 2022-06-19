.class public final Lcom/facebook/ads/redexgen/X/7Y;
.super Lcom/facebook/ads/redexgen/X/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7U;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7U;)V
    .locals 0

    .line 16674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KL;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 2

    .line 16675
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/7U;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->setVisibility(I)V

    .line 16676
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16677
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method
