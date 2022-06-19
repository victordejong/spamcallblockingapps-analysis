.class public final Lcom/facebook/ads/redexgen/X/Cl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TkhdData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 24851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24852
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 24853
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Cl;->A02:J

    .line 24854
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Cl;->A01:I

    .line 24855
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Cl;)I
    .locals 0

    .line 24856
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Cl;)I
    .locals 0

    .line 24857
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A01:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Cl;)J
    .locals 1

    .line 24858
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A02:J

    return-wide v0
.end method
