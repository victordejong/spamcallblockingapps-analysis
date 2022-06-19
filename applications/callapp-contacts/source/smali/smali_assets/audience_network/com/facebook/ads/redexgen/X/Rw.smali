.class public abstract Lcom/facebook/ads/redexgen/X/Rw;
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

    .line 51796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 0

    .line 51797
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:I

    .line 51798
    return-void
.end method

.method public final A01(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 51799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/RewardData;

    .line 51800
    return-void
.end method

.method public abstract A0D()I
.end method

.method public abstract A0E()Z
.end method

.method public final A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 51801
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method
