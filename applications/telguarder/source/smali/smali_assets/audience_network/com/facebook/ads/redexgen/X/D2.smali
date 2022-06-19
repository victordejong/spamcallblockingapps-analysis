.class public final Lcom/facebook/ads/redexgen/X/D2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track$Transformation;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final A08:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0A:[Lcom/facebook/ads/redexgen/X/D3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJLcom/facebook/ads/internal/exoplayer2/Format;I[Lcom/facebook/ads/redexgen/X/D3;I[J[J)V
    .locals 0
    .param p11    # [Lcom/facebook/ads/redexgen/X/D3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26186
    iput p1, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 26187
    iput p2, p0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    .line 26188
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 26189
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/D2;->A05:J

    .line 26190
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/D2;->A04:J

    .line 26191
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 26192
    iput p10, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    .line 26193
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Lcom/facebook/ads/redexgen/X/D3;

    .line 26194
    iput p12, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 26195
    iput-object p13, p0, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    .line 26196
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    .line 26197
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/D3;
    .locals 1

    .line 26198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A0A:[Lcom/facebook/ads/redexgen/X/D3;

    if-nez v0, :cond_0

    .line 26199
    const/4 v0, 0x0

    .line 26200
    :goto_0
    return-object v0

    .line 26201
    :cond_0
    aget-object v0, v0, p1

    goto :goto_0
.end method
