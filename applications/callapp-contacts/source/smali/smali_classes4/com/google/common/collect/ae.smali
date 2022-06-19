.class final Lcom/google/common/collect/ae;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ae$m;,
        Lcom/google/common/collect/ae$a;,
        Lcom/google/common/collect/ae$k;,
        Lcom/google/common/collect/ae$e;,
        Lcom/google/common/collect/ae$t;,
        Lcom/google/common/collect/ae$j;,
        Lcom/google/common/collect/ae$d;,
        Lcom/google/common/collect/ae$ab;,
        Lcom/google/common/collect/ae$s;,
        Lcom/google/common/collect/ae$i;,
        Lcom/google/common/collect/ae$f;,
        Lcom/google/common/collect/ae$x;,
        Lcom/google/common/collect/ae$v;,
        Lcom/google/common/collect/ae$r;,
        Lcom/google/common/collect/ae$p;,
        Lcom/google/common/collect/ae$l;,
        Lcom/google/common/collect/ae$aa;,
        Lcom/google/common/collect/ae$z;,
        Lcom/google/common/collect/ae$w;,
        Lcom/google/common/collect/ae$u;,
        Lcom/google/common/collect/ae$c;,
        Lcom/google/common/collect/ae$q;,
        Lcom/google/common/collect/ae$o;,
        Lcom/google/common/collect/ae$y;,
        Lcom/google/common/collect/ae$b;,
        Lcom/google/common/collect/ae$g;,
        Lcom/google/common/collect/ae$h;,
        Lcom/google/common/collect/ae$n;
    }
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
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final g:Lcom/google/common/collect/ae$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$z<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:I

.field final transient b:I

.field final transient c:[Lcom/google/common/collect/ae$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ae$l<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lcom/google/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final transient f:Lcom/google/common/collect/ae$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$h<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field transient j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1005
    new-instance v0, Lcom/google/common/collect/ae$1;

    invoke-direct {v0}, Lcom/google/common/collect/ae$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/ae;->g:Lcom/google/common/collect/ae$z;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ad;Lcom/google/common/collect/ae$h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ad;",
            "Lcom/google/common/collect/ae$h<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/google/common/collect/ad;->b()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ae;->d:I

    .line 3129
    iget-object v0, p1, Lcom/google/common/collect/ad;->f:Lcom/google/common/base/e;

    invoke-virtual {p1}, Lcom/google/common/collect/ad;->c()Lcom/google/common/collect/ae$n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ae$n;->defaultEquivalence()Lcom/google/common/base/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/e;

    .line 163
    iput-object v0, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    .line 164
    iput-object p2, p0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    .line 166
    invoke-virtual {p1}, Lcom/google/common/collect/ad;->a()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    :goto_0
    iget v3, p0, Lcom/google/common/collect/ae;->d:I

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v2, 0x20

    .line 176
    iput v2, p0, Lcom/google/common/collect/ae;->b:I

    add-int/lit8 v2, v1, -0x1

    .line 177
    iput v2, p0, Lcom/google/common/collect/ae;->a:I

    .line 3131
    new-array v2, v1, [Lcom/google/common/collect/ae$l;

    .line 179
    iput-object v2, p0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    .line 181
    div-int v2, p1, v1

    mul-int v1, v1, v2

    if-ge v1, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    array-length v1, p1

    if-ge p2, v1, :cond_3

    .line 4115
    iget-object v1, p0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    const/4 v2, -0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/google/common/collect/ae$h;->a(Lcom/google/common/collect/ae;II)Lcom/google/common/collect/ae$l;

    move-result-object v1

    .line 192
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    invoke-virtual {v0, p1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;)I

    move-result p1

    shl-int/lit8 v0, p1, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method static a()Lcom/google/common/collect/ae$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/ae$g<",
            "TK;TV;TE;>;>()",
            "Lcom/google/common/collect/ae$z<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/google/common/collect/ae;->g:Lcom/google/common/collect/ae$z;

    return-object v0
.end method

.method static a(Lcom/google/common/collect/ad;)Lcom/google/common/collect/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ad;",
            ")",
            "Lcom/google/common/collect/ae<",
            "TK;TV;+",
            "Lcom/google/common/collect/ae$g<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->c()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->d()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_0

    .line 201
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-static {}, Lcom/google/common/collect/ae$o$a;->c()Lcom/google/common/collect/ae$o$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/ad;Lcom/google/common/collect/ae$h;)V

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->c()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->d()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_1

    .line 205
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-static {}, Lcom/google/common/collect/ae$q$a;->c()Lcom/google/common/collect/ae$q$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/ad;Lcom/google/common/collect/ae$h;)V

    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->c()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->d()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_2

    .line 209
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-static {}, Lcom/google/common/collect/ae$u$a;->c()Lcom/google/common/collect/ae$u$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/ad;Lcom/google/common/collect/ae$h;)V

    return-object v0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/ad;->c()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/ad;->d()Lcom/google/common/collect/ae$n;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    if-ne v0, v1, :cond_3

    .line 212
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-static {}, Lcom/google/common/collect/ae$w$a;->c()Lcom/google/common/collect/ae$w$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/ad;Lcom/google/common/collect/ae$h;)V

    return-object v0

    .line 214
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static a(Lcom/google/common/collect/ae$g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1123
    invoke-interface {p0}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1126
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2

    .line 6825
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6826
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/ab;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/google/common/collect/ae$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ae$l<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    iget v1, p0, Lcom/google/common/collect/ae;->b:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/collect/ae;->a:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method final b()Lcom/google/common/base/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2292
    iget-object v0, p0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    invoke-interface {v0}, Lcom/google/common/collect/ae$h;->b()Lcom/google/common/collect/ae$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ae$n;->defaultEquivalence()Lcom/google/common/base/e;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 8

    .line 2473
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 6773
    iget v5, v4, Lcom/google/common/collect/ae$l;->b:I

    if-eqz v5, :cond_1

    .line 6774
    invoke-virtual {v4}, Lcom/google/common/collect/ae$l;->lock()V

    .line 6776
    :try_start_0
    iget-object v5, v4, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v6, 0x0

    .line 6777
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v7, 0x0

    .line 6778
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6780
    :cond_0
    invoke-virtual {v4}, Lcom/google/common/collect/ae$l;->c()V

    .line 6781
    iget-object v5, v4, Lcom/google/common/collect/ae$l;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6783
    iget v5, v4, Lcom/google/common/collect/ae$l;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/common/collect/ae$l;->c:I

    .line 6784
    iput v2, v4, Lcom/google/common/collect/ae$l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6786
    invoke-virtual {v4}, Lcom/google/common/collect/ae$l;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/google/common/collect/ae$l;->unlock()V

    .line 6787
    throw v0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2363
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2364
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/ae$l;->b(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object/from16 v2, p0

    .line 2378
    iget-object v3, v2, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_7

    const-wide/16 v7, 0x0

    .line 2382
    array-length v9, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    aget-object v11, v3, v10

    .line 2384
    iget v12, v11, Lcom/google/common/collect/ae$l;->b:I

    .line 2386
    iget-object v12, v11, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    .line 2387
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 2388
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/common/collect/ae$g;

    :goto_3
    if-eqz v14, :cond_4

    .line 5949
    invoke-interface {v14}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_1

    .line 5950
    invoke-virtual {v11}, Lcom/google/common/collect/ae$l;->d()V

    :goto_4
    move-object/from16 v15, v16

    goto :goto_5

    .line 5953
    :cond_1
    invoke-interface {v14}, Lcom/google/common/collect/ae$g;->d()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_2

    .line 5955
    invoke-virtual {v11}, Lcom/google/common/collect/ae$l;->d()V

    goto :goto_4

    :cond_2
    :goto_5
    if-eqz v15, :cond_3

    .line 2390
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ae;->b()Lcom/google/common/base/e;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    return v0

    .line 2388
    :cond_3
    invoke-interface {v14}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v14

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_2

    .line 2395
    :cond_5
    iget v1, v11, Lcom/google/common/collect/ae$l;->c:I

    int-to-long v11, v1

    add-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    cmp-long v1, v7, v4

    if-eqz v1, :cond_7

    add-int/lit8 v6, v6, 0x1

    move-wide v4, v7

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2498
    iget-object v0, p0, Lcom/google/common/collect/ae;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2499
    :cond_0
    new-instance v0, Lcom/google/common/collect/ae$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ae$e;-><init>(Lcom/google/common/collect/ae;)V

    iput-object v0, p0, Lcom/google/common/collect/ae;->j:Ljava/util/Set;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2342
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2343
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/ae$l;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 10

    .line 2307
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2308
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 2309
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/ae$l;->b:I

    if-eqz v7, :cond_0

    return v3

    .line 2312
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/ae$l;->c:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    .line 2316
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 2317
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/collect/ae$l;->b:I

    if-eqz v8, :cond_2

    return v3

    .line 2320
    :cond_2
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/collect/ae$l;->c:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    return v4

    :cond_4
    return v3

    :cond_5
    return v4
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2482
    iget-object v0, p0, Lcom/google/common/collect/ae;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2483
    :cond_0
    new-instance v0, Lcom/google/common/collect/ae$j;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ae$j;-><init>(Lcom/google/common/collect/ae;)V

    iput-object v0, p0, Lcom/google/common/collect/ae;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2408
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2411
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/ae$l;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2425
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ae;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2417
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2420
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/ae$l;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2436
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2437
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/ae$l;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2446
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2447
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/ae$l;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2465
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2468
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/ae$l;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2453
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    invoke-static {p3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2458
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2459
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae;->a(I)Lcom/google/common/collect/ae$l;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/ae$l;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 6

    .line 2329
    iget-object v0, p0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2331
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2332
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/common/collect/ae$l;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    const-wide/32 v3, -0x80000000

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    const/high16 v0, -0x80000000

    return v0

    :cond_2
    long-to-int v0, v1

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2490
    iget-object v0, p0, Lcom/google/common/collect/ae;->i:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    .line 2491
    :cond_0
    new-instance v0, Lcom/google/common/collect/ae$t;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ae$t;-><init>(Lcom/google/common/collect/ae;)V

    iput-object v0, p0, Lcom/google/common/collect/ae;->i:Ljava/util/Collection;

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 8

    .line 2835
    new-instance v7, Lcom/google/common/collect/ae$m;

    iget-object v0, p0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    .line 2836
    invoke-interface {v0}, Lcom/google/common/collect/ae$h;->a()Lcom/google/common/collect/ae$n;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    .line 2837
    invoke-interface {v0}, Lcom/google/common/collect/ae$h;->b()Lcom/google/common/collect/ae$n;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/ae;->e:Lcom/google/common/base/e;

    iget-object v0, p0, Lcom/google/common/collect/ae;->f:Lcom/google/common/collect/ae$h;

    .line 2839
    invoke-interface {v0}, Lcom/google/common/collect/ae$h;->b()Lcom/google/common/collect/ae$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ae$n;->defaultEquivalence()Lcom/google/common/base/e;

    move-result-object v4

    iget v5, p0, Lcom/google/common/collect/ae;->d:I

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/ae$m;-><init>(Lcom/google/common/collect/ae$n;Lcom/google/common/collect/ae$n;Lcom/google/common/base/e;Lcom/google/common/base/e;ILjava/util/concurrent/ConcurrentMap;)V

    return-object v7
.end method
