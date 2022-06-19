.class abstract Lcom/google/common/collect/ae$l;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/ae$g<",
        "TK;TV;TE;>;S:",
        "Lcom/google/common/collect/ae$l<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ae<",
            "TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .line 1207
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/ae$l;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1208
    iput-object p1, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    .line 1209
    iput p3, p0, Lcom/google/common/collect/ae$l;->f:I

    .line 1210
    invoke-static {p2}, Lcom/google/common/collect/ae$l;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    .line 2243
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/google/common/collect/ae$l;->d:I

    if-ne p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 2246
    iput p2, p0, Lcom/google/common/collect/ae$l;->d:I

    .line 2248
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method private a(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v0, v0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->a()Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/ae$h;->a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    return-object p1
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v0, v0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->a()Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/ae$h;->a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Lcom/google/common/collect/ae$g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/ae$g<",
            "TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1940
    invoke-interface {p0}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Lcom/google/common/collect/ae$g;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1822
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1826
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 1827
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ae$g;

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    .line 1831
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1832
    invoke-direct {p0, v1, v3}, Lcom/google/common/collect/ae$l;->b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    .line 1833
    iget v1, p0, Lcom/google/common/collect/ae$l;->b:I

    sub-int/2addr v1, v2

    .line 1834
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1835
    iput v1, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v2

    .line 1829
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1842
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1843
    throw p1
.end method

.method private a(Ljava/lang/Object;ILcom/google/common/collect/ae$z;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/ae$z<",
            "TK;TV;TE;>;)Z"
        }
    .end annotation

    .line 1849
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 1852
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1853
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1854
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ae$g;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1857
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v6

    .line 1858
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->b()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v7, v7, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 1860
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1861
    move-object p1, v4

    check-cast p1, Lcom/google/common/collect/ae$y;

    invoke-interface {p1}, Lcom/google/common/collect/ae$y;->e()Lcom/google/common/collect/ae$z;

    move-result-object p1

    if-ne p1, p3, :cond_0

    .line 1863
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1864
    invoke-direct {p0, v3, v4}, Lcom/google/common/collect/ae$l;->b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    .line 1865
    iget p2, p0, Lcom/google/common/collect/ae$l;->b:I

    sub-int/2addr p2, v2

    .line 1866
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1867
    iput p2, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    .line 1856
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1876
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1877
    throw p1
.end method

.method private b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1805
    iget v0, p0, Lcom/google/common/collect/ae$l;->b:I

    .line 1806
    invoke-interface {p2}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 1808
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1807
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object p1

    goto :goto_0

    .line 1815
    :cond_1
    iput v0, p0, Lcom/google/common/collect/ae$l;->b:I

    return-object v1
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/common/collect/ae$g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1392
    iget v0, p0, Lcom/google/common/collect/ae$l;->b:I

    if-eqz v0, :cond_2

    .line 4385
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4386
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ae$g;

    :goto_0
    if-eqz v0, :cond_2

    .line 1394
    invoke-interface {v0}, Lcom/google/common/collect/ae$g;->b()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1398
    invoke-interface {v0}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->d()V

    goto :goto_1

    .line 1404
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v2, v2, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1393
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private f()V
    .locals 2

    .line 1987
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->b()V

    .line 1990
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1993
    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/ae$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 4414
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ae$l;->d(Ljava/lang/Object;I)Lcom/google/common/collect/ae$g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->e()V

    const/4 p1, 0x0

    return-object p1

    .line 1424
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1426
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->e()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->e()V

    .line 1431
    throw p1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1650
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 7979
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/ae$l;->f()V

    .line 1654
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1655
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1656
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ae$g;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1659
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v5

    .line 1660
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->b()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v6, v6, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 1662
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1665
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1667
    invoke-static {v3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1669
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1670
    invoke-direct {p0, v2, v3}, Lcom/google/common/collect/ae$l;->b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    .line 1671
    iget p2, p0, Lcom/google/common/collect/ae$l;->b:I

    add-int/lit8 p2, p2, -0x1

    .line 1672
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1673
    iput p2, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object v4

    .line 1678
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1679
    invoke-direct {p0, v3, p3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1686
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object p1

    .line 1658
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1686
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1687
    throw p1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1477
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 5979
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/ae$l;->f()V

    .line 1481
    iget v0, p0, Lcom/google/common/collect/ae$l;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1482
    iget v1, p0, Lcom/google/common/collect/ae$l;->d:I

    if-le v0, v1, :cond_7

    .line 6536
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6537
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_6

    .line 6552
    iget v2, p0, Lcom/google/common/collect/ae$l;->b:I

    shl-int/lit8 v3, v1, 0x1

    .line 6553
    invoke-static {v3}, Lcom/google/common/collect/ae$l;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 6554
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/collect/ae$l;->d:I

    .line 6555
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    .line 6559
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/ae$g;

    if-eqz v6, :cond_4

    .line 6562
    invoke-interface {v6}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v7

    .line 6563
    invoke-interface {v6}, Lcom/google/common/collect/ae$g;->b()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_0

    .line 6567
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_0
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_2

    .line 6575
    invoke-interface {v7}, Lcom/google/common/collect/ae$g;->b()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_1

    move-object v9, v7

    move v8, v10

    .line 6574
    :cond_1
    invoke-interface {v7}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v7

    goto :goto_1

    .line 6582
    :cond_2
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_4

    .line 6586
    invoke-interface {v6}, Lcom/google/common/collect/ae$g;->b()I

    move-result v7

    and-int/2addr v7, v4

    .line 6587
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/ae$g;

    .line 6588
    invoke-direct {p0, v6, v8}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 6590
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 6585
    :goto_3
    invoke-interface {v6}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v6

    goto :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6598
    :cond_5
    iput-object v3, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6599
    iput v2, p0, Lcom/google/common/collect/ae$l;->b:I

    .line 1484
    :cond_6
    iget v0, p0, Lcom/google/common/collect/ae$l;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1487
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1488
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1489
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ae$g;

    move-object v4, v3

    :goto_5
    const/4 v5, 0x0

    if-eqz v4, :cond_b

    .line 1493
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v6

    .line 1494
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->b()I

    move-result v7

    if-ne v7, p2, :cond_a

    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v7, v7, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 1496
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1499
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1502
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1503
    invoke-direct {p0, v4, p3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V

    .line 1504
    iget p1, p0, Lcom/google/common/collect/ae$l;->b:I

    .line 1505
    iput p1, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object v5

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object p1

    .line 1514
    :cond_9
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1515
    invoke-direct {p0, v4, p3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1529
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object p1

    .line 1492
    :cond_a
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v4

    goto :goto_5

    .line 1522
    :cond_b
    iget p4, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1523
    iget-object p4, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object p4, p4, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->a()Lcom/google/common/collect/ae$l;

    move-result-object v4

    invoke-interface {p4, v4, p1, p2, v3}, Lcom/google/common/collect/ae$h;->a(Lcom/google/common/collect/ae$l;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    .line 1524
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V

    .line 1525
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1526
    iput v0, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1529
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1530
    throw p1
.end method

.method final a(Ljava/lang/ref/ReferenceQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1354
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1356
    check-cast v1, Lcom/google/common/collect/ae$g;

    .line 1357
    iget-object v2, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    .line 3090
    invoke-interface {v1}, Lcom/google/common/collect/ae$g;->b()I

    move-result v3

    .line 3091
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v2

    invoke-direct {v2, v1, v3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;I)Z

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1603
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 6979
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/ae$l;->f()V

    .line 1607
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1608
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1609
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ae$g;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1612
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v6

    .line 1613
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->b()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v7, v7, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 1615
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1618
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1620
    invoke-static {v4}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1622
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1623
    invoke-direct {p0, v3, v4}, Lcom/google/common/collect/ae$l;->b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    .line 1624
    iget p2, p0, Lcom/google/common/collect/ae$l;->b:I

    sub-int/2addr p2, v2

    .line 1625
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1626
    iput p2, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    .line 1631
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    invoke-virtual {p2}, Lcom/google/common/collect/ae;->b()Lcom/google/common/base/e;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1632
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1633
    invoke-direct {p0, v4, p4}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    .line 1611
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1645
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1646
    throw p1
.end method

.method b()V
    .locals 0

    return-void
.end method

.method final b(Ljava/lang/ref/ReferenceQueue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1368
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1370
    check-cast v1, Lcom/google/common/collect/ae$z;

    .line 1371
    iget-object v2, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    .line 4084
    invoke-interface {v1}, Lcom/google/common/collect/ae$z;->a()Lcom/google/common/collect/ae$g;

    move-result-object v3

    .line 4085
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->b()I

    move-result v4

    .line 4086
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v2

    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v4, v1}, Lcom/google/common/collect/ae$l;->a(Ljava/lang/Object;ILcom/google/common/collect/ae$z;)Z

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method final b(Ljava/lang/Object;I)Z
    .locals 2

    .line 1436
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/ae$l;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5414
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ae$l;->d(Ljava/lang/Object;I)Lcom/google/common/collect/ae$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1438
    invoke-interface {p1}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1443
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->e()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->e()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->e()V

    .line 1444
    throw p1
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8

    .line 1732
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 9979
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/ae$l;->f()V

    .line 1737
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1738
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1739
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ae$g;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1742
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v6

    .line 1743
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->b()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v7, v7, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 1745
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1746
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1

    .line 1749
    iget-object p2, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    invoke-virtual {p2}, Lcom/google/common/collect/ae;->b()Lcom/google/common/base/e;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 1751
    :cond_0
    invoke-static {v4}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 1768
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    .line 1757
    :cond_1
    :goto_1
    :try_start_1
    iget p1, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1758
    invoke-direct {p0, v3, v4}, Lcom/google/common/collect/ae$l;->b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p1

    .line 1759
    iget p2, p0, Lcom/google/common/collect/ae$l;->b:I

    sub-int/2addr p2, v2

    .line 1760
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1761
    iput p2, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1768
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    .line 1741
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1768
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1769
    throw p1
.end method

.method final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1692
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->lock()V

    .line 8979
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/ae$l;->f()V

    .line 1697
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1698
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1699
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ae$g;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1702
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v5

    .line 1703
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->b()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/common/collect/ae$l;->a:Lcom/google/common/collect/ae;

    iget-object v6, v6, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 1705
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1706
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1710
    invoke-static {v3}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 1727
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object v4

    .line 1716
    :cond_0
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/ae$l;->c:I

    .line 1717
    invoke-direct {p0, v2, v3}, Lcom/google/common/collect/ae$l;->b(Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;

    move-result-object p2

    .line 1718
    iget v2, p0, Lcom/google/common/collect/ae$l;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 1719
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1720
    iput v2, p0, Lcom/google/common/collect/ae$l;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1727
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object p1

    .line 1701
    :cond_1
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1727
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1728
    throw p1
.end method

.method c()V
    .locals 0

    return-void
.end method

.method final d()V
    .locals 1

    .line 1341
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 1346
    throw v0

    :cond_0
    return-void
.end method

.method final e()V
    .locals 1

    .line 1968
    iget-object v0, p0, Lcom/google/common/collect/ae$l;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 9983
    invoke-direct {p0}, Lcom/google/common/collect/ae$l;->f()V

    :cond_0
    return-void
.end method
