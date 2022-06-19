.class public final Lcom/facebook/ads/redexgen/X/E7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id3Header"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 29216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29217
    iput p1, p0, Lcom/facebook/ads/redexgen/X/E7;->A01:I

    .line 29218
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/E7;->A02:Z

    .line 29219
    iput p3, p0, Lcom/facebook/ads/redexgen/X/E7;->A00:I

    .line 29220
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/E7;)I
    .locals 0

    .line 29221
    iget p0, p0, Lcom/facebook/ads/redexgen/X/E7;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/E7;)I
    .locals 0

    .line 29222
    iget p0, p0, Lcom/facebook/ads/redexgen/X/E7;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/E7;)Z
    .locals 0

    .line 29223
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/E7;->A02:Z

    return p0
.end method
