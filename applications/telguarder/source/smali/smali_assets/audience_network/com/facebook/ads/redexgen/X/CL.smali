.class public final Lcom/facebook/ads/redexgen/X/CL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CL;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24186
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 24187
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xzrR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bGBRZDHwPJnIL3Xh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6Vvn7cE6D3HH7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "J1mY7W4trITw7o1Wgv6iIhPfTOyHENev"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9cvDxPNGW8L3ehPLiPwaMW2GBw6f2RLK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "stLpFACy0oNcDdxHt3kOJYCh3GwSpIKK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oRiWTYZ7PWVrjXcAhh2TeVa2jWE62"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VYAL83nBKzzsktgdBChIqnjjr6dNdMkO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CL;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
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

    .line 24188
    const/4 v5, 0x0

    .line 24189
    .local p0, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 24190
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

    .line 24191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/CL;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 24192
    sget-object v2, Lcom/facebook/ads/redexgen/X/CL;->A01:[Ljava/lang/String;

    const-string v1, "1h7St0oto3sFACX5Pv7en4XSTpnCL06H"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ub;->A03:I

    if-eq v1, v0, :cond_0

    .line 24193
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/E6;
    :catch_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 24194
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 24195
    return-object v7

    .line 24196
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v3

    .line 24198
    .local p2, "framesLength":I
    add-int/lit8 v2, v3, 0xa

    .line 24199
    .local v0, "tagLength":I
    if-nez v7, :cond_1

    .line 24200
    new-array v1, v2, [B

    .line 24201
    .local v0, "id3Data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CL;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24202
    invoke-interface {p1, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24203
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ub;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Ub;-><init>(Lcom/facebook/ads/redexgen/X/E6;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ub;->A0P([BI)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v7

    .line 24204
    .end local v0    # "id3Data":[B
    :goto_1
    add-int/2addr v5, v2

    .line 24205
    .end local p2    # "framesLength":I
    .end local v0
    goto :goto_0

    .line 24206
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
