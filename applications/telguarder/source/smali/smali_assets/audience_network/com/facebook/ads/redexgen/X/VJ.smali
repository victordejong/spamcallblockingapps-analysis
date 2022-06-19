.class public final Lcom/facebook/ads/redexgen/X/VJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cw;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0M:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:Lcom/facebook/ads/redexgen/X/CI;

.field public A0A:Lcom/facebook/ads/redexgen/X/IM;

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/Cw;

.field public A0D:[[J

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0G:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0H:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0I:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/VR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59145
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VJ;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VJ;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VK;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VJ;->A0L:Lcom/facebook/ads/redexgen/X/CJ;

    .line 59146
    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VJ;->A0M:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VJ;-><init>(I)V

    .line 59148
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 59149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59150
    iput p1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0E:I

    .line 59151
    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    .line 59152
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    .line 59153
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0H:Lcom/facebook/ads/redexgen/X/IM;

    .line 59154
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    .line 59155
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    .line 59156
    return-void
.end method

.method private A00(J)I
    .locals 21

    .line 59157
    move-object/from16 v5, p0

    const-wide v19, 0x7fffffffffffffffL

    .line 59158
    .local p1, "preferredSkipAmount":J
    const/4 v4, 0x1

    .line 59159
    .local v5, "preferredRequiresReload":Z
    const/16 v18, -0x1

    .line 59160
    .local v19, "preferredTrackIndex":I
    const-wide v16, 0x7fffffffffffffffL

    .line 59161
    .local v5, "preferredAccumulatedBytes":J
    const-wide v14, 0x7fffffffffffffffL

    .line 59162
    .local v18, "minAccumulatedBytes":J
    const/4 v13, 0x1

    .line 59163
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v12, -0x1

    .line 59164
    .local v14, "minAccumulatedBytesTrackIndex":I
    const/4 v3, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v0, v1

    if-ge v3, v0, :cond_a

    .line 59165
    aget-object v2, v1, v3

    .line 59166
    .local v13, "track":Lcom/facebook/ads/redexgen/X/Cw;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 59167
    .local v12, "sampleIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    if-ne v1, v0, :cond_1

    .line 59168
    .end local v13    # "track":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v12    # "sampleIndex":I
    .end local v3
    .end local v1
    .end local v2
    .end local v0
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59169
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v10, v0, v1

    .line 59170
    .local v1, "sampleOffset":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0D:[[J

    aget-object v0, v0, v3

    aget-wide v8, v0, v1

    .line 59171
    .local v2, "sampleAccumulatedBytes":J
    sub-long v10, v10, p1

    .line 59172
    .local v0, "skipAmount":J
    const-wide/16 v1, 0x0

    cmp-long v0, v10, v1

    if-ltz v0, :cond_2

    const-wide/32 v1, 0x40000

    cmp-long v0, v10, v1

    if-ltz v0, :cond_8

    :cond_2
    const/4 v7, 0x1

    .line 59173
    .local v3, "requiresReload":Z
    :goto_2
    if-nez v7, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-ne v7, v4, :cond_5

    cmp-long v0, v10, v19

    if-gez v0, :cond_5

    .line 59174
    :cond_4
    move v4, v7

    .line 59175
    move-wide/from16 v19, v10

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 59176
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "V"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    move/from16 v18, v3

    .line 59177
    move-wide/from16 v16, v8

    .line 59178
    :cond_5
    cmp-long v6, v8, v14

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_7

    if-gez v6, :cond_0

    .line 59179
    :goto_3
    move-wide v14, v8

    .line 59180
    move v13, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_9

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "pPSjC0WCWwYthze8lWmj7qIeFvwnrWp9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gez v6, :cond_0

    goto :goto_3

    .line 59181
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 59182
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "AluOaKTd0tAnwpKQd7FwJjSTcFxbCEp3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    move v12, v3

    goto/16 :goto_1

    .line 59183
    .end local v11    # "trackIndex":I
    :cond_a
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v14, v1

    if-eqz v0, :cond_b

    if-eqz v13, :cond_b

    const-wide/32 v0, 0xa00000

    add-long/2addr v0, v14

    cmp-long v3, v16, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "JlM5fl7zRpjP5uBNuwhSsZEOMpqYlpiv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gez v3, :cond_d

    .line 59184
    :cond_b
    :goto_4
    return v18

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "Zr8uFyIIPgPiVeYCnyOL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "6SS25Qq9iKI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-gez v3, :cond_d

    goto :goto_4

    .line 59185
    :cond_d
    move/from16 v18, v12

    goto :goto_4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59186
    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v5

    .line 59187
    .local v0, "inputPosition":J
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59188
    invoke-direct {v8, v5, v6}, Lcom/facebook/ads/redexgen/X/VJ;->A00(J)I

    move-result v0

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    .line 59189
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    if-ne v0, v1, :cond_0

    .line 59190
    return v1

    .line 59191
    :cond_0
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    aget-object v7, v1, v0

    .line 59192
    .local v10, "track":Lcom/facebook/ads/redexgen/X/Cw;
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Cw;->A01:Lcom/facebook/ads/redexgen/X/CS;

    .line 59193
    .local v7, "trackOutput":Lcom/facebook/ads/redexgen/X/CS;
    iget v9, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 59194
    .local v13, "sampleIndex":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v3, v0, v9

    .line 59195
    .local v1, "position":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A05:[I

    aget v2, v0, v9

    .line 59196
    .local v6, "sampleSize":I
    sub-long v0, v3, v5

    iget v5, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 59197
    .local v0, "skipAmount":J
    const-wide/16 v11, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v11

    if-ltz v6, :cond_1

    const-wide/32 v11, 0x40000

    cmp-long v6, v0, v11

    if-ltz v6, :cond_2

    .line 59198
    .end local v0    # "skipAmount":J
    .end local v1    # "position":J
    .restart local v3
    .restart local v2
    .end local v2
    .local v0, "position":J
    :cond_1
    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 59199
    const/4 v0, 0x1

    return v0

    .line 59200
    :cond_2
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    if-ne v3, v5, :cond_3

    .line 59201
    const-wide/16 v3, 0x8

    add-long/2addr v0, v3

    .line 59202
    add-int/lit8 v2, v2, -0x8

    .line 59203
    .end local v0    # "position":J
    .local v0, "skipAmount":J
    :cond_3
    long-to-int v3, v0

    invoke-interface {v10, v3}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 59204
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 59205
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 59206
    .local v0, "nalLengthData":[B
    aput-byte v3, v1, v3

    .line 59207
    aput-byte v3, v1, v5

    .line 59208
    const/4 v0, 0x2

    aput-byte v3, v1, v0

    .line 59209
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    .line 59210
    .local v5, "nalUnitLengthFieldLength":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A02:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    rsub-int/lit8 v3, v0, 0x4

    .line 59211
    .local v9, "nalUnitLengthFieldLengthDiff":I
    :goto_0
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    if-ge v0, v2, :cond_7

    .line 59212
    iget v1, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    if-nez v1, :cond_4

    .line 59213
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {v10, v0, v3, v4}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 59214
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x0

    .end local v0    # "nalLengthData":[B
    .local v3, "inputPosition":J
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59215
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0G:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    .line 59216
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0H:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59217
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A0H:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x4

    invoke-interface {v13, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 59218
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    .line 59219
    add-int/2addr v2, v3

    goto :goto_0

    .line 59220
    .end local v3    # "inputPosition":J
    .restart local v0    # "nalLengthData":[B
    .end local v0    # "nalLengthData":[B
    .restart local v3    # "inputPosition":J
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 59221
    .local v1, "writtenBytes":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    .line 59222
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    .line 59223
    .end local v1    # "writtenBytes":I
    goto :goto_0

    .line 59224
    .end local v0
    .restart local v3    # "inputPosition":J
    :cond_5
    :goto_1
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    if-ge v0, v2, :cond_6

    .line 59225
    sub-int v1, v2, v0

    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 59226
    .local v0, "writtenBytes":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    .line 59227
    iget v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    .line 59228
    .end local v0    # "writtenBytes":I
    goto :goto_1

    .line 59229
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 59230
    .end local v3    # "inputPosition":J
    .restart local v0    # "writtenBytes":I
    .end local v0    # "writtenBytes":I
    .end local v5    # "nalUnitLengthFieldLength":I
    .end local v0
    .end local v9    # "nalUnitLengthFieldLengthDiff":I
    .restart local v3    # "inputPosition":J
    :cond_7
    sget-object v3, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "aFhEfZBmYyUDYanrzMDegz5zeumnCeq6"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/4 v3, 0x0

    .line 59231
    .end local v6    # "sampleSize":I
    .local v0, "sampleSize":I
    :goto_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v14, v0, v9

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A04:[I

    aget v16, v0, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    .end local v0    # "sampleSize":I
    .local v0, "skipAmount":J
    .end local v1
    .local v2, "position":J
    move/from16 v17, v2

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 59232
    iget v5, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    const/4 v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ZK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/2addr v5, v4

    iput v5, v7, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    .line 59233
    const/4 v0, -0x1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    .line 59234
    iput v3, v8, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    .line 59235
    iput v3, v8, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    .line 59236
    return v3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/D5;J)I
    .locals 2

    .line 59237
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A01(J)I

    move-result v1

    .line 59238
    .local p0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 59239
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A02(J)I

    move-result v1

    .line 59240
    :cond_0
    return v1
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/D5;JJ)J
    .locals 2

    .line 59241
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VJ;->A02(Lcom/facebook/ads/redexgen/X/D5;J)I

    move-result v1

    .line 59242
    .local p0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 59243
    return-wide p3

    .line 59244
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v0, v0, v1

    .line 59245
    .local p0, "sampleOffset":J
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/CK;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VR;",
            "Lcom/facebook/ads/redexgen/X/CK;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/D5;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59247
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 59248
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/VR;

    .line 59249
    .local p2, "atom":Lcom/facebook/ads/redexgen/X/VR;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1M:I

    if-eq v1, v0, :cond_0

    .line 59250
    .end local p2    # "atom":Lcom/facebook/ads/redexgen/X/VR;
    .end local v10
    .end local v3
    .end local v2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59251
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0o:I

    .line 59252
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0B:Z

    .line 59253
    move v10, p3

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Cm;->A0C(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/VQ;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v4

    .line 59254
    .local v10, "track":Lcom/facebook/ads/redexgen/X/D2;
    if-nez v4, :cond_1

    goto :goto_1

    .line 59255
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0e:I

    .line 59256
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0i:I

    .line 59257
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A17:I

    .line 59258
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v0

    .line 59259
    .local v3, "stblAtom":Lcom/facebook/ads/redexgen/X/VR;
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/Cm;->A0E(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/CK;)Lcom/facebook/ads/redexgen/X/D5;

    move-result-object v1

    .line 59260
    .local v2, "trackSampleTable":Lcom/facebook/ads/redexgen/X/D5;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 59261
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59262
    .end local p1    # "i":I
    :cond_3
    return-object v3
.end method

.method private A06()V
    .locals 1

    .line 59263
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    .line 59264
    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    .line 59265
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VJ;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        -0x74t
        -0x79t
        -0x7bt
        0x38t
        -0x75t
        -0x7ft
        -0x6et
        0x7dt
        0x38t
        -0x7ct
        0x7dt
        -0x75t
        -0x75t
        0x38t
        -0x74t
        -0x80t
        0x79t
        -0x7at
        0x38t
        -0x80t
        0x7dt
        0x79t
        0x7ct
        0x7dt
        -0x76t
        0x38t
        -0x7ct
        0x7dt
        -0x7at
        0x7ft
        -0x74t
        -0x80t
        0x38t
        0x40t
        -0x73t
        -0x7at
        -0x75t
        -0x73t
        -0x78t
        -0x78t
        -0x79t
        -0x76t
        -0x74t
        0x7dt
        0x7ct
        0x41t
        0x46t
        -0x4at
        -0x47t
        0x65t
        0x65t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VdqydMQp6Cw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "guwCAKJ6EmfkSxKiWzcgVBSXeescZCuc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZEvdkvxg98wbJ753mQBRvLP3wpU3XybM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cIyTGluIbbcO4xmXfLu3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "leIrfimaBMBFzeoCI0tFvv8pbgl8k91x"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LNVsJpliQUOciFbNOHIpVvZH8I7g0Wpp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    return-void
.end method

.method private A09(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59266
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "w"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v3, 0x2

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VR;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_3

    .line 59267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/VR;

    .line 59268
    .local p0, "containerAtom":Lcom/facebook/ads/redexgen/X/VR;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0k:I

    if-ne v1, v0, :cond_2

    .line 59269
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/VJ;->A0B(Lcom/facebook/ads/redexgen/X/VR;)V

    .line 59270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 59271
    iput v3, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    goto :goto_0

    .line 59272
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/VR;->A09(Lcom/facebook/ads/redexgen/X/VR;)V

    goto :goto_0

    .line 59274
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    if-eq v0, v3, :cond_4

    .line 59275
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VJ;->A06()V

    .line 59276
    :cond_4
    return-void
.end method

.method private A0A(J)V
    .locals 7

    .line 59277
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v5, v3

    .line 59278
    .local v5, "track":Lcom/facebook/ads/redexgen/X/Cw;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    .line 59279
    .local v4, "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A01(J)I

    move-result v1

    .line 59280
    .local v3, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 59281
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;->A02(J)I

    move-result v1

    .line 59282
    :cond_0
    iput v1, v6, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59283
    .end local v5    # "track":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v4    # "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    .end local v3    # "sampleIndex":I
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "8G8nMWYjZV5rXLIi4rhUR02wlhrjOrcO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "hCTkda56YIiQDQNZejiYosxee8y9MSGp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59284
    :cond_2
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59285
    move-object/from16 v5, p0

    const/4 v12, -0x1

    .line 59286
    .local v6, "firstVideoTrackIndex":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 59287
    .local v12, "durationUs":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 59288
    .local v6, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v11, 0x0

    .line 59289
    .local p0, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    new-instance v8, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    .line 59290
    .local v10, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CK;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1Q:I

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v1

    .line 59291
    .local v10, "udta":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v1, :cond_0

    .line 59292
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Cm;->A0F(Lcom/facebook/ads/redexgen/X/VQ;Z)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v11

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    .line 59293
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "pTd3Zou3Gu406PHBx0s3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ZVMKQr2w2Dh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v11, :cond_0

    .line 59294
    invoke-virtual {v8, v11}, Lcom/facebook/ads/redexgen/X/CK;->A05(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z

    .line 59295
    .end local p0    # "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .local v11, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    :cond_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0E:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 59296
    .local v0, "ignoreEditLists":Z
    :goto_0
    :try_start_0
    invoke-direct {v5, v6, v8, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A05(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/CK;Z)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/VN; {:try_start_0 .. :try_end_0} :catch_0

    .line 59297
    .end local p0
    .local p0, "e":Lcom/facebook/ads/redexgen/X/VN;
    :catch_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    .line 59298
    invoke-direct {v5, v6, v8, v1}, Lcom/facebook/ads/redexgen/X/VJ;->A05(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/CK;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 59299
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 59300
    .local v1, "trackCount":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 59301
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/D5;

    .line 59302
    .local v11, "trackSampleTable":Lcom/facebook/ads/redexgen/X/D5;
    iget-object v13, v15, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/D2;

    .line 59303
    .local v2, "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local p0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VJ;->A09:Lcom/facebook/ads/redexgen/X/CI;

    iget v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    .line 59304
    invoke-interface {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v2, v13, v15, v0}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/D5;Lcom/facebook/ads/redexgen/X/CS;)V

    .line 59305
    .local p0, "mp4Track":Lcom/facebook/ads/redexgen/X/Cw;
    iget v0, v15, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    add-int/lit8 v1, v0, 0x1e

    .line 59306
    .local v5, "maxInputSize":I
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 59307
    .local v8, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v5    # "maxInputSize":I
    .local v1, "maxInputSize":I
    iget v14, v13, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v0, 0x1

    .end local v10    # "udta":Lcom/facebook/ads/redexgen/X/VQ;
    .local v0, "udta":Lcom/facebook/ads/redexgen/X/VQ;
    if-ne v14, v0, :cond_3

    .line 59308
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/CK;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59309
    iget v14, v8, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 59310
    invoke-virtual {v1, v14, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H(II)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 59311
    :cond_2
    if-eqz v11, :cond_3

    .line 59312
    invoke-virtual {v1, v11}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 59313
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Cw;->A01:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59314
    .end local v10
    .local v5, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CK;
    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A04:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v0, v16

    if-eqz v14, :cond_5

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/D2;->A04:J

    .line 59315
    :goto_3
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 59316
    iget v1, v13, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    const/4 v0, -0x1

    if-ne v12, v0, :cond_4

    .line 59317
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 59318
    :cond_4
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59319
    .end local p0    # "mp4Track":Lcom/facebook/ads/redexgen/X/Cw;
    .end local v8    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v11    # "trackSampleTable":Lcom/facebook/ads/redexgen/X/D5;
    .end local v2    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local v1    # "maxInputSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 59320
    :cond_5
    iget-wide v0, v15, Lcom/facebook/ads/redexgen/X/D5;->A02:J

    goto :goto_3

    .line 59321
    .end local v5    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/CK;
    .end local v0    # "udta":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v0
    .local p0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .restart local v10    # "udta":Lcom/facebook/ads/redexgen/X/VQ;
    .restart local v10    # "udta":Lcom/facebook/ads/redexgen/X/VQ;
    .end local p0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .end local v0
    .restart local v0    # "udta":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_6
    iput v12, v5, Lcom/facebook/ads/redexgen/X/VJ;->A02:I

    .line 59322
    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/VJ;->A08:J

    .line 59323
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Cw;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Cw;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    .line 59324
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A0H([Lcom/facebook/ads/redexgen/X/Cw;)[[J

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A0D:[[J

    .line 59325
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A09:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 59326
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VJ;->A09:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 59327
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(I)Z
    .locals 1

    .line 59328
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0k:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0e:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0i:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A17:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0O:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0D(I)Z
    .locals 4

    .line 59329
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0d:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0o:I

    if-eq p0, v0, :cond_1

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A0W:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "0QumShVG0evxthkPrNvrh9719pNtUQsm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "vGpitMbAQsj2quk7kh6KTOLSu7B6jmn6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0P:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1A:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A18:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1K:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1Q:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59330
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 59331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59332
    return v4

    .line 59333
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    .line 59334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    .line 59336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    .line 59337
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_8

    .line 59338
    const/16 v1, 0x8

    .line 59339
    .local p0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 59340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    .line 59341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    .line 59342
    .end local p0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_a

    .line 59343
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59344
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    add-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 59345
    .local p0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/VR;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 59346
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    int-to-long v1, v0

    cmp-long v0, v6, v1

    if-nez v0, :cond_3

    .line 59347
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/VJ;->A09(J)V

    .line 59348
    :goto_1
    return v5

    .line 59349
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VJ;->A06()V

    goto :goto_1

    .line 59350
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A0D(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59351
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 59352
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 59353
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 59354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0F:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59355
    iput v5, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    goto :goto_1

    .line 59356
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 59357
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 59358
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 59359
    iput v5, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    goto :goto_1

    .line 59360
    :cond_8
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 59361
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v2

    .line 59362
    .local v5, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 59363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/VR;->A00:J

    .line 59364
    :cond_9
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 59365
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    goto/16 :goto_0

    .line 59366
    :cond_a
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59367
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/VJ;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 59368
    .local p0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 59369
    .local p2, "atomEndPosition":J
    const/4 v9, 0x0

    .line 59370
    .local v4, "seekRequired":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_3

    .line 59371
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 59372
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0V:I

    if-ne v1, v0, :cond_2

    .line 59373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A0G(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0B:Z

    .line 59374
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/VJ;->A09(J)V

    .line 59375
    if-eqz v9, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 59376
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/VR;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/VJ;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VQ;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/VQ;-><init>(ILcom/facebook/ads/redexgen/X/IM;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/VR;->A0A(Lcom/facebook/ads/redexgen/X/VQ;)V

    goto :goto_0

    .line 59378
    :cond_3
    const-wide/32 v7, 0x40000

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "fScggAFjs5ASEqqtv2HL"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "b8enbSLXex5"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    cmp-long v0, v4, v7

    if-gez v0, :cond_5

    .line 59379
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    goto :goto_0

    .line 59380
    :cond_5
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 59381
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 6

    .line 59382
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59383
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 59384
    .local p0, "majorBrand":I
    sget v0, Lcom/facebook/ads/redexgen/X/VJ;->A0M:I

    const/4 v5, 0x1

    if-ne v1, v0, :cond_0

    .line 59385
    return v5

    .line 59386
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59387
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_3

    .line 59388
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    sget v3, Lcom/facebook/ads/redexgen/X/VJ;->A0M:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "AJSqLfnSEdZJXIrrPcJedMcpQu7hASO9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "lQ72kYvLMW1ZoMI9OU8ChG5m8ita9c1o"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    .line 59389
    return v5

    .line 59390
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static A0H([Lcom/facebook/ads/redexgen/X/Cw;)[[J
    .locals 14

    .line 59391
    array-length v0, p0

    new-array v6, v0, [[J

    .line 59392
    .local p0, "accumulatedSampleSizes":[[J
    array-length v0, p0

    new-array v5, v0, [I

    .line 59393
    .local v0, "nextSampleIndex":[I
    array-length v0, p0

    new-array v4, v0, [J

    .line 59394
    .local v6, "nextSampleTimesUs":[J
    array-length v0, p0

    new-array v3, v0, [Z

    .line 59395
    .local v0, "tracksFinished":[Z
    const/4 v7, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, p0

    if-ge v7, v0, :cond_1

    .line 59396
    aget-object v0, p0, v7

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v7

    .line 59397
    aget-object v0, p0, v7

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    const/4 v9, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v1, "I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "1J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget-wide v0, v8, v9

    aput-wide v0, v4, v7

    .line 59398
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59399
    .end local v5    # "i":I
    :cond_1
    const-wide/16 v12, 0x0

    .line 59400
    .local v5, "accumulatedSampleSize":J
    const/4 v2, 0x0

    .line 59401
    .local v4, "finishedTracks":I
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_5

    .line 59402
    const-wide v10, 0x7fffffffffffffffL

    .line 59403
    .local v0, "minTimeUs":J
    const/4 v9, -0x1

    .line 59404
    .local v7, "minTimeTrackIndex":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_3

    .line 59405
    aget-boolean v0, v3, v1

    if-nez v0, :cond_2

    aget-wide v7, v4, v1

    cmp-long v0, v7, v10

    if-gtz v0, :cond_2

    .line 59406
    move v9, v1

    .line 59407
    aget-wide v10, v4, v1

    .line 59408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59409
    .end local v0    # "i":I
    :cond_3
    aget v7, v5, v9

    .line 59410
    .local v0, "trackSampleIndex":I
    aget-object v0, v6, v9

    aput-wide v12, v0, v7

    .line 59411
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A05:[I

    aget v0, v0, v7

    int-to-long v0, v0

    add-long/2addr v12, v0

    .line 59412
    const/4 v1, 0x1

    add-int/2addr v7, v1

    aput v7, v5, v9

    .line 59413
    aget-object v0, v6, v9

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 59414
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v0, v0, v7

    aput-wide v0, v4, v9

    goto :goto_1

    .line 59415
    :cond_4
    aput-boolean v1, v3, v9

    .line 59416
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59417
    :cond_5
    return-object v6
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 59418
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A08:J

    return-wide v0
.end method

.method public final A79(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 17

    .line 59419
    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v0, v1

    if-nez v0, :cond_0

    .line 59420
    sget-object v1, Lcom/facebook/ads/redexgen/X/CQ;->A04:Lcom/facebook/ads/redexgen/X/CQ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 59421
    :cond_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 59422
    .local v9, "secondTimeUs":J
    const-wide/16 v3, -0x1

    .line 59423
    .local v1, "secondOffset":J
    iget v0, v11, Lcom/facebook/ads/redexgen/X/VJ;->A02:I

    const/4 v14, -0x1

    move-wide/from16 v9, p1

    if-eq v0, v14, :cond_1

    .line 59424
    aget-object v0, v1, v0

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    .line 59425
    .local v11, "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    invoke-static {v13, v9, v10}, Lcom/facebook/ads/redexgen/X/VJ;->A02(Lcom/facebook/ads/redexgen/X/D5;J)I

    move-result v12

    .line 59426
    .local v1, "sampleIndex":I
    if-ne v12, v14, :cond_2

    .line 59427
    sget-object v1, Lcom/facebook/ads/redexgen/X/CQ;->A04:Lcom/facebook/ads/redexgen/X/CQ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 59428
    .end local v13
    .end local v14
    :cond_1
    move-wide v0, v9

    .line 59429
    .restart local v13
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_0

    .line 59430
    :cond_2
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v0, v0, v12

    .line 59431
    .local v11, "sampleTimeUs":J
    .local v13, "firstTimeUs":J
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v7, v2, v12

    .line 59432
    .local v14, "firstOffset":J
    cmp-long v2, v0, v9

    if-gez v2, :cond_3

    iget v2, v13, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_3

    .line 59433
    invoke-virtual {v13, v9, v10}, Lcom/facebook/ads/redexgen/X/D5;->A02(J)I

    move-result v9

    .line 59434
    .local v5, "secondSampleIndex":I
    if-eq v9, v14, :cond_3

    if-eq v9, v12, :cond_3

    .line 59435
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    aget-wide v5, v2, v9

    .line 59436
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    aget-wide v3, v2, v9

    .line 59437
    .restart local v14    # "firstOffset":J
    :cond_3
    :goto_0
    const/4 v12, 0x0

    .end local v14    # "firstOffset":J
    .local v11, "i":I
    .local v1, "firstOffset":J
    .local v1, "secondOffset":J
    :goto_1
    iget-object v14, v11, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    array-length v2, v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v12, v2, :cond_6

    .line 59438
    iget v13, v11, Lcom/facebook/ads/redexgen/X/VJ;->A02:I

    sget-object v10, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v9, v10, v2

    const/4 v2, 0x3

    aget-object v10, v10, v2

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v9, v2, :cond_5

    sget-object v10, Lcom/facebook/ads/redexgen/X/VJ;->A0K:[Ljava/lang/String;

    const-string v9, "5ugRQUm7dcbbBcp3GC87nxAyOQzlP5p7"

    const/4 v2, 0x6

    aput-object v9, v10, v2

    if-eq v12, v13, :cond_4

    .line 59439
    aget-object v2, v14, v12

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/Cw;->A03:Lcom/facebook/ads/redexgen/X/D5;

    .line 59440
    .local v5, "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    invoke-static {v9, v0, v1, v7, v8}, Lcom/facebook/ads/redexgen/X/VJ;->A03(Lcom/facebook/ads/redexgen/X/D5;JJ)J

    move-result-wide v7

    .line 59441
    cmp-long v2, v5, v15

    if-eqz v2, :cond_4

    .line 59442
    invoke-static {v9, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/VJ;->A03(Lcom/facebook/ads/redexgen/X/D5;JJ)J

    move-result-wide v3

    .line 59443
    .end local v5    # "sampleTable":Lcom/facebook/ads/redexgen/X/D5;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59444
    .end local v11    # "i":I
    :cond_6
    new-instance v2, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v2, v0, v1, v7, v8}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 59445
    .local v11, "firstSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    cmp-long v0, v5, v15

    if-nez v0, :cond_7

    .line 59446
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 59447
    :cond_7
    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 59448
    .local v5, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0
.end method

.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 59449
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A09:Lcom/facebook/ads/redexgen/X/CI;

    .line 59450
    return-void
.end method

.method public final A8F()Z
    .locals 1

    .line 59451
    const/4 v0, 0x1

    return v0
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59452
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/VJ;->A03:I

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    .line 59453
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VJ;->A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v0

    return v0

    .line 59454
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VJ;->A0F(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59455
    return v1

    .line 59456
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VJ;->A0E(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59457
    const/4 v0, -0x1

    return v0

    .line 59458
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final ADX(JJ)V
    .locals 3

    .line 59459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 59460
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A00:I

    .line 59461
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A06:I

    .line 59462
    iput v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A04:I

    .line 59463
    iput v1, p0, Lcom/facebook/ads/redexgen/X/VJ;->A05:I

    .line 59464
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 59465
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VJ;->A06()V

    .line 59466
    :cond_0
    :goto_0
    return-void

    .line 59467
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VJ;->A0C:[Lcom/facebook/ads/redexgen/X/Cw;

    if-eqz v0, :cond_0

    .line 59468
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/VJ;->A0A(J)V

    goto :goto_0
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59469
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/D0;->A05(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
.end method
