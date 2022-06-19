.class public final Lcom/facebook/ads/redexgen/X/Hz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hy;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/io/File;

.field public final A01:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hz;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hz;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .line 37279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    .line 37281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    .line 37282
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hz;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 37283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 37286
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x5d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hz;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        0x36t
        0x31t
        -0x1et
        0x24t
        0x23t
        0x25t
        0x2dt
        0x37t
        0x32t
        -0x1et
        0x28t
        0x2bt
        0x2et
        0x27t
        -0x1et
        -0x20t
        0x14t
        0x13t
        0x1dt
        0x13t
        0x46t
        0x41t
        0x3ft
        0x3bt
        0x35t
        0x18t
        0x3bt
        0x3et
        0x37t
        -0x5et
        -0x32t
        -0x2ct
        -0x35t
        -0x3dt
        -0x33t
        -0x7at
        -0x2dt
        0x7ft
        -0x3et
        -0x2ft
        -0x3ct
        -0x40t
        -0x2dt
        -0x3ct
        0x7ft
        -0x34t
        -0x8t
        -0x2t
        -0xbt
        -0x13t
        -0x9t
        -0x50t
        -0x3t
        -0x57t
        -0x14t
        -0x5t
        -0x12t
        -0x16t
        -0x3t
        -0x12t
        -0x57t
        -0x13t
        -0xet
        -0x5t
        -0x12t
        -0x14t
        -0x3t
        -0x8t
        -0x5t
        0x2t
        -0x57t
        -0x32t
        -0x6t
        0x0t
        -0x9t
        -0x11t
        -0x7t
        -0x4et
        -0x1t
        -0x55t
        -0x3t
        -0x10t
        -0x7t
        -0x14t
        -0x8t
        -0x10t
        -0x55t
        -0xft
        -0xct
        -0x9t
        -0x10t
        -0x55t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ccb84VQHZ1cx6cRTJ2hyyhtUgho6FzTw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cPUI6tFTIIRUZCjqs7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PSfO3Tm6ZOtTdpp4Ea6Cgbmk2V6wT932"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YWHNcqwT6jhCHrScVuFMwf5rfP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q923O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7YwWocmSG2q5hqam05mbK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GnCKGrEeGFvAypnJnsHRz2cQIgJiQYLO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LaQrgEDoADiMjA8wFeiTClDIlHNgipee"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hz;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 37287
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hz;->A01()V

    .line 37288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final A05()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37291
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x15

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37293
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37294
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hy;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hy;-><init>(Ljava/io/File;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37295
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hz;
    :catch_0
    move-exception v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hz;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_3

    .line 37296
    .local p0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hz;->A03:[Ljava/lang/String;

    const-string v1, "q5QLY5PYZ3FernICgWUOZIOJ0cXQOoN2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "AbvzvtDsZ6Lsrz01JTpUxtc0yiRIqfVF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 37297
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37298
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hy;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hy;-><init>(Ljava/io/File;)V

    .line 37299
    .end local v0    # "parent":Ljava/io/File;
    .end local v0
    .local p0, "str":Ljava/io/OutputStream;
    :goto_1
    return-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37300
    .local p0, "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "parent":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 37301
    .local v0, "e2":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    const/16 v1, 0x10

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 37302
    .end local v0    # "e2":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A06()V
    .locals 1

    .line 37303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37305
    return-void
.end method

.method public final A07(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37306
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 37307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hz;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37308
    return-void
.end method
