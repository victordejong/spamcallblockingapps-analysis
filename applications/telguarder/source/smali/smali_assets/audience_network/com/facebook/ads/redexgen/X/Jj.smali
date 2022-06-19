.class public final Lcom/facebook/ads/redexgen/X/Jj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityRecord"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 40353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40354
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:I

    .line 40355
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    .line 40356
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:I

    .line 40357
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/Jh;)V
    .locals 0

    .line 40358
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jj;)I
    .locals 0

    .line 40359
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jj;)I
    .locals 0

    .line 40360
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jj;)I
    .locals 0

    .line 40361
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:I

    return p0
.end method
