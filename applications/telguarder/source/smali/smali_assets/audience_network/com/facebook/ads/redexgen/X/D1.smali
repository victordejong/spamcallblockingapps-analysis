.class public final Lcom/facebook/ads/redexgen/X/D1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VT;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:[J

.field public final A02:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D1;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D1;->A02()V

    return-void
.end method

.method public constructor <init>([J[JJ)V
    .locals 0

    .line 26138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26139
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:[J

    .line 26140
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D1;->A01:[J

    .line 26141
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/D1;->A00:J

    .line 26142
    return-void
.end method

.method public static A00(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/D1;
    .locals 17

    move-wide/from16 v2, p2

    .line 26143
    const/16 v0, 0xa

    move-object/from16 v15, p5

    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 26144
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    .line 26145
    .local v1, "numFrames":I
    const/4 v0, 0x0

    if-gtz v4, :cond_0

    .line 26146
    return-object v0

    .line 26147
    :cond_0
    move-object/from16 v1, p4

    iget v6, v1, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 26148
    .local v1, "sampleRate":I
    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    .line 26149
    const/16 v0, 0x7d00

    if-lt v6, v0, :cond_5

    const/16 v0, 0x480

    :goto_0
    int-to-long v4, v0

    mul-long/2addr v9, v4

    int-to-long v11, v6

    .line 26150
    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v6

    .line 26151
    .local v15, "durationUs":J
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v13

    .line 26152
    .local v4, "entryCount":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v16

    .line 26153
    .local v0, "scale":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v12

    .line 26154
    .local v6, "entrySize":I
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 26155
    iget v0, v1, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    int-to-long v0, v0

    add-long v4, v2, v0

    .line 26156
    .local v13, "minPosition":J
    new-array v14, v13, [J

    .line 26157
    .local v15, "timesUs":[J
    new-array v11, v13, [J

    .line 26158
    .local v15, "positions":[J
    const/4 v10, 0x0

    .end local p4    # null:Lcom/facebook/ads/redexgen/X/CM;
    .local v2, "position":J
    .local v7, "index":I
    :goto_1
    if-ge v10, v13, :cond_6

    .line 26159
    int-to-long v8, v10

    mul-long/2addr v8, v6

    .end local v1    # "sampleRate":I
    .end local v15    # "positions":[J
    .local v0, "sampleRate":I
    .local v0, "durationUs":J
    int-to-long v0, v13

    div-long/2addr v8, v0

    aput-wide v8, v14, v10

    .line 26160
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 26161
    const/4 v0, 0x1

    if-eq v12, v0, :cond_3

    const/4 v0, 0x2

    if-eq v12, v0, :cond_2

    const/4 v0, 0x3

    if-eq v12, v0, :cond_1

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4

    .line 26162
    const/4 v0, 0x0

    return-object v0

    .line 26163
    .end local v1
    :cond_1
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    .line 26164
    .restart local v1    # "sampleRate":I
    goto :goto_2

    .line 26165
    .end local v1    # "sampleRate":I
    :cond_2
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 26166
    .restart local v1    # "sampleRate":I
    goto :goto_2

    .line 26167
    .end local v1    # "sampleRate":I
    :cond_3
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 26168
    .restart local v1    # "sampleRate":I
    goto :goto_2

    .line 26169
    :cond_4
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .line 26170
    .local v1, "segmentSize":I
    :goto_2
    mul-int v0, v0, v16

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 26171
    .end local v1    # "segmentSize":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 26172
    :cond_5
    const/16 v0, 0x240

    goto :goto_0

    .line 26173
    .end local v0    # "durationUs":J
    .end local v0
    .local v1, "sampleRate":I
    .restart local v15    # "positions":[J
    .end local v1    # "sampleRate":I
    .end local v15    # "positions":[J
    .end local v7    # "index":I
    .restart local v0    # "durationUs":J
    .restart local v0    # "durationUs":J
    :cond_6
    const-wide/16 v4, -0x1

    move-wide/from16 v0, p0

    cmp-long v9, v0, v4

    sget-object v5, Lcom/facebook/ads/redexgen/X/D1;->A04:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v4, 0xc

    if-eq v5, v4, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v8, Lcom/facebook/ads/redexgen/X/D1;->A04:[Ljava/lang/String;

    const-string v5, "b7jG0bwnu0FnuGtDsApz1CZBJS67a6VE"

    const/4 v4, 0x6

    aput-object v5, v8, v4

    const-string v5, "8N3tMqV9XmyUDabOd0ZhSK5PDudbFS3K"

    const/4 v4, 0x7

    aput-object v5, v8, v4

    if-eqz v9, :cond_8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 26174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    const/16 v5, 0x19

    const/16 v4, 0x74

    invoke-static {v9, v5, v4}, Lcom/facebook/ads/redexgen/X/D1;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x26

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/D1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0xa

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26175
    .end local v2    # "position":J
    .end local v0    # "durationUs":J
    .local v1, "durationUs":J
    .restart local p4    # null:Lcom/facebook/ads/redexgen/X/CM;
    :cond_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {v0, v14, v11, v6, v7}, Lcom/facebook/ads/redexgen/X/D1;-><init>([J[JJ)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/D1;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D1;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x61t
        -0x1bt
        -0x2ft
        -0x1ft
        -0x28t
        -0x51t
        -0xdt
        -0x10t
        0x3t
        -0x10t
        -0x51t
        0x2t
        -0x8t
        0x9t
        -0xct
        -0x51t
        -0x4t
        -0x8t
        0x2t
        -0x4t
        -0x10t
        0x3t
        -0xet
        -0x9t
        -0x37t
        -0x51t
        -0x66t
        -0x5at
        -0x4at
        -0x53t
        -0x69t
        -0x57t
        -0x57t
        -0x51t
        -0x57t
        -0x4at
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Eoj69QqliLkdjomfj0NOEnj0sV1QdSis"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HBksbvHUvvfpMaqeeBI1Ls9Vz0kDZiAK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Sr2tkenPGVGx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1wedtZixOJG2Stt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2IDMyLuO5sOeWuQBcKOq2CPsNs1qavzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lHymWxsUpX53XH0TlPfbFPE9UmdavZD8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y7JCzvxZEGitg9E6sfpNdEbirXC3CVPm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q5sr5TLUmYvQaQ5iCmSKTIXncnSwNtp1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D1;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 26176
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/D1;->A00:J

    return-wide v0
.end method

.method public final A79(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 8

    .line 26177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:[J

    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v7

    .line 26178
    .local p0, "tableIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D1;->A01:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 26179
    .local v2, "seekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:[J

    array-length v0, v1

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_1

    .line 26180
    .end local p1    # null:J
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 26181
    :cond_1
    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D1;->A01:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 26182
    .local p1, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0
.end method

.method public final A7N(J)J
    .locals 3

    .line 26183
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D1;->A02:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D1;->A01:[J

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v0

    aget-wide v0, v2, v0

    return-wide v0
.end method

.method public final A8F()Z
    .locals 1

    .line 26184
    const/4 v0, 0x1

    return v0
.end method
