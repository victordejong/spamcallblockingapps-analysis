.class public abstract Lcom/facebook/ads/redexgen/X/c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/RewardData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 0

    .line 70512
    iput p1, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:I

    .line 70513
    return-void
.end method

.method public final A01(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 70514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/RewardData;

    .line 70515
    return-void
.end method

.method public abstract A0D()I
.end method

.method public abstract A0E()Z
.end method

.method public final A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 70516
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method
