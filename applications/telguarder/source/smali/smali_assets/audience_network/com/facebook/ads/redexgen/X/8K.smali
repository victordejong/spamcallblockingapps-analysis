.class public final Lcom/facebook/ads/redexgen/X/8K;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8J;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/util/concurrent/locks/Lock;

.field public static final A08:Ljava/util/concurrent/locks/Lock;

.field public static final A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field public A00:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wk;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wj;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 17741
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A07()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6b

    const/16 v1, 0xe

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A03:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    const/4 v1, 0x2

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8e

    const/4 v2, 0x6

    const/4 v0, 0x7

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3c

    const/4 v2, 0x1

    const/16 v0, 0x1f

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x88

    const/4 v2, 0x6

    const/16 v0, 0x1a

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A05:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A0A:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A08:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A07:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A06:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    const/4 v1, 0x6

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A09:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A03:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A08:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A06:Ljava/lang/String;

    .line 17742
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17743
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    .line 17744
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 1

    .line 17745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 17747
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wj;-><init>(Lcom/facebook/ads/redexgen/X/8K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/Wj;

    .line 17748
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wk;-><init>(Lcom/facebook/ads/redexgen/X/8K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    .line 17749
    return-void
.end method

.method private declared-synchronized A00()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 17750
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 17751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8L;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/8L;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 17752
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 17753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A01()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    monitor-enter p0

    .line 17754
    const/4 v4, 0x0

    .line 17755
    .local p0, "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    .local v4, "attempts":I
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1

    .line 17756
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8K;->A00()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    goto :goto_1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17757
    .end local v4    # "attempts":I
    :catch_0
    move-exception v4

    .line 17758
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17759
    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17760
    :goto_1
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const-string v1, "2CKmanfZEzdweGars"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17761
    .end local v4
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 17762
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x80

    const/16 v1, 0x8

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0j:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 17763
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 17764
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17765
    .end local p0    # "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wl;
    .locals 0

    .line 17766
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wk;
    .locals 0

    .line 17767
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wj;
    .locals 0

    .line 17768
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/Wj;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8K;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 17769
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x94

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x52t
        -0x35t
        -0x52t
        0x6dt
        -0x75t
        0x6dt
        -0x74t
        0x55t
        0x76t
        -0x78t
        0x78t
        -0x66t
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        -0x66t
        0x7ft
        -0x57t
        -0x52t
        -0x58t
        -0x53t
        0x7ft
        0x5et
        -0x76t
        -0x79t
        -0x75t
        -0x79t
        -0x6et
        0x5et
        -0x5dt
        -0x2et
        -0x2ft
        -0x5dt
        0x57t
        -0x7at
        -0x77t
        0x7bt
        0x7ct
        -0x77t
        0x57t
        0x79t
        -0x70t
        0x57t
        0x55t
        -0x78t
        0x7at
        -0x77t
        0x55t
        -0x73t
        -0x3ct
        -0x4bt
        -0x4et
        -0x41t
        -0x4et
        -0x73t
        0x6et
        0x74t
        -0x52t
        -0x5et
        0x5et
        0x6et
        -0x65t
        -0x63t
        -0x37t
        -0x19t
        -0xct
        -0xct
        -0xbt
        -0x6t
        -0x5at
        -0x17t
        -0x19t
        -0xet
        -0xet
        -0x5at
        -0x13t
        -0x15t
        -0x6t
        -0x36t
        -0x19t
        -0x6t
        -0x19t
        -0x18t
        -0x19t
        -0x7t
        -0x15t
        -0x5at
        -0x14t
        -0x8t
        -0xbt
        -0xdt
        -0x5at
        -0x6t
        -0x12t
        -0x15t
        -0x5at
        -0x25t
        -0x31t
        -0x5at
        -0x6t
        -0x12t
        -0x8t
        -0x15t
        -0x19t
        -0x16t
        -0x59t
        -0x70t
        -0x7et
        -0x77t
        -0x7et
        -0x80t
        -0x6ft
        0x5dt
        -0x4ft
        -0x54t
        -0x58t
        -0x5et
        -0x55t
        -0x50t
        0x6bt
        -0x40t
        -0x45t
        -0x51t
        -0x54t
        -0x41t
        -0x50t
        -0x75t
        -0x1dt
        -0x20t
        -0xdt
        -0x20t
        -0x1ft
        -0x20t
        -0xet
        -0x1ct
        -0x70t
        -0x5ft
        -0x70t
        -0x67t
        -0x61t
        -0x62t
        -0x74t
        -0x79t
        -0x7dt
        0x7dt
        -0x7at
        -0x75t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7HzbhTBWMYUcWLigsAgwmvDC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "al3yJN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UJT7S0rewwHlzpfFQhMbmP9gFFmq3IWe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YJATRRUONsGGNbY8dtmcwn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vEWyvKD4MKfxr0kzZh91MN6HU1A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ORhyLQfKGOvznUR5kdvwYmJ7hUsDxcJH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "69aap"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d03fzyrjDMQtoxzp9Y42A7snCt3NHLo1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09(I)I
    .locals 6

    .line 17770
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17771
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v1, 0x4

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    .line 17772
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 17773
    invoke-virtual {v5, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17774
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17775
    return v1

    .line 17776
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17777
    throw v1
.end method

.method public final A0A()Landroid/database/Cursor;
    .locals 2

    .line 17778
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17779
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wk;->A0B()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17780
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17781
    return-object v1

    .line 17782
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17783
    throw v1
.end method

.method public final A0B()Landroid/database/Cursor;
    .locals 2

    .line 17784
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17785
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wk;->A0C()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17786
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17787
    return-object v1

    .line 17788
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17789
    throw v1
.end method

.method public final A0C()Landroid/database/Cursor;
    .locals 2

    .line 17790
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17791
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/Wj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wj;->A0B()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17792
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17793
    return-object v1

    .line 17794
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17795
    throw v1
.end method

.method public final A0D(I)Landroid/database/Cursor;
    .locals 5

    .line 17796
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17797
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A06:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17798
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17799
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17800
    return-object v1

    .line 17801
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17802
    throw v1
.end method

.method public final A0E(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 17803
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17804
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wk;->A0D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17805
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17806
    return-object v1

    .line 17807
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17808
    throw v1
.end method

.method public final A0F()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 17809
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 17810
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8K;->A01()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 17811
    :cond_0
    const/16 v2, 0x40

    const/16 v1, 0x2b

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/8N;Lcom/facebook/ads/redexgen/X/9H;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/8N<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/9H<",
            "TT;>;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 17812
    .local v0, "query":Lcom/facebook/ads/redexgen/X/8N;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    .local v1, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<TT;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lo;->A07:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8J;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8J;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8N;Lcom/facebook/ads/redexgen/X/9H;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ll;->A00(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0H(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/9H;)Landroid/os/AsyncTask;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/9H<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 17813
    .local v10, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/Dj;

    move-object v2, p0

    move-object/from16 v11, p9

    move-object/from16 v10, p8

    move-wide/from16 v6, p4

    move-object v3, p3

    move v5, p2

    move-wide/from16 v8, p6

    move-object v4, p1

    invoke-direct/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(Lcom/facebook/ads/redexgen/X/8K;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A0G(Lcom/facebook/ads/redexgen/X/8N;Lcom/facebook/ads/redexgen/X/9H;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()V
    .locals 2

    .line 17814
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17815
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8O;->A08()Z

    .line 17816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/Wj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8O;->A08()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17817
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17818
    return-void

    .line 17819
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17820
    throw v1
.end method

.method public final A0J()V
    .locals 2

    .line 17821
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17822
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/Wj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wj;->A0D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17823
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17824
    return-void

    .line 17825
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17826
    throw v1
.end method

.method public final declared-synchronized A0K()V
    .locals 2

    monitor-enter p0

    .line 17827
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8K;->A0N()[Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .end local v0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17828
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_1

    .line 17829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 17830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17831
    :cond_1
    monitor-exit p0

    return-void

    .line 17832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0L(Ljava/lang/String;)Z
    .locals 2

    .line 17833
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17834
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wk;->A0F(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17835
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17836
    return v1

    .line 17837
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17838
    throw v1
.end method

.method public final A0M(Ljava/lang/String;)Z
    .locals 5

    .line 17839
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17840
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17841
    .local p0, "queryBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x79

    const/4 v1, 0x7

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17842
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17843
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17844
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 17845
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17846
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 17847
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17848
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    const/4 v1, 0x7

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17849
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 17850
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17851
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17852
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17853
    .end local p0    # "queryBuilder":Ljava/lang/StringBuilder;
    .local p0, "ignored":Landroid/database/sqlite/SQLiteException;
    :catch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 17854
    :goto_0
    const/4 v1, 0x1

    .line 17855
    .local p0, "updateResult":Z
    .local p0, "updateResult":Z
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17856
    return v1
.end method

.method public final A0N()[Lcom/facebook/ads/redexgen/X/8O;
    .locals 3

    .line 17857
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8O;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/Wj;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/Wk;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method
