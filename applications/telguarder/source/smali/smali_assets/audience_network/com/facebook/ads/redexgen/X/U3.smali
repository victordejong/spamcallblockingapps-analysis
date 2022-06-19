.class public final Lcom/facebook/ads/redexgen/X/U3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HB;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/InputStream;

.field public A03:Z

.field public final A04:Landroid/content/res/AssetManager;

.field public final A05:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/U3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U3;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U3;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Hd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/U3;",
            ">;)V"
        }
    .end annotation

    .line 55765
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/AssetDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55766
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A04:Landroid/content/res/AssetManager;

    .line 55767
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/U3;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    .line 55768
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/U3;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U3;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x6bt
        0x25t
        0x2at
        0x20t
        0x36t
        0x2bt
        0x2dt
        0x20t
        0x1bt
        0x25t
        0x37t
        0x37t
        0x21t
        0x30t
        0x6bt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NpdCu5g7hXYXL42SYUjKHuR7SucMKUf7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7WUCRiB18DgvwzEeAvZuXwSb1NZWfB6k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TLmVx4GYvaolIT6KFNxsToSgnnS1D3RO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vggIVSaFwR9y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Lls9e1VfC5wL8ZguL4wREs0TLin4Jbtk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dj8Aaz3T67sr10y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TrJ7M5SMwMtbicKMdggEZa5p22vSjy0n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2ZPScQUy20eunZ7ryqxzSDU8FABZmxH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HB;
        }
    .end annotation

    .line 55770
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A01:Landroid/net/Uri;

    .line 55771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 55772
    .local p0, "path":Ljava/lang/String;
    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    .line 55773
    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 55774
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A04:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    .line 55775
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 55776
    .local v0, "skipped":J
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_6

    .line 55777
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    goto :goto_1

    .line 55778
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55779
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55780
    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_5

    .line 55781
    sget-object v2, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const-string v1, "ku4f0qMZxwaZg52isdYogiyVziXfxoFk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "dvqbEO5ynsdo2SZ1D1MeT2f1z9KptD7B"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 55782
    :try_start_1
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    goto :goto_2

    .line 55783
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    .line 55784
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 55785
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55786
    .end local p0    # "path":Ljava/lang/String;
    .end local v0    # "skipped":J
    :cond_3
    :goto_2
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/U3;->A03:Z

    .line 55787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_4

    .line 55788
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hd;->ABs(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 55789
    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    return-wide v0

    .line 55790
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55791
    .restart local p0    # "path":Ljava/lang/String;
    .restart local v0    # "skipped":J
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .end local v3
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55792
    .end local p0    # "path":Ljava/lang/String;
    .end local v0    # "skipped":J
    .restart local v3
    :catch_0
    move-exception v1

    .line 55793
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HB;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HB;
        }
    .end annotation

    .line 55794
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U3;->A01:Landroid/net/Uri;

    .line 55795
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 55796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55797
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    .line 55798
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A03:Z

    if-eqz v0, :cond_1

    .line 55799
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/U3;->A03:Z

    .line 55800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_1

    .line 55801
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55802
    :cond_1
    return-void

    .line 55803
    :catch_0
    move-exception v1

    .line 55804
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/HB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HB;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55805
    :catchall_0
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    .line 55806
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A03:Z

    if-eqz v0, :cond_2

    .line 55807
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/U3;->A03:Z

    .line 55808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_2

    .line 55809
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 55810
    :cond_2
    throw v1
.end method

.method public final read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HB;
        }
    .end annotation

    .line 55811
    if-nez p3, :cond_0

    .line 55812
    const/4 v0, 0x0

    return v0

    .line 55813
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    const-wide/16 v5, 0x0

    sget-object v3, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0xc

    if-eq v3, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const-string v3, "nrSlG"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    const/4 v4, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 55814
    return v4

    .line 55815
    :cond_2
    const-wide/16 v7, -0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    goto :goto_0

    .line 55816
    :cond_3
    int-to-long v2, p3

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 55817
    .local p0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A02:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 55818
    .local p0, "bytesRead":I
    if-ne v5, v4, :cond_6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55819
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    cmp-long v3, v0, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const-string v1, "gS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 55820
    :goto_1
    return v4

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const-string v1, "YwrrpXcyNToZamnYQyFoLNvfZJ0DKRG1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "X3N942ZqGMv8v91zPs1oOxPgSEh4L42V"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    goto :goto_1

    .line 55821
    :cond_5
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HB;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 55822
    :cond_6
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    cmp-long v6, v2, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_9

    sget-object v4, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const-string v1, "IWVXH71xI5uG"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    if-eqz v6, :cond_7

    .line 55823
    :goto_2
    int-to-long v0, v5

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/U3;->A00:J

    .line 55824
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U3;->A05:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_8

    .line 55825
    invoke-interface {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Hd;->A9e(Ljava/lang/Object;I)V

    .line 55826
    :cond_8
    return v5

    :cond_9
    sget-object v4, Lcom/facebook/ads/redexgen/X/U3;->A07:[Ljava/lang/String;

    const-string v1, "0jzwONgHamI2XnK9S0mySsN163ncR8qC"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "CaHOZNo8Rsr9DTbgdVTptiAyPhG7EzW5"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    if-eqz v6, :cond_7

    goto :goto_2

    .line 55827
    .end local p0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 55828
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HB;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
