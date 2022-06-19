.class public final Lcom/facebook/ads/redexgen/X/Tu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HP;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/RandomAccessFile;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Tu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tu;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tu;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Tu;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 55409
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Hd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Tu;",
            ">;)V"
        }
    .end annotation

    .line 55410
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/FileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55411
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/Hd;

    .line 55412
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tu;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A06:[Ljava/lang/String;

    const-string v1, "Nwb9PF8XZiH7I"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A06:[Ljava/lang/String;

    const-string v1, "jFcgY4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "IVElzL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tu;->A05:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QzgCCa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "afs5j5G2Gb3EJ4waRYqthnHJI1TzSp8b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Mu5LN7OjuRvQdHPtCXv9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0qHGujJN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Tku6pe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "j6Bjmp3Jwy6LhRKh9Upe8HDMSa6fwXrW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CKHEg3lFHP2OavGIie9K9nbXFMVneBfG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4O9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tu;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HP;
        }
    .end annotation

    .line 55414
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Landroid/net/Uri;

    .line 55415
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    .line 55416
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 55417
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    sub-long/2addr v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:J

    .line 55418
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:J

    goto :goto_1

    .line 55419
    :cond_0
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    goto :goto_0

    .line 55420
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Z

    .line 55422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_1

    .line 55423
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hd;->ABs(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 55424
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:J

    return-wide v0

    .line 55425
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .end local v1
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55426
    .restart local v1
    :catch_0
    move-exception v1

    .line 55427
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HP;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HP;
        }
    .end annotation

    .line 55428
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tu;->A01:Landroid/net/Uri;

    .line 55429
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 55430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55431
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    .line 55432
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Z

    if-eqz v0, :cond_1

    .line 55433
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Z

    .line 55434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_1

    .line 55435
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55436
    :cond_1
    return-void

    .line 55437
    :catch_0
    move-exception v1

    .line 55438
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/HP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HP;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55439
    :catchall_0
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    .line 55440
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Z

    if-eqz v0, :cond_2

    .line 55441
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A03:Z

    .line 55442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 55443
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55444
    :cond_2
    throw v1
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HP;
        }
    .end annotation

    .line 55445
    if-nez p3, :cond_0

    .line 55446
    const/4 v0, 0x0

    return v0

    .line 55447
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 55448
    const/4 v0, -0x1

    return v0

    .line 55449
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Tu;->A02:Ljava/io/RandomAccessFile;

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 55450
    .local p0, "bytesRead":I
    if-lez v4, :cond_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55451
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:J

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Tu;->A00:J

    .line 55452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tu;->A04:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 55453
    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A9e(Ljava/lang/Object;I)V

    .line 55454
    :cond_2
    return v4

    .line 55455
    .end local p0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 55456
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HP;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
