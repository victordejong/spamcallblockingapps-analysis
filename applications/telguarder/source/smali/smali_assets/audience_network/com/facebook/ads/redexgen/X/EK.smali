.class public final Lcom/facebook/ads/redexgen/X/EK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hz;

.field public final A01:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EK;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EK;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 29386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29387
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Ljava/io/File;

    .line 29388
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hz;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Hz;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/Hz;

    .line 29389
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/EK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/EK;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/EK;->A03:[Ljava/lang/String;

    const-string v1, "eZF7wNVN6509LMv7swnJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/EK;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0xct
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
        0x0t
        0x2t
        0x13t
        0x8t
        0xet
        0xdt
        -0x41t
        0x5t
        0x8t
        0xbt
        0x4t
        -0x41t
        0x15t
        0x4t
        0x11t
        0x12t
        0x8t
        0xet
        0xdt
        -0x27t
        -0x41t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mX7A8rZ44TrvSqzYwZbS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gqpjf5TlJDlajfaC348LnCHZUZplaoLs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4FirmSQYU86tjLpzGXAON9RXuGHN0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sxxCUyi5MghsVZAGJTeYumuZ2Xgv64ws"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9i1SqsM9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yVHh5k9k"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1H5Pyh9zULXhSlS8XI24Lzpaokav2Jvc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5t"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EK;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final varargs A03([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29390
    const/4 v3, 0x0

    .line 29391
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A05()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 29392
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29393
    array-length v0, p1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29394
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 29395
    .local v0, "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    invoke-static {v0, v3}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V

    .line 29396
    .end local v0    # "action":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29397
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hz;->A07(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29398
    const/4 v0, 0x0

    .line 29399
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 29400
    return-void

    .line 29401
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 29402
    throw v0
.end method

.method public final varargs A04([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;)[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29404
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    return-object v0

    .line 29405
    :cond_0
    const/4 v5, 0x0

    .line 29406
    .local p0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A04()Ljava/io/InputStream;

    move-result-object v5

    .line 29407
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29408
    .local p1, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 29409
    .local v0, "version":I
    if-gtz v4, :cond_2

    .line 29410
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 29411
    .local v0, "actionCount":I
    new-array v2, v3, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 29412
    .local v0, "actions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 29413
    invoke-static {p1, v6}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A00([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v0

    aput-object v0, v2, v1

    .line 29414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29415
    .end local v0    # "i":I
    :cond_1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 29416
    return-object v2

    .line 29417
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local v5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29418
    .end local p1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v0
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local v5
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 29419
    throw v0
.end method
