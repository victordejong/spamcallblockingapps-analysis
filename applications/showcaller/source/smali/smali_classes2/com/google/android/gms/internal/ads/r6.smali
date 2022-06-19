.class final Lcom/google/android/gms/internal/ads/r6;
.super Lcom/google/android/gms/internal/ads/m2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final e:I

.field private final f:I

.field private final g:[I

.field private final h:[I

.field private final i:[Lcom/google/android/gms/internal/ads/p7;

.field private final j:[Ljava/lang/Object;

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/em3;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/gms/internal/ads/s5;",
            ">;",
            "Lcom/google/android/gms/internal/ads/em3;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p3, p2, v0}, Lcom/google/android/gms/internal/ads/m2;-><init>(ZLcom/google/android/gms/internal/ads/em3;[B)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->g:[I

    .line 4
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->h:[I

    .line 5
    new-array v0, p2, [Lcom/google/android/gms/internal/ads/p7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->i:[Lcom/google/android/gms/internal/ads/p7;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r6;->j:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    .line 7
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r6;->k:Ljava/util/HashMap;

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/s5;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->i:[Lcom/google/android/gms/internal/ads/p7;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/s5;->c()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->h:[I

    .line 10
    aput p3, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->g:[I

    .line 11
    aput p2, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->i:[Lcom/google/android/gms/internal/ads/p7;

    .line 12
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->i:[Lcom/google/android/gms/internal/ads/p7;

    .line 13
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->g()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->j:[Ljava/lang/Object;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/s5;->b()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r6;->k:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/r6;->j:[Ljava/lang/Object;

    .line 15
    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/google/android/gms/internal/ads/r6;->e:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/r6;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/r6;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/r6;->f:I

    return v0
.end method

.method protected final p(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->g:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/wa;->c([IIZZ)I

    move-result p1

    return p1
.end method

.method protected final q(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->h:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/wa;->c([IIZZ)I

    move-result p1

    return p1
.end method

.method protected final r(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final s(I)Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->i:[Lcom/google/android/gms/internal/ads/p7;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final t(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->g:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final u(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->h:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final v(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->j:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/p7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r6;->i:[Lcom/google/android/gms/internal/ads/p7;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
