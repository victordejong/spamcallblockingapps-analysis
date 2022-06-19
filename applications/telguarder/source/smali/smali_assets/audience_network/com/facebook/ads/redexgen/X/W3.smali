.class public final Lcom/facebook/ads/redexgen/X/W3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public A05:Z

.field public A06:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W3;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63082
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    .line 63083
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:Ljava/nio/ByteBuffer;

    .line 63084
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    .line 63085
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:I

    .line 63086
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NdOTNyExEbjOYrZv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rRpS8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "q2JyMjHOMtjUHAGh6qbsGt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xJHRfvWVBOx7d"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A0ly9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tYO6vXNvD5KfAC2NZGFeFCYufMGW9rpu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2wzjrVbT3DvOx1ub"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OKwIAMxEC3AOzc1rXSF9RamTuwVP1f1N"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W3;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63087
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W3;->A07:[I

    .line 63088
    return-void
.end method

.method public final A44(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 63089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A07:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 63090
    .local p0, "outputChannelsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A07:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    .line 63091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63092
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Z

    .line 63093
    return v2

    .line 63094
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    .line 63095
    if-nez v2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    if-ne v0, p2, :cond_1

    .line 63096
    return v1

    .line 63097
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:I

    .line 63098
    iput p2, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    .line 63099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    array-length v0, v0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Z

    .line 63100
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    array-length v0, v1

    if-ge v2, v0, :cond_5

    .line 63101
    aget v0, v1, v2

    .line 63102
    .local v1, "channelIndex":I
    if-ge v0, p2, :cond_4

    .line 63103
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Z

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Z

    .line 63104
    .end local v1    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63105
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 63106
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 63107
    .restart local v1    # "channelIndex":I
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0

    .line 63108
    .end local p2    # "i":I
    .end local v1    # "channelIndex":I
    :cond_5
    return v3

    .line 63109
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 63110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:Ljava/nio/ByteBuffer;

    .line 63111
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:Ljava/nio/ByteBuffer;

    .line 63112
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 63113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public final A6r()I
    .locals 1

    .line 63114
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 63115
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:I

    return v0
.end method

.method public final A7x()Z
    .locals 1

    .line 63116
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Z

    return v0
.end method

.method public final A81()Z
    .locals 2

    .line 63117
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A05:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:Ljava/nio/ByteBuffer;

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

    .line 63118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A05:Z

    .line 63119
    return-void
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 63120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 63121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 63122
    .local p0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 63123
    .local v0, "limit":I
    sub-int v1, v4, v5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    .line 63124
    .local v0, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    array-length v0, v0

    mul-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x2

    .line 63125
    .local v5, "outputSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 63126
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    .line 63127
    :goto_1
    if-ge v5, v4, :cond_1

    .line 63128
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    array-length v3, v6

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget v0, v6, v2

    .line 63129
    .local v0, "channelIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 63130
    .end local v0    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63131
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    goto :goto_1

    .line 63132
    :cond_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63133
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W3;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    goto :goto_3

    .line 63134
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W3;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/W3;->A08:[Ljava/lang/String;

    const-string v1, "nLonLH8n14JZH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 63135
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/W3;->A08:[Ljava/lang/String;

    const-string v1, "A0fWXZj8cnOxOT2q5WaFxsu9rLXps8Wi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:Ljava/nio/ByteBuffer;

    .line 63137
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 63138
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:Ljava/nio/ByteBuffer;

    .line 63139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A05:Z

    .line 63140
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 63141
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/W3;->flush()V

    .line 63142
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:Ljava/nio/ByteBuffer;

    .line 63143
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:I

    .line 63144
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:I

    .line 63145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A06:[I

    .line 63146
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A07:[I

    .line 63147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Z

    .line 63148
    return-void
.end method
