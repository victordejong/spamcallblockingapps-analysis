.class public final Lcom/google/android/gms/internal/ads/mn0;
.super Lcom/google/android/gms/internal/ads/ak0;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ol;
.implements Lcom/google/android/gms/internal/ads/u11;


# static fields
.field public static final synthetic f:I


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/ads/wm0;

.field private final i:Lcom/google/android/gms/internal/ads/zm3;

.field private final j:Lcom/google/android/gms/internal/ads/jk0;

.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/kk0;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/gms/internal/ads/ql3;

.field private m:Lcom/google/android/gms/internal/ads/d7;

.field private n:Ljava/nio/ByteBuffer;

.field private o:Z

.field private p:Lcom/google/android/gms/internal/ads/zj0;

.field private q:I

.field private r:I

.field private s:J

.field private final t:Ljava/lang/String;

.field private final u:I

.field private final v:Ljava/lang/Object;

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/mj;",
            ">;"
        }
    .end annotation
.end field

.field private volatile x:Lcom/google/android/gms/internal/ads/zm0;

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/vm0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jk0;Lcom/google/android/gms/internal/ads/kk0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ak0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->v:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->y:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->j:Lcom/google/android/gms/internal/ads/jk0;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->k:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/wm0;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wm0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->h:Lcom/google/android/gms/internal/ads/wm0;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zm3;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zm3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mn0;->i:Lcom/google/android/gms/internal/ads/zm3;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfficialSimpleExoPlayerAdapter initialize "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/ak0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, Lcom/google/android/gms/internal/ads/h3;

    new-instance v3, Lcom/google/android/gms/internal/ads/hn0;

    .line 8
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/hn0;-><init>(Lcom/google/android/gms/internal/ads/mn0;)V

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/h3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w6;)V

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/h3;->a(Lcom/google/android/gms/internal/ads/fn3;)Lcom/google/android/gms/internal/ads/h3;

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/h3;->b(Lcom/google/android/gms/internal/ads/w4;)Lcom/google/android/gms/internal/ads/h3;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/h3;->c()Lcom/google/android/gms/internal/ads/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->o1:Lcom/google/android/gms/internal/ads/cw;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/d7;->v(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    .line 16
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/d7;->f(Lcom/google/android/gms/internal/ads/u11;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/mn0;->q:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mn0;->s:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/mn0;->r:I

    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->w:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    if-eqz p3, :cond_2

    .line 18
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->t:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->l()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/mn0;->u:I

    new-instance v0, Lcom/google/android/gms/internal/ads/ql3;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/kk0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    invoke-virtual {v2, p1, p3}, Lcom/google/android/gms/ads/internal/util/c2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/mn0;->o:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    if-lez p3, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lcom/google/android/gms/internal/ads/cn0;

    .line 24
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/cn0;-><init>([B)V

    goto :goto_4

    .line 25
    :cond_4
    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->q1:Lcom/google/android/gms/internal/ads/cw;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 27
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 29
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/jk0;->j:Z

    if-nez p3, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 30
    :cond_7
    iget p3, p2, Lcom/google/android/gms/internal/ads/jk0;->i:I

    if-lez p3, :cond_8

    new-instance p3, Lcom/google/android/gms/internal/ads/dn0;

    .line 31
    invoke-direct {p3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/dn0;-><init>(Lcom/google/android/gms/internal/ads/mn0;Ljava/lang/String;Z)V

    goto :goto_2

    .line 32
    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/en0;

    .line 33
    invoke-direct {p3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/en0;-><init>(Lcom/google/android/gms/internal/ads/mn0;Ljava/lang/String;Z)V

    .line 34
    :goto_2
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/jk0;->j:Z

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/fn0;

    .line 35
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/fn0;-><init>(Lcom/google/android/gms/internal/ads/mn0;Lcom/google/android/gms/internal/ads/y6;)V

    move-object p2, p1

    goto :goto_3

    :cond_9
    move-object p2, p3

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_a

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p3, Lcom/google/android/gms/internal/ads/gn0;

    .line 39
    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/gn0;-><init>(Lcom/google/android/gms/internal/ads/y6;[B)V

    move-object p2, p3

    .line 40
    :cond_a
    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->m:Lcom/google/android/gms/internal/ads/cw;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 43
    sget-object p1, Lcom/google/android/gms/internal/ads/in0;->b:Lcom/google/android/gms/internal/ads/br3;

    goto :goto_5

    .line 44
    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/jn0;->b:Lcom/google/android/gms/internal/ads/br3;

    .line 45
    :goto_5
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/ql3;-><init>(Lcom/google/android/gms/internal/ads/y6;Lcom/google/android/gms/internal/ads/br3;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->l:Lcom/google/android/gms/internal/ads/ql3;

    return-void
.end method

.method private final f0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zm0;->u()Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d7;->h()I

    move-result v0

    return v0
.end method

.method public final C()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d7;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d7;->l()Z

    move-result v0

    return v0
.end method

.method public final E(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d7;->k(Z)V

    return-void
.end method

.method public final F(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->h:Lcom/google/android/gms/internal/ads/wm0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wm0;->i(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->h:Lcom/google/android/gms/internal/ads/wm0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wm0;->j(I)V

    return-void
.end method

.method public final H()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d7;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mn0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/mn0;->q:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final J()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mn0;->f0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zm0;->v()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/mn0;->q:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zm0;->n()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mn0;->f0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->v:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mn0;->w:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mn0;->s:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mn0;->w:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/mj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/mj;->d()Ljava/util/Map;

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
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/mn0;->s:J

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/mn0;->s:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zm0;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/mn0;->r:I

    return v0
.end method

.method public final M(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d7;->p()I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mn0;->i:Lcom/google/android/gms/internal/ads/zm3;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zm3;->i()Lcom/google/android/gms/internal/ads/tm3;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/tm3;->g()Lcom/google/android/gms/internal/ads/um3;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    .line 4
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/um3;->s(IZ)Lcom/google/android/gms/internal/ads/um3;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zm3;->j(Lcom/google/android/gms/internal/ads/um3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d7;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mn0;->q:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final R([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/mn0;->S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mn0;->n:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/mn0;->o:Z

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mn0;->g0(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/ok3;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_1
    new-array p2, p2, [Lcom/google/android/gms/internal/ads/ok3;

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    .line 3
    aget-object v0, p1, p3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mn0;->g0(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/ok3;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/bl3;

    .line 5
    invoke-direct {p1, p4, p4, p2}, Lcom/google/android/gms/internal/ads/bl3;-><init>(ZZ[Lcom/google/android/gms/internal/ads/ok3;)V

    .line 6
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/d7;->j(Lcom/google/android/gms/internal/ads/ok3;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d7;->i()V

    sget-object p1, Lcom/google/android/gms/internal/ads/ak0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final T(Lcom/google/android/gms/internal/ads/zj0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/d7;->g(Lcom/google/android/gms/internal/ads/u11;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d7;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    sget-object v0, Lcom/google/android/gms/internal/ads/ak0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final V(Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/d7;->h0(Landroid/view/Surface;)V

    return-void
.end method

.method public final W(FZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/d7;->e(F)V

    return-void
.end method

.method public final X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/n6;->M(Z)V

    return-void
.end method

.method public final Y(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->m:Lcom/google/android/gms/internal/ads/d7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/n6;->L(IJ)V

    return-void
.end method

.method public final Z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->h:Lcom/google/android/gms/internal/ads/wm0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wm0;->k(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/kk0;

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/HashMap;

    .line 5
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    const-string v1, "audioMime"

    .line 6
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v1, "audioSampleMime"

    .line 7
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    const-string v0, "audioCodec"

    .line 8
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onMetadataEvent"

    .line 9
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->h:Lcom/google/android/gms/internal/ads/wm0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wm0;->l(I)V

    return-void
.end method

.method public final b0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->y:Ljava/util/Set;

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

    check-cast v1, Lcom/google/android/gms/internal/ads/vm0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/vm0;->u(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/fb;ZI)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/mn0;->q:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/mn0;->q:I

    return-void
.end method

.method final synthetic c0(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zj0;->c(ZJ)V

    :cond_0
    return-void
.end method

.method final synthetic d0(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/w7;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dc;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dc;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dc;

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 3
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dc;->e(Lcom/google/android/gms/internal/ads/ol;)Lcom/google/android/gms/internal/ads/dc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->j:Lcom/google/android/gms/internal/ads/jk0;

    iget p2, p2, Lcom/google/android/gms/internal/ads/jk0;->d:I

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dc;->b(I)Lcom/google/android/gms/internal/ads/dc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->j:Lcom/google/android/gms/internal/ads/jk0;

    iget p2, p2, Lcom/google/android/gms/internal/ads/jk0;->f:I

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dc;->c(I)Lcom/google/android/gms/internal/ads/dc;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dc;->d(Z)Lcom/google/android/gms/internal/ads/dc;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dc;->f()Lcom/google/android/gms/internal/ads/zd;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/zzahc;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_0

    const-string v0, "onPlayerError"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zj0;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method final synthetic e0(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/w7;
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
    new-instance p2, Lcom/google/android/gms/internal/ads/vm0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->j:Lcom/google/android/gms/internal/ads/jk0;

    .line 2
    iget v3, v0, Lcom/google/android/gms/internal/ads/jk0;->d:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/jk0;->f:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/jk0;->i:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vm0;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ol;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->y:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
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

    const-string v1, "OfficialSimpleExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->j:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/jk0;->l:Z

    if-eqz p2, :cond_0

    const-string p2, "onLoadException"

    .line 2
    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zj0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "onLoadError"

    .line 3
    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zj0;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method final g0(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/ok3;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a5;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a5;->b(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/a5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a5;->c()Lcom/google/android/gms/internal/ads/j5;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->l:Lcom/google/android/gms/internal/ads/ql3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mn0;->j:Lcom/google/android/gms/internal/ads/jk0;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/jk0;->g:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ql3;->a(I)Lcom/google/android/gms/internal/ads/ql3;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ql3;->b(Lcom/google/android/gms/internal/ads/j5;)Lcom/google/android/gms/internal/ads/sl3;

    move-result-object p1

    return-object p1
.end method

.method final synthetic h0(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/up3;Lcom/google/android/gms/internal/ads/ii1;Lcom/google/android/gms/internal/ads/w8;Lcom/google/android/gms/internal/ads/t7;)[Lcom/google/android/gms/internal/ads/t6;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/x92;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mn0;->g:Landroid/content/Context;

    sget-object v13, Lcom/google/android/gms/internal/ads/g03;->a:Lcom/google/android/gms/internal/ads/g03;

    const/4 v14, 0x0

    new-array v1, v14, [Lcom/google/android/gms/internal/ads/x51;

    new-instance v8, Lcom/google/android/gms/internal/ads/t52;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v8, v3, v1, v14}, Lcom/google/android/gms/internal/ads/t52;-><init>(Lcom/google/android/gms/internal/ads/v21;[Lcom/google/android/gms/internal/ads/x51;Z)V

    sget-object v12, Lcom/google/android/gms/internal/ads/av2;->a:Lcom/google/android/gms/internal/ads/av2;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/x92;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/av2;Lcom/google/android/gms/internal/ads/g03;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/ii1;Lcom/google/android/gms/internal/ads/jo1;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zo3;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/mn0;->g:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const/16 v16, 0x0

    const/16 v19, -0x1

    move-object v10, v1

    const/4 v4, 0x0

    move-wide v14, v2

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    .line 5
    invoke-direct/range {v10 .. v19}, Lcom/google/android/gms/internal/ads/zo3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/av2;Lcom/google/android/gms/internal/ads/g03;JZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/up3;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/t6;

    aput-object v9, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method final synthetic i0(Lcom/google/android/gms/internal/ads/y6;)Lcom/google/android/gms/internal/ads/w7;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zm0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mn0;->g:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/y6;->zza()Lcom/google/android/gms/internal/ads/w7;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mn0;->t:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/mn0;->u:I

    new-instance v6, Lcom/google/android/gms/internal/ads/ln0;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/ln0;-><init>(Lcom/google/android/gms/internal/ads/mn0;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zm0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w7;Ljava/lang/String;ILcom/google/android/gms/internal/ads/ol;Lcom/google/android/gms/internal/ads/ym0;)V

    return-object v7
.end method

.method public final j(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/fb;Z)V
    .locals 0

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/kk0;

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/HashMap;

    .line 5
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget v0, p2, Lcom/google/android/gms/internal/ads/u4;->u:F

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameRate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/u4;->j:I

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitRate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/u4;->s:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/u4;->t:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    const-string v1, "videoMime"

    .line 9
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v1, "videoSampleMime"

    .line 10
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    const-string v0, "videoCodec"

    .line 11
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onMetadataEvent"

    .line 12
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/fb;Z)V
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/mj;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->v:Ljava/lang/Object;

    .line 2
    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mn0;->w:Ljava/util/ArrayList;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/mj;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zm0;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zm0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->k:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/kk0;

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zm0;->t()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .line 12
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "gcacheHit"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zm0;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "gcacheDownloaded"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn0;->x:Lcom/google/android/gms/internal/ads/zm0;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zm0;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p3, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v0, Lcom/google/android/gms/internal/ads/bn0;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bn0;-><init>(Lcom/google/android/gms/internal/ads/kk0;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/s01;Lcom/google/android/gms/internal/ads/z04;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/z04;->c:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/z04;->d:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zj0;->e(II)V

    :cond_0
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/s01;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zj0;->a(I)V

    :cond_0
    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/s01;IJ)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/mn0;->r:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/mn0;->r:I

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/fb;Z)V
    .locals 0

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/s01;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mn0;->p:Lcom/google/android/gms/internal/ads/zj0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zj0;->t()V

    :cond_0
    return-void
.end method
