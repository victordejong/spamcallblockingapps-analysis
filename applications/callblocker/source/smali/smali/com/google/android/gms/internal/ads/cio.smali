.class final Lcom/google/android/gms/internal/ads/cio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/cjq;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/cio;->b:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/cio;->c:I

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cjq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    .line 6
    return-void
.end method

.method private final h()V
    .locals 4

    .prologue
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ciy;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/ciy;->d:J

    sub-long v0, v2, v0

    .line 32
    iget v2, p0, Lcom/google/android/gms/internal/ads/cio;->c:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_1
    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->c()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ciy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->a()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cio;->h()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    const/4 v0, 0x0

    .line 20
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ciy;

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cjq;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ciy;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->a()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cio;->h()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cio;->b:I

    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cio;->h()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->f()I

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/cjp;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cio;->d:Lcom/google/android/gms/internal/ads/cjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cjq;->g()Lcom/google/android/gms/internal/ads/cjp;

    move-result-object v0

    return-object v0
.end method
