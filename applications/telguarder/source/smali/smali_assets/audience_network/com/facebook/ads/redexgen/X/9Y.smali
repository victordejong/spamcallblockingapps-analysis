.class public final Lcom/facebook/ads/redexgen/X/9Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9X;
    }
.end annotation


# static fields
.field public static A03:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9X;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public final A02:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19930
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9Y;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9Y;->A02()V

    const/16 v0, 0x3e8

    sput v0, Lcom/facebook/ads/redexgen/X/9Y;->A03:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19932
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:Ljava/io/File;

    .line 19933
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19934
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9X;->A03(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    .line 19935
    :goto_0
    return-void

    .line 19936
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 19937
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19938
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/16 v2, 0x19

    const/16 v1, 0x20

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/9X;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19939
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A01:Z

    if-nez v0, :cond_1

    .line 19940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    if-nez v0, :cond_0

    .line 19941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9X;->A04(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    .line 19942
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    return-object v0

    .line 19943
    :cond_1
    const/16 v2, 0x56

    const/16 v1, 0x1c

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A04:[B

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

.method public static A02()V
    .locals 4

    const/16 v0, 0x72

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const-string v1, "hp8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "JPe8szfYYKMd1bH3O09b0bU9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/9Y;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x1dt
        -0x2t
        0x6t
        0x9t
        0x2t
        0x1t
        -0x43t
        0x11t
        0xct
        -0x43t
        0x1t
        0x2t
        0x9t
        0x2t
        0x11t
        0x2t
        -0x43t
        0x3t
        0x6t
        0x9t
        0x2t
        -0x43t
        -0x3ct
        -0x3et
        0x10t
        -0x77t
        -0x54t
        -0x51t
        -0x58t
        0x63t
        0x6at
        0x68t
        -0x4at
        0x6at
        0x63t
        -0x54t
        -0x4at
        0x63t
        -0x4ft
        -0x4et
        -0x49t
        0x63t
        -0x5ct
        0x63t
        -0x4bt
        -0x58t
        -0x5ct
        -0x59t
        -0x5ct
        -0x5bt
        -0x51t
        -0x58t
        0x63t
        -0x57t
        -0x54t
        -0x51t
        -0x58t
        -0x61t
        -0x3ct
        -0x34t
        -0x49t
        -0x3et
        -0x41t
        -0x46t
        0x76t
        -0x44t
        -0x45t
        -0x36t
        -0x47t
        -0x42t
        0x76t
        -0x37t
        -0x36t
        -0x49t
        -0x38t
        -0x36t
        0x76t
        -0x41t
        -0x3ct
        -0x46t
        -0x45t
        -0x32t
        -0x70t
        0x76t
        0x7bt
        -0x46t
        -0x4bt
        -0x38t
        -0x3at
        -0x2et
        -0x2bt
        -0x39t
        -0x7dt
        -0x37t
        -0x34t
        -0x31t
        -0x38t
        -0x7dt
        -0x3ct
        -0x31t
        -0x2bt
        -0x38t
        -0x3ct
        -0x39t
        -0x24t
        -0x7dt
        -0x39t
        -0x34t
        -0x2at
        -0x2dt
        -0x2et
        -0x2at
        -0x38t
        -0x39t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "60vC7Tqxq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iit"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yZ8WhL2SKbyHWFuqrbqyqX6q9YBqbSbq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zou4kHpYoYqOWULjtQgwmQsgY48o5sQE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Jj1CAbkpCkmlTw2dBaB6fKsG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LIdASrcH6z6LtpFKNKqsX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9qyYxkloNYGFw4rMCbrwSMHZV85hWfZp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eAI5s54jDPvvLg6GHfi1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A04(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A03:[J

    aput-wide p2, v0, p1

    .line 19945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9X;->A02(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 19947
    return-void
.end method

.method private A05(J[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 19950
    return-void
.end method


# virtual methods
.method public final declared-synchronized A06()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 19951
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9Y;->A00()Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v0

    .line 19952
    .local p0, "fileData":Lcom/facebook/ads/redexgen/X/9X;
    iget v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 19953
    .end local p0    # "fileData":Lcom/facebook/ads/redexgen/X/9X;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A07(I[BI[II)Lcom/facebook/ads/redexgen/X/9P;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 19954
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/9Y;->A00()Lcom/facebook/ads/redexgen/X/9X;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 19955
    .local v10, "fileData":Lcom/facebook/ads/redexgen/X/9X;
    const/16 v16, 0x0

    const/4 v12, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const-string v1, "qQrdddBjSxi8BpgQo6vr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Y3lHUNECNlvHC8ZJ03L5W6JrV9pfCeHs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move/from16 v5, p1

    if-ltz v5, :cond_9

    .line 19956
    move v8, v5

    .line 19957
    .local v11, "lastIdx":I
    const/4 v7, 0x0

    .line 19958
    .local v6, "fetchBytes":I
    const-wide/16 v1, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x9

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 19959
    .local v10, "startOffset":J
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const-string v3, "QVNRgd4ye"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    .line 19960
    .local v16, "hasMoreToFetch":Z
    :goto_0
    :try_start_1
    iget v0, v9, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    move/from16 v6, p3

    move-object/from16 v11, p2

    if-lt v8, v0, :cond_1

    goto :goto_4

    .line 19961
    :cond_1
    sub-int v3, v8, v5

    add-int v3, v3, p5

    move-object/from16 v10, p4

    array-length v0, v10

    if-lt v3, v0, :cond_2

    goto :goto_3

    .line 19962
    :cond_2
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/9X;->A03:[J

    aget-wide v14, v0, v8

    .line 19963
    .local v12, "offset":J
    iget v0, v9, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    sub-int/2addr v0, v12

    if-ne v8, v0, :cond_3

    .line 19964
    iget-wide v3, v9, Lcom/facebook/ads/redexgen/X/9X;->A01:J

    goto :goto_1

    .line 19965
    .end local v0
    :cond_3
    iget-object v3, v9, Lcom/facebook/ads/redexgen/X/9X;->A03:[J

    add-int/lit8 v0, v8, 0x1

    aget-wide v3, v3, v0

    .line 19966
    .local v0, "end":J
    :goto_1
    sub-long/2addr v3, v14

    .line 19967
    .local p5, "recordBytes":J
    const-wide/16 v12, -0x1

    cmp-long v0, v1, v12

    if-nez v0, :cond_4

    .line 19968
    move-wide v1, v14

    .line 19969
    .end local v10    # "startOffset":J
    .local v0, "startOffset":J
    :cond_4
    long-to-int v12, v3

    add-int/2addr v12, v7

    add-int/2addr v12, v6

    array-length v0, v11

    if-le v12, v0, :cond_5

    goto :goto_2

    .line 19970
    .end local v10
    .restart local p5    # "recordBytes":J
    .restart local v12    # "offset":J
    .restart local v0    # "startOffset":J
    .restart local v0    # "startOffset":J
    :cond_5
    long-to-int v0, v3

    add-int/2addr v7, v0

    .line 19971
    sub-int v6, v8, v5

    add-int v6, v6, p5

    long-to-int v0, v3

    aput v0, v10, v6

    .line 19972
    .end local p5    # "recordBytes":J
    .end local v12    # "offset":J
    .end local v0    # "startOffset":J
    add-int/lit8 v8, v8, 0x1

    .line 19973
    const/4 v12, 0x1

    goto :goto_0

    .line 19974
    :goto_2
    const/16 v16, 0x1

    .line 19975
    goto :goto_4

    .line 19976
    :goto_3
    const/16 v16, 0x1

    .line 19977
    .end local p5
    .end local v12
    .end local v0
    .end local v0
    .restart local v10    # "startOffset":J
    :goto_4
    if-le v8, v5, :cond_6

    .line 19978
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19979
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v11, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 19980
    sget-object v1, Lcom/facebook/ads/redexgen/X/9O;->A03:Lcom/facebook/ads/redexgen/X/9O;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9P;

    invoke-direct {v0, v1, v5, v8, v7}, Lcom/facebook/ads/redexgen/X/9P;-><init>(Lcom/facebook/ads/redexgen/X/9O;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 19981
    :cond_6
    if-eqz v16, :cond_7

    .line 19982
    :try_start_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/9O;->A04:Lcom/facebook/ads/redexgen/X/9O;

    goto :goto_5

    .line 19983
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/9O;

    :goto_5
    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/9P;

    invoke-direct {v3, v1, v5, v5, v0}, Lcom/facebook/ads/redexgen/X/9P;-><init>(Lcom/facebook/ads/redexgen/X/9O;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19984
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const-string v1, "f2O6qWUkmvIMBhlebH2hsOk9644"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 19985
    :cond_9
    :try_start_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x39

    const/16 v1, 0x1d

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 19986
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19987
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19988
    .end local v10    # "startOffset":J
    .end local v2
    .end local v1
    .end local v0
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 19989
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A01:Z

    .line 19990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19991
    monitor-exit p0

    return-void

    .line 19992
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    .line 19993
    .local p0, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Lcom/facebook/ads/redexgen/X/9X;

    .line 19994
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19995
    monitor-exit p0

    return-void

    .line 19996
    .end local p0    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 19997
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A01:Z

    if-nez v0, :cond_1

    .line 19998
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Y;->A08()V

    .line 19999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20000
    monitor-exit p0

    return-void

    .line 20001
    :cond_0
    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:Ljava/io/File;

    .line 20002
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20003
    :cond_1
    const/16 v2, 0x56

    const/16 v1, 0x1c

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20004
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20005
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9Y;->A00()Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v5

    .line 20006
    .local p0, "fileData":Lcom/facebook/ads/redexgen/X/9X;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Y;->A06()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9Y;->A03:I

    if-ne v1, v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20007
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:[Ljava/lang/String;

    const-string v1, "gpOkcAkQi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    monitor-exit p0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20008
    :cond_1
    :try_start_1
    iget v2, v5, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/9X;->A01:J

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;->A04(IJ)V

    .line 20009
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/9X;->A01:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/9Y;->A05(J[B)V

    .line 20010
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9X;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 20011
    iget v0, v5, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v5, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    .line 20012
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/9X;->A01:J

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/9X;->A01:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20013
    monitor-exit p0

    return v4

    .line 20014
    .end local p0    # "fileData":Lcom/facebook/ads/redexgen/X/9X;
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
