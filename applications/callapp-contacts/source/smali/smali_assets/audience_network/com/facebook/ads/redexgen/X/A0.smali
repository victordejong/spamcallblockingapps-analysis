.class public final Lcom/facebook/ads/redexgen/X/A0;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/ExoPlaybackException$Type;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 20690
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20691
    iput p1, p0, Lcom/facebook/ads/redexgen/X/A0;->A01:I

    .line 20692
    iput p4, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:I

    .line 20693
    return-void
.end method

.method public static A00(Ljava/io/IOException;)Lcom/facebook/ads/redexgen/X/A0;
    .locals 4

    .line 20694
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/A0;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/A0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;
    .locals 3

    .line 20695
    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/A0;

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/A0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A0;
    .locals 4

    .line 20696
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/A0;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/A0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method
