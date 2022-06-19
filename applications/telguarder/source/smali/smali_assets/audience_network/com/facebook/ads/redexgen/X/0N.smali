.class public final Lcom/facebook/ads/redexgen/X/0N;
.super Ljava/io/BufferedInputStream;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0N;->A00()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1887
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1888
    const v0, 0x7fffffff

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    .line 1889
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yEbyHje8NcUxSO9Vq0KCjHXZXQexIrx8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YDpf0JUXXv3vM7KYNqlKfCs4JIrQ9MgF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YsWjcpRBLEj4Ul19eLlIoi2JTVU6PmF7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RrIU59JghBJEpeymJLqkoB6uIS3R1kvl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KslpVvwdI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eBV46u0KGpW8gKNBF9SaAmjhVwB3niU2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QySyK0NFyvlSgnCLWPpjCoJkkP0WQU4e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0N;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()Z
    .locals 1

    .line 1890
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A02:Z

    return v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 1891
    :try_start_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    .line 1892
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    monitor-exit p0

    return-void

    .line 1894
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/0N;
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1895
    iget v3, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    add-int/lit8 v2, v3, 0x1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    const/4 v0, 0x1

    if-le v2, v1, :cond_0

    .line 1896
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A02:Z

    .line 1897
    const/4 v0, -0x1

    return v0

    .line 1898
    :cond_0
    add-int/2addr v3, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/0N;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 1899
    sget-object v2, Lcom/facebook/ads/redexgen/X/0N;->A03:[Ljava/lang/String;

    const-string v1, "Q3BDu8k6tWq8iYS9U8U"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1900
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    array-length v0, p1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    if-le v1, v0, :cond_0

    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A02:Z

    .line 1902
    const/4 v0, -0x1

    return v0

    .line 1903
    :cond_0
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1904
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    add-int/2addr v1, p3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    if-le v1, v0, :cond_0

    .line 1905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A02:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1907
    .end local p2    # null:I
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .line 1908
    .local p0, "read":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1909
    monitor-exit p0

    return v1

    .line 1910
    .end local p0    # "read":I
    .end local p3    # null:I
    .end local v1
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1911
    const v0, 0x7fffffff

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    .line 1912
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    monitor-exit p0

    return-void

    .line 1914
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1915
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A00:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 1916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A02:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    .line 1918
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/0N;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0N;->A01:I

    .line 1919
    invoke-super {p0, p1, p2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 1920
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
