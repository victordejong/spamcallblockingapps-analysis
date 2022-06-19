.class public final Lcom/facebook/ads/redexgen/X/D8;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public final A09:[I

.field public final A0A:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 26334
    invoke-static {}, Lcom/facebook/ads/redexgen/X/D8;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D8;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/D8;->A0D:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26336
    const/16 v1, 0xff

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    .line 26337
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/D8;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D8;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x1bt
        0x1bt
        0x7t
        -0x20t
        -0xdt
        -0x15t
        -0x20t
        -0x22t
        -0x11t
        -0x20t
        -0x21t
        -0x65t
        -0x36t
        -0x1et
        -0x1et
        -0x32t
        -0x65t
        -0x22t
        -0x24t
        -0x15t
        -0x11t
        -0x10t
        -0x13t
        -0x20t
        -0x65t
        -0x15t
        -0x24t
        -0x11t
        -0x11t
        -0x20t
        -0x13t
        -0x17t
        -0x65t
        -0x24t
        -0x11t
        -0x65t
        -0x23t
        -0x20t
        -0x1et
        -0x1ct
        -0x17t
        -0x65t
        -0x16t
        -0x1ft
        -0x65t
        -0x15t
        -0x24t
        -0x1et
        -0x20t
        0x14t
        0xdt
        0x12t
        0x14t
        0xft
        0xft
        0xet
        0x11t
        0x13t
        0x4t
        0x3t
        -0x41t
        0x1t
        0x8t
        0x13t
        -0x41t
        0x12t
        0x13t
        0x11t
        0x4t
        0x0t
        0xct
        -0x41t
        0x11t
        0x4t
        0x15t
        0x8t
        0x12t
        0x8t
        0xet
        0xdt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5oF8yLWxxRYZcv8sKZZAdwopzvk7JFbO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gHzaCm2zAvZky7n2gTTdnX6Bjw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HB7aDJoDJEbSNyz5vCiGG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TarlLVeSudmcSkqKHmkXQCDfFmd20qHF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WwPfD3bol3mypkHEr3G3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fFNw96zqsmEAaYnRLUb3XkP7uxCMYwGW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3ToutQvFpAM6t2UP2gRaqibn7mDRlvCP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XpwO4bLMUKJS44abeJwY6np6xD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D8;->A0C:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 26338
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:I

    .line 26339
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    .line 26340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    .line 26341
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A08:J

    .line 26342
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A07:J

    .line 26343
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A06:J

    .line 26344
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    .line 26345
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    .line 26346
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    .line 26347
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 26349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/D8;->A03()V

    .line 26350
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 26351
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6w()J

    move-result-wide v0

    sub-long/2addr v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/D8;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/D8;->A0C:[Ljava/lang/String;

    const-string v1, "UcL2kiNXkoOWhBokjNfN"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-wide/16 v4, 0x1b

    cmp-long v0, v6, v4

    if-ltz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 26352
    .local p0, "hasEnoughBytes":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v4, 0x1b

    invoke-interface {p1, v0, v2, v4, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 26353
    :cond_2
    if-eqz p2, :cond_4

    .line 26354
    return v2

    .line 26355
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 26356
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 26357
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v6

    sget v0, Lcom/facebook/ads/redexgen/X/D8;->A0D:I

    int-to-long v0, v0

    cmp-long v5, v6, v0

    if-eqz v5, :cond_7

    .line 26358
    if-eqz p2, :cond_6

    .line 26359
    return v2

    .line 26360
    :cond_6
    const/4 v2, 0x4

    const/16 v1, 0x2e

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D8;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26361
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:I

    .line 26362
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:I

    if-eqz v0, :cond_9

    .line 26363
    if-eqz p2, :cond_8

    .line 26364
    return v2

    .line 26365
    :cond_8
    const/16 v2, 0x32

    const/16 v1, 0x1f

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D8;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26366
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    .line 26367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0K()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    .line 26368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A08:J

    .line 26369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A07:J

    .line 26370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A06:J

    .line 26371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    .line 26372
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    .line 26373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 26374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 26375
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    if-ge v2, v0, :cond_a

    .line 26376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    aput v0, v1, v2

    .line 26377
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    .line 26378
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26379
    .end local p1    # "i":I
    :cond_a
    return v3
.end method
