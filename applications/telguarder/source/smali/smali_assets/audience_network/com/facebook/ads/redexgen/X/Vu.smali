.class public final Lcom/facebook/ads/redexgen/X/Vu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Ljava/nio/ByteBuffer;

.field public A07:Ljava/nio/ByteBuffer;

.field public A08:Z

.field public A09:Z

.field public A0A:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vu;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62080
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    .line 62081
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/nio/ByteBuffer;

    .line 62082
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    .line 62083
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    .line 62084
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    .line 62085
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Krmdj8rBKfO9c3h1f8XItOX9ygFWaplC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TaDlwSiDsroCHaevIRhZbWB7x4sYLa31"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ucRl8ZJ3MTrYyhCDgbhmpHmdtOCgzAhK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZrwJxXCeANWbJf4TqEpW4VWjKuBTCq9U"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EwaPSrwbQqHNbTQ1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gK4vgLffCes5lCXSDAbH4p6ETv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dNb2edxS7D0wWhpHjW5HEsaOdHGVO3uI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KHCn6GzwikiSerWPYeHKAJzKDZFOHAWD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(II)V
    .locals 0

    .line 62086
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:I

    .line 62087
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vu;->A04:I

    .line 62088
    return-void
.end method

.method public final A44(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 62089
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 62090
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    .line 62091
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    .line 62092
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vu;->A04:I

    mul-int v0, v4, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    .line 62093
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    .line 62094
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vu;->A05:I

    mul-int v0, v2, p2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    .line 62095
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Z

    .line 62096
    .local p0, "wasActive":Z
    if-nez v2, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Z

    .line 62097
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Z

    if-eq v1, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 62098
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 62099
    .end local p0    # "wasActive":Z
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 62100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/nio/ByteBuffer;

    .line 62101
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/nio/ByteBuffer;

    .line 62102
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 62103
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 62104
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 62105
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    return v0
.end method

.method public final A7x()Z
    .locals 1

    .line 62106
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A09:Z

    return v0
.end method

.method public final A81()Z
    .locals 2

    .line 62107
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACh()V
    .locals 1

    .line 62108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    .line 62109
    return-void
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 62110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 62111
    .local p0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 62112
    .local p1, "limit":I
    sub-int v4, v5, v2

    .line 62113
    .local v2, "remaining":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 62114
    .local v5, "trimBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    .line 62115
    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62116
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    if-lez v0, :cond_0

    .line 62117
    return-void

    .line 62118
    :cond_0
    sub-int/2addr v4, v1

    .line 62119
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    add-int/2addr v6, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    array-length v0, v0

    sub-int/2addr v6, v0

    .line 62120
    .local v4, "remainingBytesToOutput":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 62121
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vu;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A0B:[Ljava/lang/String;

    const-string v1, "4gAJWlnoMlc9zeaNP8lwypp3Rj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 62122
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62123
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    const/4 v3, 0x0

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v2

    .line 62124
    .local v0, "endBufferBytesToOutput":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 62125
    sub-int/2addr v6, v2

    .line 62126
    invoke-static {v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v1

    .line 62127
    .local v0, "inputBufferBytesToOutput":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 62129
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62130
    sub-int/2addr v4, v1

    .line 62131
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    .line 62132
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    invoke-virtual {p1, v1, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    .line 62135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/nio/ByteBuffer;

    .line 62137
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 62138
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A07:Ljava/nio/ByteBuffer;

    .line 62139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A08:Z

    .line 62140
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A02:I

    .line 62141
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A01:I

    .line 62142
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 62143
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vu;->flush()V

    .line 62144
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A06:Ljava/nio/ByteBuffer;

    .line 62145
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:I

    .line 62146
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    .line 62147
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A0A:[B

    .line 62148
    return-void
.end method
