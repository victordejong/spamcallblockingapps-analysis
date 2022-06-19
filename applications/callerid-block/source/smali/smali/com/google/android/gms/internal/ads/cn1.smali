.class final Lcom/google/android/gms/internal/ads/cn1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/bo1;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    iput p1, p0, Lcom/google/android/gms/internal/ads/cn1;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/cn1;->c:I

    new-instance p1, Lcom/google/android/gms/internal/ads/bo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/bo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    return-void
.end method

.method private final i()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ln1;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/ln1;->d:J

    sub-long/2addr v1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/cn1;->c:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ln1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn1;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cn1;->b:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/ln1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn1;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ln1;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bo1;->b()V

    :cond_1
    return-object v0
.end method

.method public final c()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cn1;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->f()I

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/ao1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cn1;->d:Lcom/google/android/gms/internal/ads/bo1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bo1;->g()Lcom/google/android/gms/internal/ads/ao1;

    move-result-object v0

    return-object v0
.end method
