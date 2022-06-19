.class public final Lcom/google/android/gms/internal/ads/rl0;
.super Lcom/google/android/gms/internal/ads/ak0;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bi;
.implements Lcom/google/android/gms/internal/ads/fg;
.implements Lcom/google/android/gms/internal/ads/kj;
.implements Lcom/google/android/gms/internal/ads/mc;
.implements Lcom/google/android/gms/internal/ads/eb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ak0;",
        "Lcom/google/android/gms/internal/ads/bi;",
        "Lcom/google/android/gms/internal/ads/fg;",
        "Lcom/google/android/gms/internal/ads/kj;",
        "Lcom/google/android/gms/internal/ads/mc;",
        "Lcom/google/android/gms/internal/ads/eb;"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/ads/gl0;

.field private final i:Lcom/google/android/gms/internal/ads/ub;

.field private final j:Lcom/google/android/gms/internal/ads/ub;

.field private final k:Lcom/google/android/gms/internal/ads/hh;

.field private final l:Lcom/google/android/gms/internal/ads/jk0;

.field private m:Lcom/google/android/gms/internal/ads/ib;

.field private n:Ljava/nio/ByteBuffer;

.field private o:Z

.field private final p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/kk0;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/android/gms/internal/ads/zj0;

.field private r:I

.field private s:I

.field private t:J

.field private final u:Ljava/lang/String;

.field private final v:I

.field private final w:Ljava/lang/Object;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/wh;",
            ">;"
        }
    .end annotation
.end field

.field private volatile y:Lcom/google/android/gms/internal/ads/fl0;

.field private final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/cl0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jk0;Lcom/google/android/gms/internal/ads/kk0;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ak0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->w:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->z:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->p:Ljava/lang/ref/WeakReference;

    new-instance p2, Lcom/google/android/gms/internal/ads/gl0;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/gl0;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->h:Lcom/google/android/gms/internal/ads/gl0;

    .line 4
    new-instance v8, Lcom/google/android/gms/internal/ads/zi;

    sget-object v9, Lcom/google/android/gms/internal/ads/kf;->a:Lcom/google/android/gms/internal/ads/kf;

    sget-object v10, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, p1

    move-object v2, v9

    move-object v5, v10

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/kf;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/kj;I)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/rl0;->i:Lcom/google/android/gms/internal/ads/ub;

    new-instance p1, Lcom/google/android/gms/internal/ads/xc;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, v9

    move-object v4, v10

    move-object v5, p0

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/kf;Lcom/google/android/gms/internal/ads/kd;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/mc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->j:Lcom/google/android/gms/internal/ads/ub;

    new-instance v0, Lcom/google/android/gms/internal/ads/dh;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dh;-><init>(Lcom/google/android/gms/internal/ads/ih;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->k:Lcom/google/android/gms/internal/ads/hh;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ForkedExoPlayerAdapter initialize "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/ak0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/ub;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v8, v2, p1

    .line 10
    invoke-static {v2, v0, p2}, Lcom/google/android/gms/internal/ads/jb;->a([Lcom/google/android/gms/internal/ads/ub;Lcom/google/android/gms/internal/ads/lh;Lcom/google/android/gms/internal/ads/gl0;)Lcom/google/android/gms/internal/ads/ib;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    .line 11
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/ib;->t(Lcom/google/android/gms/internal/ads/eb;)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/rl0;->t:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/rl0;->s:I

    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->x:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    if-eqz p3, :cond_1

    .line 13
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->m()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->u:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 14
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->l()I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/rl0;->v:I

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->n:Lcom/google/android/gms/internal/ads/cw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ib;->n()V

    :cond_3
    if-eqz p3, :cond_4

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->H()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    .line 20
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->H()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ib;->k(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 21
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->I()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    .line 22
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->I()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ib;->p(I)V

    :cond_5
    return-void
.end method

.method private final j0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fl0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->c()I

    move-result v0

    return v0
.end method

.method public final C()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->d()Z

    move-result v0

    return v0
.end method

.method public final E(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ib;->o(Z)V

    return-void
.end method

.method public final F(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->h:Lcom/google/android/gms/internal/ads/gl0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl0;->g(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->h:Lcom/google/android/gms/internal/ads/gl0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl0;->h(I)V

    return-void
.end method

.method public final H()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rl0;->j0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final J()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rl0;->j0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fl0;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fl0;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rl0;->j0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->w:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->x:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/rl0;->t:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rl0;->x:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/wh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wh;->a()Ljava/util/Map;

    move-result-object v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 6
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/fu2;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-long/2addr v1, v5

    :try_start_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/rl0;->t:J

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/rl0;->t:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fl0;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/rl0;->s:I

    return v0
.end method

.method public final M(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->k:Lcom/google/android/gms/internal/ads/hh;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/hh;->f(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final R([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/rl0;->S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/rl0;->o:Z

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rl0;->e0(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kg;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_1
    new-array p3, p3, [Lcom/google/android/gms/internal/ads/kg;

    :goto_0
    array-length v0, p1

    if-ge p4, v0, :cond_2

    .line 3
    aget-object v0, p1, p4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/rl0;->e0(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kg;

    move-result-object v0

    aput-object v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/ng;

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/ng;-><init>([Lcom/google/android/gms/internal/ads/kg;)V

    .line 5
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    .line 6
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ib;->q(Lcom/google/android/gms/internal/ads/kg;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/ak0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final T(Lcom/google/android/gms/internal/ads/zj0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ib;->r(Lcom/google/android/gms/internal/ads/eb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->zzi()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    sget-object v0, Lcom/google/android/gms/internal/ads/ak0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final V(Landroid/view/Surface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/hb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->i:Lcom/google/android/gms/internal/ads/ub;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hb;-><init>(Lcom/google/android/gms/internal/ads/gb;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/hb;

    aput-object v0, v1, p1

    .line 2
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ib;->l([Lcom/google/android/gms/internal/ads/hb;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/hb;

    aput-object v0, v1, p1

    .line 3
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ib;->u([Lcom/google/android/gms/internal/ads/hb;)V

    return-void
.end method

.method public final W(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/hb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->j:Lcom/google/android/gms/internal/ads/ub;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hb;-><init>(Lcom/google/android/gms/internal/ads/gb;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/hb;

    aput-object v0, v1, p1

    .line 2
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ib;->l([Lcom/google/android/gms/internal/ads/hb;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/hb;

    aput-object v0, v1, p1

    .line 3
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ib;->u([Lcom/google/android/gms/internal/ads/hb;)V

    return-void
.end method

.method public final X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ib;->f()V

    return-void
.end method

.method public final Y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->m:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ib;->s(J)V

    return-void
.end method

.method public final Z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->h:Lcom/google/android/gms/internal/ads/gl0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl0;->i(I)V

    return-void
.end method

.method public final a0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->h:Lcom/google/android/gms/internal/ads/gl0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl0;->j(I)V

    return-void
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/jk0;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "onLoadException"

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zj0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string v1, "onLoadError"

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zj0;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final b0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cl0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/cl0;->g(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c0(Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/rh;)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/wh;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->w:Ljava/lang/Object;

    .line 2
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->x:Ljava/util/ArrayList;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/wh;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/fl0;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/fl0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->p:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/kk0;

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fl0;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .line 12
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "gcacheHit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fl0;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gcacheDownloaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->y:Lcom/google/android/gms/internal/ads/fl0;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fl0;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/hl0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/hl0;-><init>(Lcom/google/android/gms/internal/ads/kk0;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final d0(Lcom/google/android/gms/internal/ads/qh;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    return-void
.end method

.method final e0(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kg;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/gg;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rl0;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/jl0;

    .line 4
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/jl0;-><init>([B)V

    :cond_0
    move-object v2, v0

    goto :goto_2

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->q1:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/jk0;->j:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    .line 10
    iget v0, v0, Lcom/google/android/gms/internal/ads/jk0;->i:I

    if-lez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/kl0;

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/kl0;-><init>(Lcom/google/android/gms/internal/ads/rl0;Ljava/lang/String;Z)V

    goto :goto_1

    .line 12
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/ll0;

    .line 13
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/ll0;-><init>(Lcom/google/android/gms/internal/ads/rl0;Ljava/lang/String;Z)V

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    .line 15
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/jk0;->j:Z

    if-eqz p2, :cond_6

    new-instance p2, Lcom/google/android/gms/internal/ads/ml0;

    .line 16
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/ml0;-><init>(Lcom/google/android/gms/internal/ads/rl0;Lcom/google/android/gms/internal/ads/ph;)V

    move-object v0, p2

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->n:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/gms/internal/ads/nl0;

    .line 20
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/nl0;-><init>(Lcom/google/android/gms/internal/ads/ph;[B)V

    move-object v2, v1

    .line 21
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->m:Lcom/google/android/gms/internal/ads/cw;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/google/android/gms/internal/ads/ol0;->a:Lcom/google/android/gms/internal/ads/pd;

    goto :goto_3

    .line 24
    :cond_7
    sget-object p2, Lcom/google/android/gms/internal/ads/pl0;->a:Lcom/google/android/gms/internal/ads/pd;

    :goto_3
    move-object v3, p2

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    .line 26
    iget v4, p2, Lcom/google/android/gms/internal/ads/jk0;->k:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    const/4 v7, 0x0

    iget v8, p2, Lcom/google/android/gms/internal/ads/jk0;->g:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/gg;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ph;Lcom/google/android/gms/internal/ads/pd;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/fg;Ljava/lang/String;I)V

    return-object v9
.end method

.method public final bridge synthetic f(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rh;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rl0;->c0(Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/rh;)V

    return-void
.end method

.method final synthetic f0(Lcom/google/android/gms/internal/ads/ph;)Lcom/google/android/gms/internal/ads/qh;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/fl0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl0;->g:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ph;->zza()Lcom/google/android/gms/internal/ads/qh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rl0;->u:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/rl0;->v:I

    new-instance v6, Lcom/google/android/gms/internal/ads/ql0;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/ql0;-><init>(Lcom/google/android/gms/internal/ads/rl0;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/fl0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qh;Ljava/lang/String;ILcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/el0;)V

    return-object v7
.end method

.method public final finalize()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ak0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForkedExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic g0(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zj0;->c(ZJ)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zj0;->t()V

    :cond_0
    return-void
.end method

.method final synthetic h0(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/qh;
    .locals 8

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/th;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    const/4 v2, 0x0

    .line 2
    iget v4, v0, Lcom/google/android/gms/internal/ads/jk0;->d:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/jk0;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/th;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/bi;IIZLcom/google/android/gms/internal/ads/vh;)V

    return-object p2
.end method

.method public final i(IIIF)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zj0;->e(II)V

    :cond_0
    return-void
.end method

.method final synthetic i0(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/qh;
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/cl0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->l:Lcom/google/android/gms/internal/ads/jk0;

    .line 2
    iget v3, v0, Lcom/google/android/gms/internal/ads/jk0;->d:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/jk0;->f:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/jk0;->i:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cl0;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bi;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->z:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzamy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zj0;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/kk0;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->o:F

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->e:I

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->m:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzanm;->n:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    .line 8
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->h:Ljava/lang/String;

    const-string v3, "videoMime"

    .line 9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->i:Ljava/lang/String;

    const-string v3, "videoSampleMime"

    .line 10
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->f:Ljava/lang/String;

    const-string v2, "videoCodec"

    .line 11
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 12
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final p0(Z)V
    .locals 0

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/tb;)V
    .locals 0

    return-void
.end method

.method public final t(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rl0;->q:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zj0;->a(I)V

    :cond_0
    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic w(Ljava/lang/Object;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/rl0;->r:I

    return-void
.end method

.method public final x(IJ)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/internal/ads/rl0;->s:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/rl0;->s:I

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl0;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/kk0;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->h:Ljava/lang/String;

    const-string v3, "audioMime"

    .line 6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->i:Ljava/lang/String;

    const-string v3, "audioSampleMime"

    .line 7
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->f:Ljava/lang/String;

    const-string v2, "audioCodec"

    .line 8
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/ads/yg;Lcom/google/android/gms/internal/ads/jh;)V
    .locals 0

    return-void
.end method
