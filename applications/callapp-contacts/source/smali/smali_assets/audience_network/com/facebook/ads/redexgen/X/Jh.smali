.class public final Lcom/facebook/ads/redexgen/X/Jh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ji;
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

    .line 40212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40213
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jh;->A02:I

    .line 40214
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Jh;->A00:I

    .line 40215
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Jh;->A01:I

    .line 40216
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/Jf;)V
    .locals 0

    .line 40217
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jh;)I
    .locals 0

    .line 40218
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jh;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jh;)I
    .locals 0

    .line 40219
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jh;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jh;)I
    .locals 0

    .line 40220
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jh;->A01:I

    return p0
.end method
