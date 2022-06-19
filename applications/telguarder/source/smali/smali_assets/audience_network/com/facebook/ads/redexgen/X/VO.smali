.class public final Lcom/facebook/ads/redexgen/X/VO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VQ;)V
    .locals 2

    .line 60189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60190
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 60191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:I

    .line 60193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    .line 60194
    return-void
.end method


# virtual methods
.method public final A75()I
    .locals 1

    .line 60195
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    return v0
.end method

.method public final A84()Z
    .locals 1

    .line 60196
    const/4 v0, 0x0

    return v0
.end method

.method public final ACq()I
    .locals 2

    .line 60197
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A02:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 60198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    return v0

    .line 60199
    :cond_0
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 60200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    return v0

    .line 60201
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VO;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A01:I

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    .line 60202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:I

    .line 60203
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 60204
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A00:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
