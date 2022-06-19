.class public final Lcom/facebook/ads/redexgen/X/aS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/C5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/C5;I)V
    .locals 0

    .line 67443
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aS;->A01:Lcom/facebook/ads/redexgen/X/C5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67444
    iput p2, p0, Lcom/facebook/ads/redexgen/X/aS;->A00:I

    .line 67445
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aS;)I
    .locals 0

    .line 67446
    iget p0, p0, Lcom/facebook/ads/redexgen/X/aS;->A00:I

    return p0
.end method


# virtual methods
.method public final A89()Z
    .locals 2

    .line 67447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aS;->A01:Lcom/facebook/ads/redexgen/X/C5;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aS;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/C5;->A0T(I)Z

    move-result v0

    return v0
.end method

.method public final A8z()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aS;->A01:Lcom/facebook/ads/redexgen/X/C5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C5;->A0R()V

    .line 67449
    return-void
.end method

.method public final ACn(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;Z)I
    .locals 2

    .line 67450
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aS;->A01:Lcom/facebook/ads/redexgen/X/C5;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aS;->A00:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/C5;->A0Q(ILcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;Z)I

    move-result v0

    return v0
.end method

.method public final AE2(J)I
    .locals 2

    .line 67451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aS;->A01:Lcom/facebook/ads/redexgen/X/C5;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aS;->A00:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/C5;->A0P(IJ)I

    move-result v0

    return v0
.end method
