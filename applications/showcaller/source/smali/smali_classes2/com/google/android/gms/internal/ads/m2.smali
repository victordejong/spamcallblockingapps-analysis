.class public abstract Lcom/google/android/gms/internal/ads/m2;
.super Lcom/google/android/gms/internal/ads/p7;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/em3;


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/internal/ads/em3;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p7;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m2;->d:Lcom/google/android/gms/internal/ads/em3;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/em3;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/m2;->c:I

    return-void
.end method

.method private final w(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/m2;->d:Lcom/google/android/gms/internal/ads/em3;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/em3;->b(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/m2;->c:I

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final x(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/m2;->d:Lcom/google/android/gms/internal/ads/em3;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/em3;->c(I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final b(IIZ)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->q(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    .line 4
    :goto_0
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/android/gms/internal/ads/p7;->b(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    .line 5
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/m2;->w(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/m2;->w(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3
    if-ne p2, v3, :cond_4

    .line 10
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final c(IIZ)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->q(I)I

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result p3

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    sub-int/2addr p1, p3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/p7;->c(IIZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/2addr p3, p1

    return p3

    .line 5
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/m2;->x(IZ)I

    move-result p1

    :goto_0
    if-eq p1, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/m2;->x(IZ)I

    move-result p1

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/p7;->d(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_2
    return v0
.end method

.method public final d(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/m2;->c:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->d:Lcom/google/android/gms/internal/ads/em3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/em3;->d()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/m2;->x(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/p7;->d(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final e(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/m2;->c:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->d:Lcom/google/android/gms/internal/ads/em3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/em3;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/m2;->w(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/p7;->e(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->q(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->t(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->v(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/ads/o7;->a:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    .line 9
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 10
    :cond_0
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    .line 11
    iget p1, p2, Lcom/google/android/gms/internal/ads/o7;->q:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/o7;->q:I

    .line 12
    iget p1, p2, Lcom/google/android/gms/internal/ads/o7;->r:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/o7;->r:I

    return-object p2
.end method

.method public final h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->p(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->t(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 5
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    .line 6
    iget p1, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->v(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/m7;->c:Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 10
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/m7;->c:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->r(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->t(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_2
    return v1
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/m2;->p(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->t(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/p7;->j(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m2;->v(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/m2;->r(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/m2;->u(I)I

    move-result v2

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/m2;->s(I)Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 6
    iget v0, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    .line 7
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/m7;->c:Ljava/lang/Object;

    return-object p2
.end method

.method protected abstract p(I)I
.end method

.method protected abstract q(I)I
.end method

.method protected abstract r(Ljava/lang/Object;)I
.end method

.method protected abstract s(I)Lcom/google/android/gms/internal/ads/p7;
.end method

.method protected abstract t(I)I
.end method

.method protected abstract u(I)I
.end method

.method protected abstract v(I)Ljava/lang/Object;
.end method
