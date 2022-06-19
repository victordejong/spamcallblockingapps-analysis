.class public final Lcom/facebook/ads/redexgen/X/9b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberedRecordFile"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/9Y;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/9Y;)V
    .locals 0

    .line 20020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20021
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:I

    .line 20022
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Lcom/facebook/ads/redexgen/X/9Y;

    .line 20023
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 20024
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A06()I

    move-result v0

    return v0
.end method

.method public final A02(I[BI[II)Lcom/facebook/ads/redexgen/X/9P;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Lcom/facebook/ads/redexgen/X/9Y;

    move v5, p5

    move-object v4, p4

    move v3, p3

    move-object v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9Y;->A07(I[BI[II)Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A08()V

    .line 20028
    return-void
.end method

.method public final A04()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A09()V

    .line 20030
    return-void
.end method

.method public final A05([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Lcom/facebook/ads/redexgen/X/9Y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9Y;->A0A([B)Z

    move-result v0

    return v0
.end method
