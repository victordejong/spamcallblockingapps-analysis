.class public final Lcom/facebook/ads/redexgen/X/VS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VT;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/CI;

.field public A05:Lcom/facebook/ads/redexgen/X/CS;

.field public A06:Lcom/facebook/ads/redexgen/X/VT;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

.field public final A08:I

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/CK;

.field public final A0B:Lcom/facebook/ads/redexgen/X/CL;

.field public final A0C:Lcom/facebook/ads/redexgen/X/CM;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60244
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VS;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VS;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VU;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VS;->A0G:Lcom/facebook/ads/redexgen/X/CJ;

    .line 60245
    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VS;->A0J:I

    .line 60246
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VS;->A0H:I

    .line 60247
    const/16 v2, 0x1c

    const/4 v1, 0x4

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VS;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VS;-><init>(I)V

    .line 60249
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 60250
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/VS;-><init>(IJ)V

    .line 60251
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 60252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60253
    iput p1, p0, Lcom/facebook/ads/redexgen/X/VS;->A08:I

    .line 60254
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/VS;->A09:J

    .line 60255
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    .line 60256
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    .line 60257
    new-instance v0, Lcom/facebook/ads/redexgen/X/CK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    .line 60258
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    .line 60259
    new-instance v0, Lcom/facebook/ads/redexgen/X/CL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    .line 60260
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60261
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 60262
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 60263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x4

    invoke-interface {p1, v1, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60264
    return v5

    .line 60265
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 60267
    .local p0, "sampleHeaderData":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VS;->A07(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60268
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/CM;->A00(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 60269
    :cond_1
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60270
    iput v4, p0, Lcom/facebook/ads/redexgen/X/VS;->A01:I

    .line 60271
    return v4

    .line 60272
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    .line 60273
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    .line 60274
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VT;->A7N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    .line 60275
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A09:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_3

    .line 60276
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VT;->A7N(J)J

    move-result-wide v7

    .line 60277
    .local v5, "embeddedFirstSampleTimestampUs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A09:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    .line 60278
    .end local v5    # "embeddedFirstSampleTimestampUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    .line 60279
    .end local p0    # "sampleHeaderData":I
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VS;->A05:Lcom/facebook/ads/redexgen/X/CS;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    invoke-interface {v1, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 60280
    .local p0, "bytesAppended":I
    if-ne v1, v5, :cond_5

    .line 60281
    return v5

    .line 60282
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    .line 60283
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    if-lez v0, :cond_6

    .line 60284
    return v4

    .line 60285
    :cond_6
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A03:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    .line 60286
    .local p1, "timeUs":J
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VS;->A05:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 60287
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A03:J

    .line 60288
    iput v4, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    .line 60289
    return v4
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;I)I
    .locals 2

    .line 60290
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_1

    .line 60291
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60292
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 60293
    .local p0, "headerData":I
    sget v0, Lcom/facebook/ads/redexgen/X/VS;->A0J:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/VS;->A0H:I

    if-ne v1, v0, :cond_1

    .line 60294
    :cond_0
    return v1

    .line 60295
    .end local p0    # "headerData":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_2

    .line 60296
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60297
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/VS;->A0I:I

    if-ne v1, v0, :cond_2

    .line 60298
    return v0

    .line 60299
    :cond_2
    const/4 p1, 0x0

    sget-object p0, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, p0, v0

    const/4 v0, 0x6

    aget-object v0, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object p0, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "GiJgZsQu2sd8NIzyFWzCg8NWdbDaQxLq"

    const/4 v0, 0x4

    aput-object v1, p0, v0

    return p1
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/VT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 60301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    .line 60303
    new-instance v0, Lcom/facebook/ads/redexgen/X/DK;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/DK;-><init>(JJLcom/facebook/ads/redexgen/X/CM;)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/VT;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    new-instance v11, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v11, v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 60305
    .local p0, "frame":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 60306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A05:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v4, 0x15

    if-eqz v0, :cond_2

    .line 60307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    if-eq v0, v1, :cond_0

    const/16 v4, 0x24

    .line 60308
    .local p1, "xingBase":I
    :cond_0
    :goto_0
    invoke-static {v11, v4}, Lcom/facebook/ads/redexgen/X/VS;->A01(Lcom/facebook/ads/redexgen/X/IM;I)I

    move-result v3

    .line 60309
    .local v0, "seekHeader":I
    sget v0, Lcom/facebook/ads/redexgen/X/VS;->A0J:I

    if-eq v3, v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/VS;->A0H:I

    if-ne v3, v0, :cond_7

    .line 60310
    .end local v0    # "seekHeader":I
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v8

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    sget-object v5, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v5, v0

    const/4 v0, 0x6

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60311
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0xd

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "128Nru2J4nBxq7rbZ"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Cx;->A01(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Cx;

    move-result-object v5

    .line 60312
    .restart local v0    # "seekHeader":I
    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CK;->A03()Z

    move-result v0

    if-nez v0, :cond_5

    .line 60313
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 60314
    add-int/lit16 v0, v4, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 60315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 60316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VS;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CK;->A04(I)Z

    .line 60318
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60319
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Cx;->A8F()Z

    move-result v0

    if-nez v0, :cond_8

    sget v4, Lcom/facebook/ads/redexgen/X/VS;->A0H:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "T0BKpaqspBuRo8tNFQe69OLnLwJHxTKr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_8

    .line 60320
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/VT;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "KOQnv5zKiNMgpdciRYuMc5m"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "580m0FV6VfLFD7tDZak4Ejk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_8

    goto :goto_1

    .line 60321
    :cond_7
    sget v0, Lcom/facebook/ads/redexgen/X/VS;->A0I:I

    if-ne v3, v0, :cond_a

    .line 60322
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v8

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_9

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/D1;->A00(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/D1;

    move-result-object v5

    .line 60323
    .local v0, "seeker":Lcom/facebook/ads/redexgen/X/VT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60324
    :cond_8
    :goto_2
    return-object v5

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "jepXBxOiF6nBMtyNY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/D1;->A00(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/D1;

    move-result-object v5

    .line 60325
    .local v0, "seeker":Lcom/facebook/ads/redexgen/X/VT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    goto :goto_2

    .line 60326
    .end local v0    # "seeker":Lcom/facebook/ads/redexgen/X/VT;
    :cond_a
    const/4 v5, 0x0

    .line 60327
    .restart local v0    # "seeker":Lcom/facebook/ads/redexgen/X/VT;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    goto :goto_2
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/VS;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "Fo2Gjh4fktGPxXuowHIg8ZT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "SyJCrCgn0O63pYrXWnIv0Aw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x5c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VS;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        -0xft
        -0x17t
        -0xet
        -0x15t
        -0x3t
        -0x7t
        0xat
        -0x5t
        0x0t
        -0x3t
        -0x4t
        -0x48t
        0xct
        0x7t
        0x7t
        -0x48t
        0x5t
        -0x7t
        0x6t
        0x11t
        -0x48t
        -0x6t
        0x11t
        0xct
        -0x3t
        0xbt
        -0x3at
        -0x2ct
        -0x40t
        -0x30t
        -0x39t
        -0x3bt
        -0x2at
        -0x25t
        -0x2ct
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "A5Vktd83h1zoXRn8ssRnUyJcMBDvjD1R"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ImJa78ZKbGNAPY5qg4I8ZaR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ul6vRxwQsi8xfsKk2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TSAIq3iJSzcZembTYRFLXNc5MnobX8ae"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "M1YIA2ZzcdDGotWGFHf5djGfrDy5E921"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DyrMgFQe5vmDBuxvsccVGifUKgsQXWMW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5XKwg3IMMLhg2gzz2SdwR2S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0WQD7xggq9bTnGbqSk4GKFSjPXd10L3G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public static A07(IJ)Z
    .locals 4

    .line 60328
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/CH;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60329
    const/4 v8, 0x0

    .line 60330
    .local p0, "validFrameCount":I
    const/4 v7, 0x0

    .line 60331
    .local p1, "candidateSynchronizedHeaderData":I
    const/4 v6, 0x0

    .line 60332
    .local p2, "peekedId3Bytes":I
    const/4 v5, 0x0

    .line 60333
    .local v8, "searchedBytes":I
    if-eqz p2, :cond_e

    const/16 v4, 0x4000

    .line 60334
    .local v7, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 60335
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v11

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    cmp-long v0, v11, v9

    if-nez v0, :cond_1

    .line 60336
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A08:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 60337
    .local v6, "onlyDecodeGaplessInfoFrames":Z
    :goto_1
    if-eqz v0, :cond_c

    sget-object v1, Lcom/facebook/ads/redexgen/X/CK;->A03:Lcom/facebook/ads/redexgen/X/E6;

    .line 60338
    .local v5, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/E6;
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CL;->A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 60339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VS;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_0

    .line 60340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/CK;->A05(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z

    .line 60341
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6w()J

    move-result-wide v0

    long-to-int v6, v0

    .line 60342
    if-nez p2, :cond_1

    .line 60343
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60344
    .end local v6    # "onlyDecodeGaplessInfoFrames":Z
    .end local v5    # "id3FramePredicate":Lcom/facebook/ads/redexgen/X/E6;
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-lez v8, :cond_b

    const/4 v0, 0x1

    :goto_4
    const/4 v10, 0x4

    invoke-interface {p1, v1, v3, v10, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60345
    .end local v6
    .end local v11
    :goto_5
    if-eqz p2, :cond_2

    .line 60346
    add-int/2addr v6, v5

    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60347
    :goto_6
    iput v7, p0, Lcom/facebook/ads/redexgen/X/VS;->A01:I

    .line 60348
    return v2

    .line 60349
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    goto :goto_6

    .line 60350
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v9

    .line 60352
    .local v6, "headerData":I
    if-eqz v7, :cond_4

    int-to-long v0, v7

    .line 60353
    invoke-static {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/VS;->A07(IJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60354
    :cond_4
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/CM;->A00(I)I

    move-result v1

    .local v11, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    .line 60355
    .end local v11    # "frameSize":I
    :cond_5
    add-int/lit8 v1, v5, 0x1

    .end local v8    # "searchedBytes":I
    .local v5, "searchedBytes":I
    if-ne v5, v4, :cond_6

    .line 60356
    if-eqz p2, :cond_f

    .line 60357
    return v3

    .line 60358
    :cond_6
    const/4 v8, 0x0

    .line 60359
    const/4 v7, 0x0

    .line 60360
    if-eqz p2, :cond_7

    .line 60361
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 60362
    add-int v0, v6, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 60363
    .end local v6    # "headerData":I
    :goto_7
    move v5, v1

    goto :goto_3

    .line 60364
    :cond_7
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    goto :goto_7

    .line 60365
    .end local v5    # "searchedBytes":I
    .restart local v8    # "searchedBytes":I
    .restart local v6    # "headerData":I
    .restart local v11    # "frameSize":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 60366
    if-ne v8, v2, :cond_a

    .line 60367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/CM;->A05(ILcom/facebook/ads/redexgen/X/CM;)Z

    .line 60368
    move v7, v9

    .line 60369
    .restart local v6    # "headerData":I
    .restart local v11    # "frameSize":I
    :cond_9
    add-int/lit8 v10, v1, -0x4

    sget-object v9, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v9, v0

    const/4 v0, 0x7

    aget-object v9, v9, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v9, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v1, "Mo1c3yU6nJqBLzSCFMQxdFu4ugx2Ffml"

    const/4 v0, 0x4

    aput-object v1, v9, v0

    invoke-interface {p1, v10}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    goto :goto_3

    .line 60370
    :cond_a
    if-ne v8, v10, :cond_9

    goto :goto_5

    .line 60371
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 60372
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 60373
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 60374
    :cond_e
    const/high16 v4, 0x20000

    goto/16 :goto_0

    .line 60375
    :cond_f
    const/4 v2, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 3

    .line 60376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VS;->A04:Lcom/facebook/ads/redexgen/X/CI;

    .line 60377
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A04:Lcom/facebook/ads/redexgen/X/CI;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A05:Lcom/facebook/ads/redexgen/X/CS;

    .line 60378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A04:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 60379
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60380
    move-object/from16 v2, p0

    move-object v2, v2

    iget v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A01:I

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    .line 60381
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A08(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60382
    .local v2, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, -0x1

    return v0

    .line 60383
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    if-nez v0, :cond_4

    .line 60384
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/VS;->A03(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/VT;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    .line 60385
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    if-eqz v0, :cond_1

    .line 60386
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8F()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A08:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 60387
    :cond_1
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/VT;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    .line 60388
    :cond_2
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/VS;->A04:Lcom/facebook/ads/redexgen/X/CI;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A06:Lcom/facebook/ads/redexgen/X/VT;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 60389
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/VS;->A05:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v7, 0x0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/CM;->A06:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x1000

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    sget-object v4, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0x11

    if-eq v4, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v5, Lcom/facebook/ads/redexgen/X/VS;->A0F:[Ljava/lang/String;

    const-string v4, "FDcj63rTmQpcHhlPFCmyvVI9FB5lByP5"

    const/4 v0, 0x4

    aput-object v4, v5, v0

    iget v12, v6, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    const/4 v14, -0x1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    iget v15, v0, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A0A:Lcom/facebook/ads/redexgen/X/CK;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 60390
    iget v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A08:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 60391
    :goto_1
    const/16 v19, 0x0

    move-object/from16 v21, v0

    move/from16 v16, v4

    invoke-static/range {v7 .. v21}, Lcom/facebook/ads/internal/exoplayer2/Format;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 60392
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 60393
    :cond_4
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/VS;->A00(Lcom/facebook/ads/redexgen/X/CH;)I

    move-result v0

    return v0

    .line 60394
    :cond_5
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VS;->A07:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    goto :goto_1
.end method

.method public final ADX(JJ)V
    .locals 3

    .line 60395
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A01:I

    .line 60396
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A02:J

    .line 60397
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VS;->A03:J

    .line 60398
    iput v2, p0, Lcom/facebook/ads/redexgen/X/VS;->A00:I

    .line 60399
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60400
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A08(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    move-result v0

    return v0
.end method
