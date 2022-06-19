.class final Lcom/google/android/gms/internal/ads/y5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/gms/internal/ads/lk3;",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/x5;

.field private final e:Lcom/google/android/gms/internal/ads/vk3;

.field private final f:Lcom/google/android/gms/internal/ads/gj2;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/w5;",
            "Lcom/google/android/gms/internal/ads/v5;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/google/android/gms/internal/ads/ol;

.field private k:Lcom/google/android/gms/internal/ads/em3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x5;Lcom/google/android/gms/internal/ads/rz0;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->d:Lcom/google/android/gms/internal/ads/x5;

    new-instance p1, Lcom/google/android/gms/internal/ads/em3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/em3;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->k:Lcom/google/android/gms/internal/ads/em3;

    new-instance p1, Ljava/util/IdentityHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->b:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/vk3;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vk3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->e:Lcom/google/android/gms/internal/ads/vk3;

    new-instance v0, Lcom/google/android/gms/internal/ads/gj2;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gj2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->f:Lcom/google/android/gms/internal/ads/gj2;

    new-instance v1, Ljava/util/HashMap;

    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/vk3;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V

    .line 10
    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/ads/gj2;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fk2;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/y5;)Lcom/google/android/gms/internal/ads/vk3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/y5;->e:Lcom/google/android/gms/internal/ads/vk3;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/y5;)Lcom/google/android/gms/internal/ads/gj2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/y5;->f:Lcom/google/android/gms/internal/ads/gj2;

    return-object p0
.end method

.method private final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/w5;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/y5;->q(Lcom/google/android/gms/internal/ads/w5;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final q(Lcom/google/android/gms/internal/ads/w5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/v5;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/v5;->b:Lcom/google/android/gms/internal/ads/nk3;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ok3;->h(Lcom/google/android/gms/internal/ads/nk3;)V

    :cond_0
    return-void
.end method

.method private final r(II)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w5;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->c:Ljava/util/Map;

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/w5;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ik3;->D()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v1

    neg-int v1, v1

    .line 5
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/y5;->s(II)V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/w5;->e:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/y5;->i:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/y5;->u(Lcom/google/android/gms/internal/ads/w5;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final s(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w5;

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/w5;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/w5;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final t(Lcom/google/android/gms/internal/ads/w5;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    new-instance v1, Lcom/google/android/gms/internal/ads/t5;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/y5;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/u5;

    .line 3
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/u5;-><init>(Lcom/google/android/gms/internal/ads/y5;Lcom/google/android/gms/internal/ads/w5;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/gms/internal/ads/v5;

    .line 4
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/v5;-><init>(Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/nk3;Lcom/google/android/gms/internal/ads/u5;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/wa;->P()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    .line 6
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/ok3;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/wa;->P()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    .line 9
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 10
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/ok3;->i(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fk2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->j:Lcom/google/android/gms/internal/ads/ol;

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ok3;->a(Lcom/google/android/gms/internal/ads/nk3;Lcom/google/android/gms/internal/ads/ol;)V

    return-void
.end method

.method private final u(Lcom/google/android/gms/internal/ads/w5;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/w5;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/v5;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/v5;->b:Lcom/google/android/gms/internal/ads/nk3;

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ok3;->d(Lcom/google/android/gms/internal/ads/nk3;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/v5;->c:Lcom/google/android/gms/internal/ads/u5;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ok3;->f(Lcom/google/android/gms/internal/ads/wk3;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/v5;->c:Lcom/google/android/gms/internal/ads/u5;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ok3;->g(Lcom/google/android/gms/internal/ads/fk2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/y5;->i:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/y5;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->j:Lcom/google/android/gms/internal/ads/ol;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w5;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/y5;->t(Lcom/google/android/gms/internal/ads/w5;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    .line 5
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/y5;->i:Z

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/lk3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w5;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ik3;->c(Lcom/google/android/gms/internal/ads/lk3;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/ek3;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ek3;->d:Lcom/google/android/gms/internal/ads/mk3;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->b:Ljava/util/IdentityHashMap;

    .line 6
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/y5;->p()V

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/y5;->u(Lcom/google/android/gms/internal/ads/w5;)V

    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/v5;

    .line 2
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/v5;->b:Lcom/google/android/gms/internal/ads/nk3;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ok3;->d(Lcom/google/android/gms/internal/ads/nk3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 3
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/v5;->c:Lcom/google/android/gms/internal/ads/u5;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ok3;->f(Lcom/google/android/gms/internal/ads/wk3;)V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/v5;->c:Lcom/google/android/gms/internal/ads/u5;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ok3;->g(Lcom/google/android/gms/internal/ads/fk2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/y5;->i:Z

    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/p7;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/w5;

    .line 4
    iput v1, v2, Lcom/google/android/gms/internal/ads/w5;->d:I

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ik3;->D()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/r6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y5;->k:Lcom/google/android/gms/internal/ads/em3;

    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/r6;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/em3;[B)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/p7;->a:Lcom/google/android/gms/internal/ads/p7;

    return-object v0
.end method

.method final synthetic i(Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/p7;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->d:Lcom/google/android/gms/internal/ads/x5;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/x5;->i()V

    return-void
.end method

.method public final j(Ljava/util/List;Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;",
            "Lcom/google/android/gms/internal/ads/em3;",
            ")",
            "Lcom/google/android/gms/internal/ads/p7;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->r(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/y5;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    return-object p1
.end method

.method public final k(ILjava/util/List;Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;",
            "Lcom/google/android/gms/internal/ads/em3;",
            ")",
            "Lcom/google/android/gms/internal/ads/p7;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y5;->k:Lcom/google/android/gms/internal/ads/em3;

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w5;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/w5;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ik3;->D()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v2

    .line 6
    iget v1, v1, Lcom/google/android/gms/internal/ads/w5;->d:I

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/w5;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/w5;->a(I)V

    .line 10
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ik3;->D()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p7;->a()I

    move-result v1

    .line 12
    invoke-direct {p0, p3, v1}, Lcom/google/android/gms/internal/ads/y5;->s(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->a:Ljava/util/List;

    .line 13
    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->c:Ljava/util/Map;

    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/w5;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/y5;->i:Z

    if-eqz v1, :cond_2

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/y5;->t(Lcom/google/android/gms/internal/ads/w5;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->b:Ljava/util/IdentityHashMap;

    .line 16
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    .line 17
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/y5;->q(Lcom/google/android/gms/internal/ads/w5;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->h()Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    return-object p1
.end method

.method public final l(IILcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->d()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y5;->k:Lcom/google/android/gms/internal/ads/em3;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/y5;->r(II)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->h()Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    return-object p1
.end method

.method public final m(IIILcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->d()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->k:Lcom/google/android/gms/internal/ads/em3;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->h()Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lcom/google/android/gms/internal/ads/em3;)Lcom/google/android/gms/internal/ads/p7;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->d()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/em3;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/em3;->h()Lcom/google/android/gms/internal/ads/em3;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/em3;->f(II)Lcom/google/android/gms/internal/ads/em3;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->k:Lcom/google/android/gms/internal/ads/em3;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y5;->h()Lcom/google/android/gms/internal/ads/p7;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/lk3;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/mk3;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y5;->c:Ljava/util/Map;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w5;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->h:Ljava/util/Set;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y5;->g:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/v5;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v5;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/v5;->b:Lcom/google/android/gms/internal/ads/nk3;

    .line 9
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ok3;->k(Lcom/google/android/gms/internal/ads/nk3;)V

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/w5;->c:Ljava/util/List;

    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/w5;->a:Lcom/google/android/gms/internal/ads/ik3;

    .line 12
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ik3;->A(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/ek3;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y5;->b:Ljava/util/IdentityHashMap;

    .line 13
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/y5;->p()V

    return-object p1
.end method
