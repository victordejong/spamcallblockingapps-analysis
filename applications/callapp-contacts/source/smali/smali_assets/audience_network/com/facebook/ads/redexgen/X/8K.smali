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

.field public final A01:Lcom/facebook/ads/redexgen/X/XK;

.field public final A02:Lcom/facebook/ads/redexgen/X/XP;

.field public final A03:Lcom/facebook/ads/redexgen/X/XR;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 17627
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A07()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6b

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XR;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8e

    const/4 v2, 0x6

    const/16 v0, 0x10

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3c

    const/4 v2, 0x1

    const/16 v0, 0x6a

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XR;->A01:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x88

    const/4 v2, 0x6

    const/16 v0, 0x6f

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A04:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A05:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A0A:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A08:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A07:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A06:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A09:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XR;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A08:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A06:Ljava/lang/String;

    .line 17628
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17629
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    .line 17630
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 1

    .line 17631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/XK;

    .line 17633
    new-instance v0, Lcom/facebook/ads/redexgen/X/XR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XR;-><init>(Lcom/facebook/ads/redexgen/X/8K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/XR;

    .line 17634
    new-instance v0, Lcom/facebook/ads/redexgen/X/XP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XP;-><init>(Lcom/facebook/ads/redexgen/X/8K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    .line 17635
    return-void
.end method

.method private declared-synchronized A00()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 17636
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 17637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/XK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8L;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/8L;-><init>(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 17638
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 17639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A01()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    monitor-enter p0

    .line 17640
    const/4 v4, 0x0

    .line 17641
    .local p0, "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    .local v4, "attempts":I
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_0

    .line 17642
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8K;->A00()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17643
    .end local v4    # "attempts":I
    :catch_0
    move-exception v4

    .line 17644
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17645
    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17646
    :goto_1
    monitor-exit p0

    return-object v0

    .line 17647
    .end local v4
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/XK;

    .line 17648
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x80

    const/16 v1, 0x8

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0j:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 17649
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 17650
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17651
    .end local p0    # "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XK;
    .locals 0

    .line 17652
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/XK;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XP;
    .locals 0

    .line 17653
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XR;
    .locals 0

    .line 17654
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/XR;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8K;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const-string v1, "6YOEgEHO6bjbd5au9bSAefu6W5tI3Dak"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "kgOgsYcmlOEy6T8oxoaixHiO6WRSp1D2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 17655
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
        -0x1ft
        -0x2t
        -0x1ft
        -0x51t
        -0x33t
        -0x51t
        -0x32t
        -0xbt
        0x16t
        0x28t
        0x18t
        -0x43t
        -0x1dt
        -0x11t
        -0x14t
        -0x16t
        -0x43t
        -0x2ct
        -0x2t
        0x3t
        -0x3t
        0x2t
        -0x2ct
        -0x6ct
        -0x40t
        -0x43t
        -0x3ft
        -0x43t
        -0x38t
        -0x6ct
        -0x6at
        -0x3bt
        -0x3ct
        -0x6at
        -0x23t
        0xct
        0xft
        0x1t
        0x2t
        0xft
        -0x23t
        -0x1t
        0x16t
        -0x23t
        -0x2at
        0x9t
        -0x5t
        0xat
        -0x2at
        -0x62t
        -0x2bt
        -0x3at
        -0x3dt
        -0x30t
        -0x3dt
        -0x62t
        -0x31t
        -0x2bt
        -0x2et
        -0x3at
        0xbt
        0x3t
        -0x36t
        -0x34t
        0x16t
        0x34t
        0x41t
        0x41t
        0x42t
        0x47t
        -0xdt
        0x36t
        0x34t
        0x3ft
        0x3ft
        -0xdt
        0x3at
        0x38t
        0x47t
        0x17t
        0x34t
        0x47t
        0x34t
        0x35t
        0x34t
        0x46t
        0x38t
        -0xdt
        0x39t
        0x45t
        0x42t
        0x40t
        -0xdt
        0x47t
        0x3bt
        0x38t
        -0xdt
        0x28t
        0x1ct
        -0xdt
        0x47t
        0x3bt
        0x45t
        0x38t
        0x34t
        0x37t
        -0xct
        0x21t
        0x13t
        0x1at
        0x13t
        0x11t
        0x22t
        -0x12t
        0x42t
        0x3dt
        0x39t
        0x33t
        0x3ct
        0x41t
        -0x4t
        0x27t
        0x22t
        0x16t
        0x13t
        0x26t
        0x17t
        -0xet
        0x2bt
        0x28t
        0x3bt
        0x28t
        0x29t
        0x28t
        0x3at
        0x2ct
        0x47t
        0x58t
        0x47t
        0x50t
        0x56t
        0x55t
        -0x9t
        -0xet
        -0x12t
        -0x18t
        -0xft
        -0xat
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qJOvsPrm5BQkhL6wLJahauzjA45r7dQz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hfx8x2hkXgxq19RSFkkqiaOe1zMy03Qo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bV5o7GaQth4ZZOPd4LFtWwXjKNVB8lua"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1EyYFmGpmEhL9EWyl0I1ptwRPtnJxpez"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "plO80lk7YnGQvaXazMopbLIwOg8MB0TR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EzLFA06L6a2SQhX4934tm7serJXXg4XA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09(I)I
    .locals 6

    .line 17656
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17657
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    .line 17658
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 17659
    invoke-virtual {v5, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17660
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17661
    return v1

    .line 17662
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17663
    throw v1
.end method

.method public final A0A()Landroid/database/Cursor;
    .locals 2

    .line 17664
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17665
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0C()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17666
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17667
    return-object v1

    .line 17668
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17669
    throw v1
.end method

.method public final A0B()Landroid/database/Cursor;
    .locals 2

    .line 17670
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17671
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0D()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17672
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17673
    return-object v1

    .line 17674
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17675
    throw v1
.end method

.method public final A0C()Landroid/database/Cursor;
    .locals 2

    .line 17676
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17677
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/XR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XR;->A0C()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17678
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17679
    return-object v1

    .line 17680
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17681
    throw v1
.end method

.method public final A0D(I)Landroid/database/Cursor;
    .locals 5

    .line 17682
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17683
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A06:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    const/4 v1, 0x7

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17684
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

    .line 17685
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17686
    return-object v1

    .line 17687
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17688
    throw v1
.end method

.method public final A0E(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 17689
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17690
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XP;->A0E(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17691
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17692
    return-object v1

    .line 17693
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17694
    throw v1
.end method

.method public final A0F()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 17695
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 17696
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8K;->A01()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 17697
    :cond_0
    const/16 v2, 0x40

    const/16 v1, 0x2b

    const/16 v0, 0x60

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

    .line 17698
    .local v0, "query":Lcom/facebook/ads/redexgen/X/8N;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    .local v1, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<TT;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lm;->A07:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A01:Lcom/facebook/ads/redexgen/X/XK;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8J;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8J;-><init>(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8N;Lcom/facebook/ads/redexgen/X/9H;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A00(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 17699
    .local v10, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/ER;

    move-object v2, p0

    move-wide/from16 v8, p6

    move-wide/from16 v6, p4

    move-object/from16 v11, p9

    move v5, p2

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/ER;-><init>(Lcom/facebook/ads/redexgen/X/8K;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A0G(Lcom/facebook/ads/redexgen/X/8N;Lcom/facebook/ads/redexgen/X/9H;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()V
    .locals 2

    .line 17700
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17701
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8O;->A0A()Z

    .line 17702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/XR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8O;->A0A()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17703
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17704
    return-void

    .line 17705
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17706
    throw v1
.end method

.method public final A0J()V
    .locals 3

    .line 17707
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17708
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/XR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XR;->A0E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17709
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    .line 17710
    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const-string v1, "1xdZaIBKHwxaXlFBCUT9GXbMegb8IQts"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17711
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17712
    throw v1
.end method

.method public final declared-synchronized A0K()V
    .locals 3

    monitor-enter p0

    .line 17713
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

    .line 17714
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_1

    .line 17715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 17716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A00:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17717
    :cond_1
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const-string v1, "1MkhueXc3ojVbbuWv64h1Z2UaaL8Cuya"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 17718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0L(Ljava/lang/String;)Z
    .locals 5

    .line 17719
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17720
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XP;->A0G(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17721
    sget-object v3, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const-string v1, "8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17722
    return v4

    .line 17723
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17724
    throw v1
.end method

.method public final A0M(Ljava/lang/String;)Z
    .locals 5

    .line 17725
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17726
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17727
    .local p0, "queryBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x79

    const/4 v1, 0x7

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17728
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17729
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17730
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 17731
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    const/4 v1, 0x1

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17732
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 17733
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17734
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    const/4 v1, 0x7

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17735
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XP;->A04:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 17736
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 17737
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17738
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

    .line 17739
    .end local p0    # "queryBuilder":Ljava/lang/StringBuilder;
    .local p0, "ignored":Landroid/database/sqlite/SQLiteException;
    :catch_0
    const/4 v3, 0x0

    goto :goto_1

    .line 17740
    :goto_0
    const/4 v3, 0x1

    .line 17741
    .local p0, "updateResult":Z
    .local p0, "updateResult":Z
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8K;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17742
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8K;->A05:[Ljava/lang/String;

    const-string v1, "LEhHmvsdsEQXOsQ0B1AVwqczGhJrofDk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3
.end method

.method public final A0N()[Lcom/facebook/ads/redexgen/X/8O;
    .locals 3

    .line 17743
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8O;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8K;->A03:Lcom/facebook/ads/redexgen/X/XR;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8K;->A02:Lcom/facebook/ads/redexgen/X/XP;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method
