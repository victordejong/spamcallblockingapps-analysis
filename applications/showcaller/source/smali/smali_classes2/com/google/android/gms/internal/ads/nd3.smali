.class final Lcom/google/android/gms/internal/ads/nd3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xf3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/md3;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/md3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/se3;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/md3;->e:Lcom/google/android/gms/internal/ads/nd3;

    return-void
.end method

.method private final K(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1
.end method

.method private final L(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cg3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    iget v2, v1, Lcom/google/android/gms/internal/ads/md3;->c:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/md3;->d:I

    if-ge v2, v3, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/md3;->A(I)I

    move-result v0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cg3;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    iget v3, v2, Lcom/google/android/gms/internal/ads/md3;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/md3;->c:I

    .line 4
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/cg3;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xf3;Lcom/google/android/gms/internal/ads/vd3;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/cg3;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/md3;->h(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    iget p2, p1, Lcom/google/android/gms/internal/ads/md3;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/md3;->c:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/md3;->a(I)V

    return-object v1

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzggm;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzggm;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1
.end method

.method private final M(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cg3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cg3;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/ads/cg3;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xf3;Lcom/google/android/gms/internal/ads/vd3;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/cg3;->d(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzk()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I

    .line 6
    throw p1
.end method

.method private final N(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    throw p1
.end method

.method private static final O(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzk()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p0

    throw p0
.end method

.method private static final P(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzk()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p0

    throw p0
.end method

.method public static Q(Lcom/google/android/gms/internal/ads/md3;)Lcom/google/android/gms/internal/ads/nd3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/md3;->e:Lcom/google/android/gms/internal/ads/nd3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/nd3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nd3;-><init>(Lcom/google/android/gms/internal/ads/md3;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/bf3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/bf3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/je3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/je3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/bf3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/bf3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzgex;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nd3;->k()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1
.end method

.method public final E(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/je3;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/je3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd3;->O(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd3;->O(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final F(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/bf3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/bf3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd3;->P(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->o()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd3;->P(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final G()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/je3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/je3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final I(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/je3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/je3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final J(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/we3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/we3;

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nd3;->k()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/we3;->g(Lcom/google/android/gms/internal/ads/zzgex;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nd3;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nd3;->j()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 10
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1
.end method

.method public final a()D
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->j()D

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    return v0
.end method

.method public final d()F
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->k()F

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/md3;->i(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->p()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->q()Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->t()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/je3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/je3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/be3;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/be3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->k()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/be3;->d(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd3;->O(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->k()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/be3;->d(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd3;->O(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->v()I

    move-result v0

    return v0
.end method

.method public final p(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yc3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/yc3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->q()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yc3;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->q()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yc3;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/bf3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/bf3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd3;->P(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->x()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd3;->P(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cg3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/nd3;->M(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    return v0
.end method

.method public final t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/sd3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/sd3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd3;->P(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->j()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/sd3;->d(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->j()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sd3;->d(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd3;->P(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->j()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->j()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final u(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/je3;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/je3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd3;->O(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/je3;->d0(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd3;->O(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final v(Ljava/util/List;Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/cg3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/nd3;->L(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1
.end method

.method public final w()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->y()I

    move-result v0

    return v0
.end method

.method public final x(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cg3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/nd3;->L(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/util/List;Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/cg3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/vd3;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/nd3;->M(Lcom/google/android/gms/internal/ads/cg3;Lcom/google/android/gms/internal/ads/vd3;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1
.end method

.method public final z(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/bf3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/bf3;

    iget p1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bf3;->h(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->u()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/nd3;->N(I)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object p1

    throw p1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nd3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/nd3;->d:I

    return-void
.end method

.method public final zzg()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->n()I

    move-result v0

    return v0
.end method

.method public final zzt()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->w()I

    move-result v0

    return v0
.end method

.method public final zzu()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd3;->K(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd3;->a:Lcom/google/android/gms/internal/ads/md3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/md3;->x()J

    move-result-wide v0

    return-wide v0
.end method
