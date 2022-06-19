.class public final Lcom/facebook/ads/redexgen/X/UQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Be;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Be;I)V
    .locals 0

    .line 56353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Lcom/facebook/ads/redexgen/X/Be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56354
    iput p2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:I

    .line 56355
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/UQ;)I
    .locals 0

    .line 56356
    iget p0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:I

    return p0
.end method


# virtual methods
.method public final A8B()Z
    .locals 2

    .line 56357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Lcom/facebook/ads/redexgen/X/Be;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0T(I)Z

    move-result v0

    return v0
.end method

.method public final A91()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Lcom/facebook/ads/redexgen/X/Be;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A0R()V

    .line 56359
    return-void
.end method

.method public final ACn(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I
    .locals 2

    .line 56360
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Lcom/facebook/ads/redexgen/X/Be;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Be;->A0Q(ILcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v0

    return v0
.end method

.method public final AE3(J)I
    .locals 2

    .line 56361
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Lcom/facebook/ads/redexgen/X/Be;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Be;->A0P(IJ)I

    move-result v0

    return v0
.end method
