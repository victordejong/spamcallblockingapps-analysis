.class public final Lcom/facebook/ads/redexgen/X/4Y;
.super Lcom/facebook/ads/redexgen/X/G4;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/G1;


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4Y;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4Y;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Y;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:[Ljava/lang/String;

    const-string v1, "13y7tsy2pVZUJMb0lAzCQUQF6tOfWNVe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wRfU0g5m9SJPOO6J2MjgaWkl6aiyzs2z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

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
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4Y;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x46t
        -0x13t
        -0x1at
        -0x24t
        -0x1ct
        -0x23t
        -0x68t
        -0x1at
        -0x19t
        -0x14t
        -0x68t
        -0x16t
        -0x23t
        -0x27t
        -0x24t
        -0xft
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zSbybX5LPDKRR1qHZN1fWat7EhzL4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6J0WilsOyssTuuoODZEX7hirtUb8OYoK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Mh4B2hOKXM1iEYNDEd4SgClx6CDP4jVj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "w4Yowke58mXvKzE3iBDiaBbr66p0vbwZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dlXXvucHr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hKyImMC89S1irjfFzDU9wnZryBMuDpVU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WPntOKGAOXg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0iQQ9COO4U9pLzYj0MY2EQ2Dc6DVsWAS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A08()V
    .locals 1

    monitor-enter p0

    .line 11694
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11695
    monitor-exit p0

    return-void

    .line 11696
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/json/JSONObject;",
            ">;)Z"
        }
    .end annotation

    .local v0, "data":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    .local v0, "fingerprint":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    monitor-enter p0

    .line 11697
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G4;->A8B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11698
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11699
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G4;->A6W()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11700
    monitor-exit p0

    return v1

    .line 11701
    .end local p2    # null:Ljava/util/concurrent/atomic/AtomicReference;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G4;->A6B()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11702
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G4;->A6W()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11703
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11704
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 11705
    :cond_1
    :try_start_2
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Y;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11706
    .end local v0    # "fingerprint":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/json/JSONObject;>;"
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
