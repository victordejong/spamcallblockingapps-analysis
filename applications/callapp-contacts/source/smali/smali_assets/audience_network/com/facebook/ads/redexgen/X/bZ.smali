.class public final Lcom/facebook/ads/redexgen/X/bZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HH;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HF;

.field public final A02:Lcom/facebook/ads/redexgen/X/HH;

.field public final A03:Lcom/facebook/ads/redexgen/X/HH;

.field public final A04:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A05:Lcom/facebook/ads/redexgen/X/Hj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HF;ILcom/facebook/ads/redexgen/X/Hj;)V
    .locals 0

    .line 70267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70268
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bZ;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    .line 70269
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bZ;->A03:Lcom/facebook/ads/redexgen/X/HH;

    .line 70270
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bZ;->A02:Lcom/facebook/ads/redexgen/X/HH;

    .line 70271
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bZ;->A01:Lcom/facebook/ads/redexgen/X/HF;

    .line 70272
    iput p5, p0, Lcom/facebook/ads/redexgen/X/bZ;->A00:I

    .line 70273
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/bZ;->A05:Lcom/facebook/ads/redexgen/X/Hj;

    .line 70274
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/bY;
    .locals 8

    .line 70275
    new-instance v1, Lcom/facebook/ads/redexgen/X/bY;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bZ;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bZ;->A03:Lcom/facebook/ads/redexgen/X/HH;

    .line 70276
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4E()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bZ;->A02:Lcom/facebook/ads/redexgen/X/HH;

    .line 70277
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4E()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v4

    .line 70278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bZ;->A01:Lcom/facebook/ads/redexgen/X/HF;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HF;->createDataSink()Lcom/facebook/ads/redexgen/X/HG;

    move-result-object v5

    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/bZ;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/bZ;->A05:Lcom/facebook/ads/redexgen/X/Hj;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/bY;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;ILcom/facebook/ads/redexgen/X/Hj;)V

    .line 70279
    return-object v1

    .line 70280
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4E()Lcom/facebook/ads/redexgen/X/HI;
    .locals 1

    .line 70281
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bZ;->A00()Lcom/facebook/ads/redexgen/X/bY;

    move-result-object v0

    return-object v0
.end method
