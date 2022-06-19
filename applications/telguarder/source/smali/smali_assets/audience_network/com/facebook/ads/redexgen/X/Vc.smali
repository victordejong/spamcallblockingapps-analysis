.class public final Lcom/facebook/ads/redexgen/X/Vc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0I:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/CI;

.field public A07:Lcom/facebook/ads/redexgen/X/Ve;

.field public A08:Lcom/facebook/ads/redexgen/X/VZ;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/Vb;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0C:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 61232
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vc;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vc;->A03()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vd;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vc;->A0H:Lcom/facebook/ads/redexgen/X/CJ;

    .line 61233
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vc;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61235
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    .line 61236
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    .line 61237
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 61238
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    .line 61239
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vb;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0A:Lcom/facebook/ads/redexgen/X/Vb;

    .line 61240
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    .line 61241
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A04:J

    .line 61242
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61243
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    .line 61244
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 61245
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 61246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A02:I

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 61247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    return-object v0

    .line 61248
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0D:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vc;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 5

    .line 61249
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A09:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 61250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A06:Lcom/facebook/ads/redexgen/X/CI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 61251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A09:Z

    .line 61252
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A04:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 61253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0A:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->A0E()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    neg-long v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A04:J

    .line 61254
    :cond_1
    return-void

    .line 61255
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vc;->A0F:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x4ct
        -0x46t
        -0x3ct
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gP2n6RYPIBEeoi2W1S13no4bKC8snzna"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mj2hJfGqnfHScJHs8DSlc7v0UF1Pp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TljjQk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qPTGEjzkXlLLsKBpe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FsrOHSAAcyWon8TefGnySknfRXKNO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dzLMjY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nKBqh2rVgtLCSKQXxZiN3SFAd7CDnHrB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "L6yWUJlqMd5S8Cp8o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vc;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61256
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61257
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:I

    .line 61258
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    .line 61259
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61261
    return v6

    .line 61262
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 61263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 61264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 61265
    .local p0, "flags":I
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 61266
    .local v6, "hasAudio":Z
    :goto_0
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 61267
    .local v0, "hasVideo":Z
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A07:Lcom/facebook/ads/redexgen/X/Ve;

    if-nez v0, :cond_2

    .line 61268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A06:Lcom/facebook/ads/redexgen/X/CI;

    const/16 v0, 0x8

    .line 61269
    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ve;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ve;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A07:Lcom/facebook/ads/redexgen/X/Ve;

    .line 61270
    :cond_2
    const/4 v2, 0x2

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A08:Lcom/facebook/ads/redexgen/X/VZ;

    if-nez v0, :cond_3

    .line 61271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A06:Lcom/facebook/ads/redexgen/X/CI;

    .line 61272
    invoke-interface {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VZ;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A08:Lcom/facebook/ads/redexgen/X/VZ;

    .line 61273
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A06:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 61274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0B:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:I

    .line 61275
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    .line 61276
    return v3

    .line 61277
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61278
    const/4 v6, 0x1

    .line 61279
    .local p0, "wasConsumed":Z
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A03:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A07:Lcom/facebook/ads/redexgen/X/Ve;

    if-eqz v0, :cond_1

    .line 61280
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vc;->A02()V

    .line 61281
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vc;->A07:Lcom/facebook/ads/redexgen/X/Ve;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/IM;J)V

    .line 61282
    :cond_0
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:I

    .line 61283
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    .line 61284
    return v6

    .line 61285
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A03:I

    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A08:Lcom/facebook/ads/redexgen/X/VZ;

    if-eqz v0, :cond_2

    .line 61286
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vc;->A02()V

    .line 61287
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vc;->A08:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/IM;J)V

    goto :goto_0

    .line 61288
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A03:I

    const/16 v0, 0x12

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A09:Z

    if-nez v0, :cond_3

    .line 61289
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0A:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/CU;->A00(Lcom/facebook/ads/redexgen/X/IM;J)V

    .line 61290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0A:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->A0E()J

    move-result-wide v2

    .line 61291
    .local p1, "durationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 61292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A06:Lcom/facebook/ads/redexgen/X/CI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 61293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A09:Z

    goto :goto_0

    .line 61294
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61295
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61297
    return v1

    .line 61298
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 61299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A03:I

    .line 61300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A02:I

    .line 61301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    .line 61302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    or-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A05:J

    .line 61303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 61304
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    .line 61305
    return v4
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 61306
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vc;->A06:Lcom/facebook/ads/redexgen/X/CI;

    .line 61307
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61308
    :cond_0
    :goto_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v2, v0, :cond_5

    .line 61309
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A07(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61310
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vc;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61311
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A08(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61312
    return v1

    .line 61313
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A05(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 61314
    goto :goto_0

    .line 61315
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vc;->A06(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61316
    return v1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vc;->A0G:[Ljava/lang/String;

    const-string v1, "YtytlaoRETEs6RI1C"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "3oP9E76nsyFmE5ZSj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 61317
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final ADX(JJ)V
    .locals 2

    .line 61318
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A01:I

    .line 61319
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A04:J

    .line 61320
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A00:I

    .line 61321
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 61324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vc;->A0I:I

    if-eq v1, v0, :cond_0

    .line 61325
    return v2

    .line 61326
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 61328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 61329
    return v2

    .line 61330
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 61332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 61333
    .local p0, "dataOffset":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 61334
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 61335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 61337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vc;->A0C:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
