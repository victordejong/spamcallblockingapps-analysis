.class public final Lcom/facebook/ads/redexgen/X/CL;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24175
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 24176
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 8
    .param p2    # Lcom/facebook/ads/redexgen/X/E6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24177
    const/4 v5, 0x0

    .line 24178
    .local p0, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 24179
    .local p1, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v6, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/a1;->A03:I

    if-eq v1, v0, :cond_0

    .line 24182
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/E6;
    :catch_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 24183
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 24184
    return-object v7

    .line 24185
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v3

    .line 24187
    .local p2, "framesLength":I
    add-int/lit8 v2, v3, 0xa

    .line 24188
    .local v0, "tagLength":I
    if-nez v7, :cond_1

    .line 24189
    new-array v1, v2, [B

    .line 24190
    .local v0, "id3Data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24191
    invoke-interface {p1, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24192
    new-instance v0, Lcom/facebook/ads/redexgen/X/a1;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/a1;-><init>(Lcom/facebook/ads/redexgen/X/E6;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/a1;->A0P([BI)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v7

    .line 24193
    .end local v0    # "id3Data":[B
    :goto_1
    add-int/2addr v5, v2

    .line 24194
    .end local p2    # "framesLength":I
    .end local v0
    goto :goto_0

    .line 24195
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    goto :goto_1
.end method
