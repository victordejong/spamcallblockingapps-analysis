.class public final Lcom/facebook/ads/redexgen/X/Td;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/Tf;

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

    .line 54687
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Td;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Td;->A06()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Td;->A09:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Tf;)V
    .locals 2

    .line 54688
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Tf;[BZ)V

    .line 54689
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Tf;Lcom/facebook/ads/redexgen/X/Hp;)V
    .locals 4

    .line 54690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54691
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Td;->A0E(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54692
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    .line 54693
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    .line 54694
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    .line 54695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Ljava/util/HashMap;

    .line 54696
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 54697
    .local p0, "conditionVariable":Landroid/os/ConditionVariable;
    const/16 v2, 0x39

    const/16 v1, 0x18

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hu;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/Hu;-><init>(Lcom/facebook/ads/redexgen/X/Td;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 54698
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hu;->start()V

    .line 54699
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 54700
    return-void

    .line 54701
    .end local p0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Tf;[BZ)V
    .locals 1

    .line 54702
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hp;

    invoke-direct {v0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Hp;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Tf;Lcom/facebook/ads/redexgen/X/Hp;)V

    .line 54703
    return-void
.end method

.method private A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 54704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v2

    .line 54705
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-nez v2, :cond_0

    .line 54706
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Tc;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    return-object v0

    .line 54707
    :cond_0
    :goto_0
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v1

    .line 54708
    .local p1, "span":Lcom/facebook/ads/redexgen/X/Tc;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;->A05()V

    .line 54710
    goto :goto_0

    .line 54711
    :cond_1
    return-object v1
.end method

.method private final declared-synchronized A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54712
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Td;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    .line 54713
    .local p0, "span":Lcom/facebook/ads/redexgen/X/Tc;
    if-eqz v0, :cond_0

    goto :goto_1

    .line 54714
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54715
    :goto_1
    monitor-exit p0

    return-object v0

    .line 54716
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54717
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54718
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Td;->A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    .line 54719
    .local p0, "cacheSpan":Lcom/facebook/ads/redexgen/X/Tc;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    if-eqz v0, :cond_1

    .line 54720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ho;->A08(Lcom/facebook/ads/redexgen/X/Tc;)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    .line 54721
    .local p1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/Tc;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Td;->A0D(Lcom/facebook/ads/redexgen/X/Tc;Lcom/facebook/ads/redexgen/X/Hl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54722
    monitor-exit p0

    return-object v0

    .line 54723
    .end local p1    # "newCacheSpan":Lcom/facebook/ads/redexgen/X/Tc;
    .end local v0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v1

    .line 54724
    .local p2, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54725
    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A0C(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54726
    monitor-exit p0

    return-object v2

    .line 54727
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 54728
    .end local p0    # "cacheSpan":Lcom/facebook/ads/redexgen/X/Tc;
    .end local p2    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v3
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    .line 54729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54731
    return-void

    .line 54732
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0F()V

    .line 54733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 54734
    .local p0, "files":[Ljava/io/File;
    if-nez v8, :cond_1

    .line 54735
    return-void

    .line 54736
    :cond_1
    array-length v7, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const-string v1, "XVpxjBMCAM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "XVYzOVtRxefDDcS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v5, v8, v6

    .line 54737
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/16 v1, 0x18

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54738
    .end local v0    # "file":Ljava/io/File;
    .end local v0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54739
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    .line 54740
    .local v0, "span":Lcom/facebook/ads/redexgen/X/Tc;
    :goto_2
    if-eqz v0, :cond_4

    .line 54741
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Td;->A0B(Lcom/facebook/ads/redexgen/X/Tc;)V

    goto :goto_1

    .line 54742
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 54743
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 54744
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0G()V

    .line 54745
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    goto :goto_3
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Hf; {:try_start_0 .. :try_end_0} :catch_0

    .line 54746
    :catch_0
    move-exception v4

    .line 54747
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Hf;
    const/16 v2, 0x2e

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x51

    const/16 v1, 0x19

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54748
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Hf;
    :goto_3
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 54749
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54750
    .local p0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0E()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const-string v1, "PrYntcSjl1c1WT5j1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    .line 54751
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

    .line 54752
    .local v5, "span":Lcom/facebook/ads/redexgen/X/Hl;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54753
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54754
    :cond_2
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 54755
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hl;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A09(Lcom/facebook/ads/redexgen/X/Hl;Z)V

    .line 54756
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54757
    .end local v3    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0G()V

    .line 54758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    .line 54759
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x82

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Td;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        -0x6et
        -0x6dt
        -0x68t
        -0x74t
        -0x77t
        -0x6at
        0x44t
        0x77t
        -0x73t
        -0x6ft
        -0x6ct
        -0x70t
        -0x77t
        0x67t
        -0x7bt
        -0x79t
        -0x74t
        -0x77t
        0x44t
        -0x73t
        -0x6et
        -0x69t
        -0x68t
        -0x7bt
        -0x6et
        -0x79t
        -0x77t
        0x44t
        -0x67t
        -0x69t
        -0x77t
        -0x69t
        0x44t
        -0x68t
        -0x74t
        -0x77t
        0x44t
        -0x76t
        -0x6dt
        -0x70t
        -0x78t
        -0x77t
        -0x6at
        0x5et
        0x44t
        -0x46t
        -0x30t
        -0x2ct
        -0x29t
        -0x2dt
        -0x34t
        -0x56t
        -0x38t
        -0x36t
        -0x31t
        -0x34t
        -0x3bt
        -0x25t
        -0x21t
        -0x1et
        -0x22t
        -0x29t
        -0x4bt
        -0x2dt
        -0x2bt
        -0x26t
        -0x29t
        -0x60t
        -0x25t
        -0x20t
        -0x25t
        -0x1at
        -0x25t
        -0x2dt
        -0x22t
        -0x25t
        -0x14t
        -0x29t
        -0x66t
        -0x65t
        -0x64t
        -0x43t
        -0x48t
        -0x45t
        -0x4et
        -0x49t
        -0x50t
        0x69t
        -0x4et
        -0x49t
        -0x53t
        -0x52t
        -0x3ft
        0x69t
        -0x51t
        -0x4et
        -0x4bt
        -0x52t
        0x69t
        -0x51t
        -0x56t
        -0x4et
        -0x4bt
        -0x52t
        -0x53t
        -0x6bt
        -0x6dt
        -0x6bt
        -0x66t
        -0x69t
        -0x6at
        -0x6ft
        -0x6bt
        -0x5ft
        -0x60t
        -0x5at
        -0x69t
        -0x60t
        -0x5at
        -0x6ft
        -0x65t
        -0x60t
        -0x6at
        -0x69t
        -0x56t
        0x60t
        -0x69t
        -0x56t
        -0x65t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MRmMmOM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kNVgOVSNdmT35bWV3YbYkqIVCMa65Atd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4cQFA3HSC1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5VGCVenakPO9ctnXG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dXPqe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yXGaXz8d8LC9lIZuJzz1t9YXVOBP3gSK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Au3czQu1YNLmtqg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 3

    .line 54760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 54761
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 54762
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 54763
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABg(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54764
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54765
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABg(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54766
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Hl;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 54767
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v5

    .line 54768
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v5, :cond_0

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/Ho;->A0F(Lcom/facebook/ads/redexgen/X/Hl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54769
    :cond_0
    return-void

    .line 54770
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    sub-long/2addr v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const-string v1, "5MgquMQ"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:J

    .line 54771
    if-eqz p2, :cond_3

    .line 54772
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0I(Ljava/lang/String;)V

    .line 54773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54774
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->A08(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54775
    throw v0

    .line 54776
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->A08(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54777
    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 54778
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;->A04()V

    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 4

    .line 54779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ho;->A0A(Lcom/facebook/ads/redexgen/X/Tc;)V

    .line 54780
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:J

    .line 54781
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->A0C(Lcom/facebook/ads/redexgen/X/Tc;)V

    .line 54782
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 3

    .line 54783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 54784
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 54785
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 54786
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABf(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54787
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54788
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->ABf(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54789
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Tc;Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 3

    .line 54790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 54791
    .local p0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 54792
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 54793
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hg;->ABh(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54794
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54795
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hg;->ABh(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 54796
    return-void
.end method

.method public static declared-synchronized A0E(Ljava/io/File;)Z
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/Td;

    monitor-enter v2

    .line 54797
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Td;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54798
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 54799
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A09:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    .line 54800
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A3N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54801
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hp;->A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 54803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54804
    monitor-exit p0

    return-void

    .line 54805
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Ht;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A41(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54806
    :try_start_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const-string v1, "y6p3Li1U81IteC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    .line 54808
    .local p0, "span":Lcom/facebook/ads/redexgen/X/Tc;
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v5

    .line 54810
    .local v7, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54811
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54812
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54813
    monitor-exit p0

    return-void

    .line 54814
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 54815
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54816
    monitor-exit p0

    return-void

    .line 54817
    .end local v2
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ho;->A06()Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(Lcom/facebook/ads/redexgen/X/Hr;)J

    move-result-wide v4

    .line 54818
    .local v1, "length":J
    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    .line 54819
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    :goto_2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54820
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Td;->A0B(Lcom/facebook/ads/redexgen/X/Tc;)V

    .line 54821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0H()V

    .line 54822
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .line 54823
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54824
    :goto_3
    monitor-exit p0

    return-void

    .line 54825
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54826
    .end local p0    # "span":Lcom/facebook/ads/redexgen/X/Tc;
    .end local v7    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v1    # "length":J
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5n()J
    .locals 2

    monitor-enter p0

    .line 54827
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54828
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 54829
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5o(Ljava/lang/String;JJ)J
    .locals 5

    monitor-enter p0

    .line 54830
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 54832
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/Ho;->A05(JJ)J

    move-result-wide v2

    goto :goto_1

    .end local v3
    :cond_1
    neg-long v2, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v4, Lcom/facebook/ads/redexgen/X/Td;->A08:[Ljava/lang/String;

    const-string v1, "ZRKCS7TDzwTVVJ1iXJqFx0kWFVRUhSVz"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "s0QndXZmMbRU6WMmBnqEMF9jEaGkoiir"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    return-wide v2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54833
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local p4    # null:J
    .end local p0
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

    .line 54834
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v1

    .line 54836
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A0D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54837
    .end local v0
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 54838
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A09()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54839
    :goto_1
    monitor-exit p0

    return-object v1

    .line 54840
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

    .line 54841
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->A61(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;

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

    .line 54842
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54844
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

    .line 54845
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54846
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v2

    .line 54847
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54848
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54849
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A0C(Z)V

    .line 54850
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0I(Ljava/lang/String;)V

    .line 54851
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54852
    monitor-exit p0

    return-void

    .line 54853
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v3
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADA(Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54854
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54855
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Td;->A09(Lcom/facebook/ads/redexgen/X/Hl;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54856
    monitor-exit p0

    return-void

    .line 54857
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADi(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54858
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ht;-><init>()V

    .line 54859
    .local p0, "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Hs;->A05(Lcom/facebook/ads/redexgen/X/Ht;J)V

    .line 54860
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A3N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54861
    monitor-exit p0

    return-void

    .line 54862
    .end local p0    # "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AE8(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    monitor-enter p0

    .line 54863
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Lcom/facebook/ads/redexgen/X/Hp;

    move-object v4, p1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v1

    .line 54865
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54866
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54869
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;->A05()V

    .line 54870
    .end local v0
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    move-object v3, p0

    move-wide v7, p4

    move-wide v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Tf;->ABi(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;JJ)V

    .line 54871
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Ljava/io/File;

    iget v4, v1, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    .line 54872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 54873
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Tc;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54874
    .end local p0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    .end local v1
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic AEA(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 54875
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Td;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AEB(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 54876
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Td;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    return-object v0
.end method
