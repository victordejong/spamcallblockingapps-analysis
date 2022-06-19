.class public final Lcom/facebook/ads/redexgen/X/cT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0G;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/io/File;

.field public A01:Ljava/io/RandomAccessFile;

.field public final A02:Lcom/facebook/ads/redexgen/X/0B;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cT;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cT;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0B;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cR;
        }
    .end annotation

    .line 71810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71811
    if-eqz p2, :cond_2

    .line 71812
    :try_start_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cT;->A02:Lcom/facebook/ads/redexgen/X/0B;

    .line 71813
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 71814
    .local p0, "directory":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0E;->A07(Ljava/io/File;)V

    .line 71815
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    .line 71816
    .local p1, "completed":Z
    if-eqz v5, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    const/16 v1, 0x9

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    .line 71817
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    if-eqz v5, :cond_1

    const/16 v2, 0x100

    const/4 v1, 0x1

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    goto :goto_2

    :cond_1
    const/16 v2, 0x101

    const/4 v1, 0x2

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 71818
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "completed":Z
    :goto_2
    return-void

    .line 71819
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .end local v3
    .end local v0
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71820
    :catch_0
    move-exception v4

    .line 71821
    .local p0, "e":Ljava/io/IOException;
    .restart local v3
    .restart local v0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xba

    const/16 v1, 0x11

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cT;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x41

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

    const/16 v0, 0x103

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cT;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x19t
        -0x7t
        -0x5at
        -0x16t
        -0x11t
        -0x7t
        -0x17t
        -0x5at
        -0x17t
        -0x19t
        -0x17t
        -0x12t
        -0x15t
        -0x70t
        -0x2at
        -0x21t
        -0x1et
        -0x70t
        -0x2dt
        -0x21t
        -0x23t
        -0x20t
        -0x24t
        -0x2bt
        -0x1ct
        -0x27t
        -0x21t
        -0x22t
        -0x6ft
        -0x21t
        0x28t
        0x32t
        -0x21t
        0x22t
        0x2et
        0x2ct
        0x2ft
        0x2bt
        0x24t
        0x33t
        0x24t
        0x23t
        -0x20t
        -0x2ct
        0x28t
        0x23t
        -0x2ct
        -0x32t
        0x4t
        0xft
        0x17t
        0xet
        0xct
        0xft
        0x1t
        0x4t
        -0x3et
        -0x20t
        -0x13t
        -0x5at
        -0xdt
        -0x61t
        -0x1et
        -0x15t
        -0x1ct
        -0x20t
        -0x13t
        -0x61t
        -0x1bt
        -0x18t
        -0x15t
        -0x1ct
        -0x33t
        -0x6t
        -0x6t
        -0x9t
        -0x6t
        -0x58t
        -0x17t
        -0x8t
        -0x8t
        -0x13t
        -0xat
        -0x14t
        -0x58t
        -0x15t
        -0x17t
        -0x15t
        -0x10t
        -0x13t
        -0x3et
        -0x58t
        -0x15t
        -0x17t
        -0x15t
        -0x10t
        -0x13t
        -0x58t
        -0x12t
        -0xft
        -0xct
        -0x13t
        -0x58t
        -0x1dt
        0x10t
        0x10t
        0xdt
        0x10t
        -0x42t
        0x1t
        0xat
        0xdt
        0x11t
        0x7t
        0xct
        0x5t
        -0x42t
        0x4t
        0x7t
        0xat
        0x3t
        -0x42t
        -0x48t
        -0x1bt
        -0x1bt
        -0x1et
        -0x1bt
        -0x6dt
        -0x1et
        -0x1dt
        -0x28t
        -0x1ft
        -0x24t
        -0x1ft
        -0x26t
        -0x6dt
        -0x2ct
        0x1t
        0x1t
        -0x2t
        0x1t
        -0x51t
        0x1t
        -0xct
        -0x10t
        -0xdt
        -0x8t
        -0x3t
        -0xat
        -0x51t
        -0x5t
        -0xct
        -0x3t
        -0xat
        0x3t
        -0x9t
        -0x51t
        -0x2t
        -0xbt
        -0x51t
        -0xbt
        -0x8t
        -0x5t
        -0xct
        -0x51t
        -0x77t
        -0x4at
        -0x4at
        -0x4dt
        -0x4at
        0x64t
        -0x4at
        -0x57t
        -0x4et
        -0x5bt
        -0x4ft
        -0x53t
        -0x4et
        -0x55t
        0x64t
        -0x56t
        -0x53t
        -0x50t
        -0x57t
        0x64t
        -0x44t
        -0x17t
        -0x17t
        -0x1at
        -0x17t
        -0x69t
        -0x14t
        -0x16t
        -0x20t
        -0x1bt
        -0x22t
        -0x69t
        -0x23t
        -0x20t
        -0x1dt
        -0x24t
        -0x69t
        -0x32t
        -0x5t
        -0x5t
        -0x8t
        -0x5t
        -0x57t
        0x0t
        -0x5t
        -0xet
        -0x3t
        -0xet
        -0x9t
        -0x10t
        -0x57t
        -0x52t
        -0x13t
        -0x57t
        -0x15t
        0x2t
        -0x3t
        -0x12t
        -0x4t
        -0x57t
        -0x3t
        -0x8t
        -0x57t
        -0x52t
        -0x4t
        -0x57t
        -0x11t
        -0x5t
        -0x8t
        -0xat
        -0x57t
        -0x15t
        -0x2t
        -0x11t
        -0x11t
        -0x12t
        -0x5t
        -0x57t
        0x0t
        -0xet
        -0x3t
        -0xft
        -0x57t
        -0x4t
        -0xet
        0x3t
        -0x12t
        -0x57t
        -0x52t
        -0x13t
        -0x10t
        -0xbt
        -0x6t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HOHizFtY5XTdm8dGES5cnY9FChI3DvrJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2VS5hbtd3yyN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Tl09muA6onkZZyyzRV4pKSOXrhws0k0O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CRSIKlwAShhnlED5wNuucSqurRicbb06"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uxkUmYRTIAGKKyHAkynujQeTvNIqIHqa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oYyDnpOVqUgyfdtFSjK0Vv8egKCpHIfa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ISUweqsQftwc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cT;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A03(Ljava/io/File;)Z
    .locals 4

    .line 71822
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x30

    const/16 v1, 0x9

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized A04()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cR;
        }
    .end annotation

    monitor-enter p0

    .line 71823
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v1

    monitor-exit p0

    return v0

    .line 71824
    :catch_0
    move-exception v4

    .line 71825
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x89

    const/16 v1, 0x1d

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71826
    .end local v0
    :catchall_0
    move-exception v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/cT;
    monitor-exit p0

    throw v0
.end method

.method public final A05()Ljava/io/File;
    .locals 1

    .line 71827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized A06()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cR;
        }
    .end annotation

    monitor-enter p0

    .line 71828
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71829
    monitor-exit p0

    return-void

    .line 71830
    :catch_0
    move-exception v3

    .line 71831
    :try_start_1
    const/16 v2, 0x39

    const/16 v1, 0x10

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71832
    .end local v3
    :catchall_0
    move-exception v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/cT;
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A07()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cR;
        }
    .end annotation

    monitor-enter p0

    .line 71833
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 71834
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cT;->A02:Lcom/facebook/ads/redexgen/X/0B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0B;->AEN(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71835
    monitor-exit p0

    return-void

    .line 71836
    :catch_0
    move-exception v4

    .line 71837
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x68

    const/16 v1, 0x13

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71838
    .end local v4
    :catchall_0
    move-exception v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/cT;
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cR;
        }
    .end annotation

    monitor-enter p0

    .line 71839
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cT;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71840
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/cT;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/cT;->A04:[Ljava/lang/String;

    const-string v1, "NpdWqKvUuVPq03Nf68vxYP4KWiAle0I6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71841
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cT;->A07()V

    .line 71842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x30

    const/16 v1, 0x9

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71843
    .local p0, "fileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71844
    .local v0, "completedFile":Ljava/io/File;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 71845
    .local v2, "renamed":Z
    if-eqz v0, :cond_2

    .line 71846
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71847
    :try_start_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    const/16 v2, 0x100

    const/4 v1, 0x1

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71848
    monitor-exit p0

    return-void

    .line 71849
    .end local v0    # "completedFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 71850
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7b

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 71851
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa6

    const/16 v1, 0x14

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0x10

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71852
    .end local p0    # "fileName":Ljava/lang/String;
    .end local v0
    .end local v2    # "renamed":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/cR;
        }
    .end annotation

    monitor-enter p0

    .line 71853
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cT;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71854
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cT;->A04()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 71855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, v6, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71856
    monitor-exit p0

    return-void

    .line 71857
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x49

    const/16 v1, 0x1f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    const/16 v1, 0xe

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;)V

    .end local p1    # null:[B
    .end local v0
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71858
    .restart local p1    # null:[B
    .restart local v0
    :catch_0
    move-exception v5

    .line 71859
    .local p1, "e":Ljava/io/IOException;
    :try_start_2
    const/16 v2, 0xcb

    const/16 v1, 0x35

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 71860
    .local p2, "format":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    .line 71861
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Ljava/io/RandomAccessFile;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71862
    :catchall_0
    move-exception v0

    .end local p1    # "e":Ljava/io/IOException;
    .end local p2    # "format":Ljava/lang/String;
    .end local p1
    .end local v0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A()Z
    .locals 1

    monitor-enter p0

    .line 71863
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/cT;->A03(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
