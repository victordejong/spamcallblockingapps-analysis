.class abstract Lcom/google/common/collect/ae$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/common/collect/ae$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$l<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/ae$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/ae$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae<",
            "TK;TV;TE;TS;>.ab;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/ae$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae<",
            "TK;TV;TE;TS;>.ab;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/google/common/collect/ae;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;)V
    .locals 0

    .line 2514
    iput-object p1, p0, Lcom/google/common/collect/ae$f;->h:Lcom/google/common/collect/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2515
    iget-object p1, p1, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/ae$f;->a:I

    const/4 p1, -0x1

    .line 2516
    iput p1, p0, Lcom/google/common/collect/ae$f;->b:I

    .line 2517
    invoke-direct {p0}, Lcom/google/common/collect/ae$f;->b()V

    return-void
.end method

.method private a(Lcom/google/common/collect/ae$g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2576
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/ae$g;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2577
    invoke-static {p1}, Lcom/google/common/collect/ae;->a(Lcom/google/common/collect/ae$g;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2579
    new-instance v1, Lcom/google/common/collect/ae$ab;

    iget-object v2, p0, Lcom/google/common/collect/ae$f;->h:Lcom/google/common/collect/ae;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/ae$ab;-><init>(Lcom/google/common/collect/ae;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/ae$f;->f:Lcom/google/common/collect/ae$ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2586
    iget-object p1, p0, Lcom/google/common/collect/ae$f;->c:Lcom/google/common/collect/ae$l;

    invoke-virtual {p1}, Lcom/google/common/collect/ae$l;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/ae$f;->c:Lcom/google/common/collect/ae$l;

    invoke-virtual {p1}, Lcom/google/common/collect/ae$l;->e()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/collect/ae$f;->c:Lcom/google/common/collect/ae$l;

    invoke-virtual {v0}, Lcom/google/common/collect/ae$l;->e()V

    .line 2587
    throw p1
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    .line 2524
    iput-object v0, p0, Lcom/google/common/collect/ae$f;->f:Lcom/google/common/collect/ae$ab;

    .line 2526
    invoke-direct {p0}, Lcom/google/common/collect/ae$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2530
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/ae$f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2534
    :cond_1
    iget v0, p0, Lcom/google/common/collect/ae$f;->a:I

    if-ltz v0, :cond_2

    .line 2535
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->h:Lcom/google/common/collect/ae;

    iget-object v0, v0, Lcom/google/common/collect/ae;->c:[Lcom/google/common/collect/ae$l;

    iget v1, p0, Lcom/google/common/collect/ae$f;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/ae$f;->a:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/ae$f;->c:Lcom/google/common/collect/ae$l;

    .line 2536
    iget v0, v0, Lcom/google/common/collect/ae$l;->b:I

    if-eqz v0, :cond_1

    .line 2537
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->c:Lcom/google/common/collect/ae$l;

    iget-object v0, v0, Lcom/google/common/collect/ae$l;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/ae$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2538
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ae$f;->b:I

    .line 2539
    invoke-direct {p0}, Lcom/google/common/collect/ae$f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->e:Lcom/google/common/collect/ae$g;

    if-eqz v0, :cond_1

    .line 2549
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/ae$g;->c()Lcom/google/common/collect/ae$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ae$f;->e:Lcom/google/common/collect/ae$g;

    iget-object v0, p0, Lcom/google/common/collect/ae$f;->e:Lcom/google/common/collect/ae$g;

    if-eqz v0, :cond_1

    .line 2550
    invoke-direct {p0, v0}, Lcom/google/common/collect/ae$f;->a(Lcom/google/common/collect/ae$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2549
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->e:Lcom/google/common/collect/ae$g;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .locals 3

    .line 2560
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ae$f;->b:I

    if-ltz v0, :cond_2

    .line 2561
    iget-object v1, p0, Lcom/google/common/collect/ae$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/ae$f;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ae$g;

    iput-object v0, p0, Lcom/google/common/collect/ae$f;->e:Lcom/google/common/collect/ae$g;

    if-eqz v0, :cond_0

    .line 2562
    invoke-direct {p0, v0}, Lcom/google/common/collect/ae$f;->a(Lcom/google/common/collect/ae$g;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/ae$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()Lcom/google/common/collect/ae$ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ae<",
            "TK;TV;TE;TS;>.ab;"
        }
    .end annotation

    .line 2596
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->f:Lcom/google/common/collect/ae$ab;

    if-eqz v0, :cond_0

    .line 2599
    iput-object v0, p0, Lcom/google/common/collect/ae$f;->g:Lcom/google/common/collect/ae$ab;

    .line 2600
    invoke-direct {p0}, Lcom/google/common/collect/ae$f;->b()V

    .line 2601
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->g:Lcom/google/common/collect/ae$ab;

    return-object v0

    .line 2597
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 2592
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->f:Lcom/google/common/collect/ae$ab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 2606
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->g:Lcom/google/common/collect/ae$ab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 3063
    invoke-static {v0, v1}, Lcom/google/common/base/m;->b(ZLjava/lang/Object;)V

    .line 2607
    iget-object v0, p0, Lcom/google/common/collect/ae$f;->h:Lcom/google/common/collect/ae;

    iget-object v1, p0, Lcom/google/common/collect/ae$f;->g:Lcom/google/common/collect/ae$ab;

    invoke-virtual {v1}, Lcom/google/common/collect/ae$ab;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ae;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2608
    iput-object v0, p0, Lcom/google/common/collect/ae$f;->g:Lcom/google/common/collect/ae$ab;

    return-void
.end method
