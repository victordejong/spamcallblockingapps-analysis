.class public final Lcom/facebook/ads/redexgen/X/bd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Hh;


# static fields
.field public static A06:Z

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/ba;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hp;

.field public final A04:Ljava/io/File;

.field public final A05:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Hg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 70481
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bd;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bd;->A06()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/bd;->A09:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/ba;)V
    .locals 2

    .line 70482
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/ba;[BZ)V

    .line 70483
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/ba;Lcom/facebook/ads/redexgen/X/Hp;)V
    .locals 4

    .line 70484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70485
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/bd;->A0E(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70486
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    .line 70487
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Lcom/facebook/ads/redexgen/X/ba;

    .line 70488
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    .line 70489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Ljava/util/HashMap;

    .line 70490
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 70491
    .local p0, "conditionVariable":Landroid/os/ConditionVariable;
    const/16 v2, 0x39

    const/16 v1, 0x18

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hu;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/Hu;-><init>(Lcom/facebook/ads/redexgen/X/bd;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 70492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hu;->start()V

    .line 70493
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 70494
    return-void

    .line 70495
    .end local p0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/ba;[BZ)V
    .locals 1

    .line 70496
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hp;

    invoke-direct {v0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Hp;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/ba;Lcom/facebook/ads/redexgen/X/Hp;)V

    .line 70497
    return-void
.end method

.method private A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 70498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v2

    .line 70499
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-nez v2, :cond_0

    .line 70500
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/be;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    return-object v0

    .line 70501
    :cond_0
    :goto_0
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v1

    .line 70502
    .local p1, "span":Lcom/facebook/ads/redexgen/X/be;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70503
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A05()V

    .line 70504
    goto :goto_0

    .line 70505
    :cond_1
    return-object v1
.end method

.method private final declared-synchronized A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70506
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bd;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    .line 70507
    .local p0, "span":Lcom/facebook/ads/redexgen/X/be;
    if-eqz v0, :cond_0

    goto :goto_1

    .line 70508
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70509
    :goto_1
    monitor-exit p0

    return-object v0

    .line 70510
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70511
    :try_start_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    const-string v1, "i1JHZi6uUAd1FxW2ulRZEzuIvuRnbT2M"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70512
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bd;->A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v2

    .line 70513
    .local p0, "cacheSpan":Lcom/facebook/ads/redexgen/X/be;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    if-eqz v0, :cond_1

    .line 70514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ho;->A08(Lcom/facebook/ads/redexgen/X/be;)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    .line 70515
    .local p1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/be;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0D(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/Hl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70516
    monitor-exit p0

    return-object v0

    .line 70517
    .end local p1    # "newCacheSpan":Lcom/facebook/ads/redexgen/X/be;
    .end local v4
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v1

    .line 70518
    .local p2, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70519
    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A0C(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70520
    monitor-exit p0

    return-object v2

    .line 70521
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 70522
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70523
    .end local p0    # "cacheSpan":Lcom/facebook/ads/redexgen/X/be;
    .end local p2    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v3
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x47

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 9

    .line 70524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70526
    return-void

    .line 70527
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0F()V

    .line 70528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 70529
    .local p0, "files":[Ljava/io/File;
    if-nez v8, :cond_1

    .line 70530
    return-void

    .line 70531
    :cond_1
    array-length v7, v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v5, v8, v6

    .line 70532
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/16 v1, 0x18

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70533
    .end local v0    # "file":Ljava/io/File;
    .end local v0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70534
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    .line 70535
    .local v0, "span":Lcom/facebook/ads/redexgen/X/be;
    :goto_2
    if-eqz v0, :cond_4

    .line 70536
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0B(Lcom/facebook/ads/redexgen/X/be;)V

    goto :goto_1

    .line 70537
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 70538
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 70539
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0G()V

    .line 70540
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    goto :goto_3
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Hf; {:try_start_0 .. :try_end_0} :catch_0

    .line 70541
    :catch_0
    move-exception v4

    .line 70542
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Hf;
    const/16 v2, 0x2e

    const/16 v1, 0xb

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x51

    const/16 v1, 0x19

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70543
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Hf;
    :goto_3
    return-void
.end method

.method private A05()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 70544
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70545
    .local p0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0E()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    .line 70546
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ho;->A09()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hl;

    .line 70547
    .local v3, "span":Lcom/facebook/ads/redexgen/X/Hl;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70548
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70549
    :cond_2
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 70550
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hl;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A09(Lcom/facebook/ads/redexgen/X/Hl;Z)V

    .line 70551
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70552
    .end local v4    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0G()V

    .line 70553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    .line 70554
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x82

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bd;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x45t
        0x44t
        0x5ft
        0x43t
        0x4et
        0x59t
        0xbt
        0x78t
        0x42t
        0x46t
        0x5bt
        0x47t
        0x4et
        0x68t
        0x4at
        0x48t
        0x43t
        0x4et
        0xbt
        0x42t
        0x45t
        0x58t
        0x5ft
        0x4at
        0x45t
        0x48t
        0x4et
        0xbt
        0x5et
        0x58t
        0x4et
        0x58t
        0xbt
        0x5ft
        0x43t
        0x4et
        0xbt
        0x4dt
        0x44t
        0x47t
        0x4ft
        0x4et
        0x59t
        0x11t
        0xbt
        0x52t
        0x68t
        0x6ct
        0x71t
        0x6dt
        0x64t
        0x42t
        0x60t
        0x62t
        0x69t
        0x64t
        0x5et
        0x64t
        0x60t
        0x7dt
        0x61t
        0x68t
        0x4et
        0x6ct
        0x6et
        0x65t
        0x68t
        0x23t
        0x64t
        0x63t
        0x64t
        0x79t
        0x64t
        0x6ct
        0x61t
        0x64t
        0x77t
        0x68t
        0x25t
        0x24t
        0x0t
        0x27t
        0x3ct
        0x21t
        0x3at
        0x3dt
        0x34t
        0x73t
        0x3at
        0x3dt
        0x37t
        0x36t
        0x2bt
        0x73t
        0x35t
        0x3at
        0x3ft
        0x36t
        0x73t
        0x35t
        0x32t
        0x3at
        0x3ft
        0x36t
        0x37t
        0x1ct
        0x1et
        0x1ct
        0x17t
        0x1at
        0x1bt
        0x20t
        0x1ct
        0x10t
        0x11t
        0xbt
        0x1at
        0x11t
        0xbt
        0x20t
        0x16t
        0x11t
        0x1bt
        0x1at
        0x7t
        0x51t
        0x1at
        0x7t
        0x16t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eH4syubUz2tR66H4aXOA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1d5DSBS1mhWRL66KnLBZBpyHNgki7Rvu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v9uLJ4dIwyz0Tb4FaO07wTfk2F9lBV8v"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E1Se3PKWItYNl2w7Z0lUvGDZb88eKAvD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3tvSVqejLSP4DWhBG1hRQ7meIfhtlUpf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "obkGL38LbEEikSiwJ4pDHOfB9GOmWii2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dwvV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8LO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 3

    .line 70555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 70556
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 70557
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 70558
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABg(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70559
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70560
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Lcom/facebook/ads/redexgen/X/ba;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABg(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70561
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Hl;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 70562
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v4

    .line 70563
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/Ho;->A0F(Lcom/facebook/ads/redexgen/X/Hl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70564
    :cond_0
    return-void

    .line 70565
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:J

    .line 70566
    if-eqz p2, :cond_2

    .line 70567
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0I(Ljava/lang/String;)V

    .line 70568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70569
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bd;->A08(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70570
    throw v0

    .line 70571
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bd;->A08(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70572
    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/bd;)V
    .locals 0

    .line 70573
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A04()V

    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/be;)V
    .locals 4

    .line 70574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ho;->A0A(Lcom/facebook/ads/redexgen/X/be;)V

    .line 70575
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:J

    .line 70576
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bd;->A0C(Lcom/facebook/ads/redexgen/X/be;)V

    .line 70577
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/be;)V
    .locals 3

    .line 70578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 70579
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 70580
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 70581
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABf(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70582
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70583
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Lcom/facebook/ads/redexgen/X/ba;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABf(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70584
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 3

    .line 70585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 70586
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 70587
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 70588
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hg;->ABh(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70589
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70590
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Lcom/facebook/ads/redexgen/X/ba;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hg;->ABh(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70591
    return-void
.end method

.method public static declared-synchronized A0E(Ljava/io/File;)Z
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/bd;

    monitor-enter v2

    .line 70592
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/bd;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70593
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 70594
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A09:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    const-string v1, "IKpjWyjLYfQpiBWntIG6MWMycmL9Fi0T"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4yvCWPfRVkN5zdYzJ7yblhOZllwt9yTn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 70595
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A3R(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70596
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hp;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 70598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70599
    monitor-exit p0

    return-void

    .line 70600
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Ht;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A45(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70601
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    const/4 v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v6

    .line 70603
    .local p0, "span":Lcom/facebook/ads/redexgen/X/be;
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v5

    .line 70605
    .local v7, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70606
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70607
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70608
    monitor-exit p0

    return-void

    .line 70609
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 70610
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70611
    monitor-exit p0

    return-void

    .line 70612
    .end local v5
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ho;->A06()Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(Lcom/facebook/ads/redexgen/X/Hr;)J

    move-result-wide v4

    .line 70613
    .local v0, "length":J
    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    .line 70614
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    :goto_2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70615
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/bd;->A0B(Lcom/facebook/ads/redexgen/X/be;)V

    .line 70616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    .line 70617
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .line 70618
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70619
    :goto_3
    monitor-exit p0

    return-void

    .line 70620
    .end local p0    # "span":Lcom/facebook/ads/redexgen/X/be;
    .end local v7    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v0    # "length":J
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5n()J
    .locals 2

    monitor-enter p0

    .line 70621
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70622
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 70623
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5o(Ljava/lang/String;JJ)J
    .locals 2

    monitor-enter p0

    .line 70624
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 70626
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/Ho;->A05(JJ)J

    move-result-wide v0

    goto :goto_1

    .end local p1    # null:Ljava/lang/String;
    :cond_1
    neg-long v0, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .line 70627
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local p4    # null:J
    .end local p3
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5p(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/facebook/ads/redexgen/X/Hl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 70628
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v1

    .line 70630
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A0D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70631
    .end local v0
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 70632
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A09()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70633
    :goto_1
    monitor-exit p0

    return-object v1

    .line 70634
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A60(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 70635
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/bd;->A61(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(Lcom/facebook/ads/redexgen/X/Hr;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A61(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;
    .locals 1

    monitor-enter p0

    .line 70636
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70638
    .end local p1    # null:Ljava/lang/String;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AD3(Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 4

    monitor-enter p0

    .line 70639
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v2

    .line 70641
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70642
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70643
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A0C(Z)V

    .line 70644
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0I(Ljava/lang/String;)V

    .line 70645
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70646
    monitor-exit p0

    return-void

    .line 70647
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v3
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADA(Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70648
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70649
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/bd;->A09(Lcom/facebook/ads/redexgen/X/Hl;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70650
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A08:[Ljava/lang/String;

    const-string v1, "mDPrx6EC7JunlTiRZIITWuDkOY6RMx2Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70651
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADh(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70652
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ht;-><init>()V

    .line 70653
    .local p0, "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Hs;->A05(Lcom/facebook/ads/redexgen/X/Ht;J)V

    .line 70654
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A3R(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70655
    monitor-exit p0

    return-void

    .line 70656
    .end local p0    # "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AE6(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 70657
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    move-object v4, p1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v1

    .line 70659
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70660
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70663
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A05()V

    .line 70664
    .end local v0
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Lcom/facebook/ads/redexgen/X/ba;

    move-object v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/ba;->ABi(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;JJ)V

    .line 70665
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Ljava/io/File;

    iget v4, v1, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    .line 70666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 70667
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/be;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70668
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v1
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic AE8(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 70669
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bd;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AE9(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 70670
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bd;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/be;

    move-result-object v0

    return-object v0
.end method
