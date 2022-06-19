.class public final Lcom/facebook/ads/redexgen/X/Dc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 28179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28180
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    .line 28181
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    .line 28182
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28183
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-interface {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 28184
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 28185
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result p0

    .line 28186
    .local p0, "id":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v1

    .line 28187
    .local p1, "size":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dc;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/Dc;-><init>(IJ)V

    return-object v0
.end method
