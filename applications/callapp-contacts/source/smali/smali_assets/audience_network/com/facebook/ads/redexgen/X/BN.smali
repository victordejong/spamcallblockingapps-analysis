.class public final Lcom/facebook/ads/redexgen/X/BN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/AL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AL;JJ)V
    .locals 0

    .line 22385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22386
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BN;->A02:Lcom/facebook/ads/redexgen/X/AL;

    .line 22387
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/BN;->A00:J

    .line 22388
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/BN;->A01:J

    .line 22389
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AL;JJLcom/facebook/ads/redexgen/X/BJ;)V
    .locals 0

    .line 22390
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/BN;-><init>(Lcom/facebook/ads/redexgen/X/AL;JJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/BN;)J
    .locals 1

    .line 22391
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BN;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/BN;)J
    .locals 1

    .line 22392
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BN;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/BN;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 0

    .line 22393
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BN;->A02:Lcom/facebook/ads/redexgen/X/AL;

    return-object p0
.end method
