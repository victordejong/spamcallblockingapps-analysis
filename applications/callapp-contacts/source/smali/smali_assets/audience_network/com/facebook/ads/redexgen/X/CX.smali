.class public final Lcom/facebook/ads/redexgen/X/CX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MasterElement"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 24338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24339
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    .line 24340
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:J

    .line 24341
    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/CV;)V
    .locals 0

    .line 24342
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/CX;-><init>(IJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/CX;)I
    .locals 0

    .line 24343
    iget p0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/CX;)J
    .locals 1

    .line 24344
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:J

    return-wide v0
.end method
