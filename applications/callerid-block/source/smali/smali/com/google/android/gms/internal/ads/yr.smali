.class public final Lcom/google/android/gms/internal/ads/yr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ir2;
.implements Lcom/google/android/gms/internal/ads/mp2;
.implements Lcom/google/android/gms/internal/ads/ss2;
.implements Lcom/google/android/gms/internal/ads/zl2;
.implements Lcom/google/android/gms/internal/ads/sk2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ir2;",
        "Lcom/google/android/gms/internal/ads/mp2;",
        "Lcom/google/android/gms/internal/ads/ss2;",
        "Lcom/google/android/gms/internal/ads/zl2;",
        "Lcom/google/android/gms/internal/ads/sk2;"
    }
.end annotation


# static fields
.field static u:I

.field static v:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/nr;

.field private final d:Lcom/google/android/gms/internal/ads/hl2;

.field private final e:Lcom/google/android/gms/internal/ads/hl2;

.field private final f:Lcom/google/android/gms/internal/ads/pq2;

.field private final g:Lcom/google/android/gms/internal/ads/qq;

.field private h:Lcom/google/android/gms/internal/ads/vk2;

.field private i:Ljava/nio/ByteBuffer;

.field private j:Z

.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/rq;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/gms/internal/ads/xr;

.field private m:I

.field private n:I

.field private o:J

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/dr2;",
            ">;"
        }
    .end annotation
.end field

.field private volatile s:Lcom/google/android/gms/internal/ads/mr;

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/jr;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qq;Lcom/google/android/gms/internal/ads/rq;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->t:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->k:Ljava/lang/ref/WeakReference;

    new-instance p2, Lcom/google/android/gms/internal/ads/nr;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/nr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->c:Lcom/google/android/gms/internal/ads/nr;

    new-instance v8, Lcom/google/android/gms/internal/ads/gs2;

    sget-object v9, Lcom/google/android/gms/internal/ads/ro2;->a:Lcom/google/android/gms/internal/ads/ro2;

    sget-object v10, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, p1

    move-object v2, v9

    move-object v5, v10

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/gs2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ro2;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/ss2;I)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/yr;->d:Lcom/google/android/gms/internal/ads/hl2;

    new-instance p1, Lcom/google/android/gms/internal/ads/jm2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, v9

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/jm2;-><init>(Lcom/google/android/gms/internal/ads/ro2;Lcom/google/android/gms/internal/ads/vm2;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zl2;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->e:Lcom/google/android/gms/internal/ads/hl2;

    new-instance v0, Lcom/google/android/gms/internal/ads/lq2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/lq2;-><init>(Lcom/google/android/gms/internal/ads/qq2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->f:Lcom/google/android/gms/internal/ads/pq2;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/y0;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ExoPlayerAdapter initialize "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    :cond_0
    sget v2, Lcom/google/android/gms/internal/ads/yr;->u:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/google/android/gms/internal/ads/yr;->u:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/hl2;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    aput-object v8, v2, v3

    invoke-static {v2, v0, p2}, Lcom/google/android/gms/internal/ads/wk2;->a([Lcom/google/android/gms/internal/ads/hl2;Lcom/google/android/gms/internal/ads/tq2;Lcom/google/android/gms/internal/ads/nr;)Lcom/google/android/gms/internal/ads/vk2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/vk2;->b(Lcom/google/android/gms/internal/ads/sk2;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yr;->o:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/yr;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->r:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->p()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->p:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->n()I

    move-result v4

    :cond_2
    iput v4, p0, Lcom/google/android/gms/internal/ads/yr;->q:I

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->l:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vk2;->q()V

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->N()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->N()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/vk2;->o(I)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->I()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/rq;->I()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/vk2;->a(I)V

    :cond_5
    return-void
.end method

.method public static B()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/yr;->u:I

    return v0
.end method

.method public static C()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/yr;->v:I

    return v0
.end method

.method private final z()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/ads/vk2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    return-object v0
.end method

.method public final D(Lcom/google/android/gms/internal/ads/xr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->l:Lcom/google/android/gms/internal/ads/xr;

    return-void
.end method

.method public final E()Lcom/google/android/gms/internal/ads/nr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->c:Lcom/google/android/gms/internal/ads/nr;

    return-object v0
.end method

.method public final F([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/yr;->G([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final G([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/yr;->j:Z

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/yr;->u(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rp2;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p3, p3, [Lcom/google/android/gms/internal/ads/rp2;

    :goto_0
    array-length v1, p1

    if-ge p4, v1, :cond_2

    aget-object v1, p1, p4

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/yr;->u(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rp2;

    move-result-object v1

    aput-object v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/vp2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/vp2;-><init>([Lcom/google/android/gms/internal/ads/rp2;)V

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/vk2;->g(Lcom/google/android/gms/internal/ads/rp2;)V

    sget p1, Lcom/google/android/gms/internal/ads/yr;->v:I

    add-int/2addr p1, v0

    sput p1, Lcom/google/android/gms/internal/ads/yr;->v:I

    return-void
.end method

.method public final H()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/vk2;->n(Lcom/google/android/gms/internal/ads/sk2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    sget v0, Lcom/google/android/gms/internal/ads/yr;->v:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/yr;->v:I

    :cond_0
    return-void
.end method

.method public final I()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final J()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yr;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final K()J
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yr;->z()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mr;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()J
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yr;->z()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yr;->o:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yr;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dr2;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dr2;->a()Ljava/util/Map;

    move-result-object v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "content-length"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/wv1;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :cond_1
    :goto_2
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yr;->o:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yr;->o:J

    return-wide v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final M0(Z)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gq2;Lcom/google/android/gms/internal/ads/rq2;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->l:Lcom/google/android/gms/internal/ads/xr;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/qq;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "onLoadException"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xr;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string v1, "onLoadError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xr;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zq2;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/yr;->o(Lcom/google/android/gms/internal/ads/yq2;Lcom/google/android/gms/internal/ads/zq2;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzif;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->l:Lcom/google/android/gms/internal/ads/xr;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xr;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/yr;->u:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/yr;->u:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/y0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(IIIF)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yr;->l:Lcom/google/android/gms/internal/ads/xr;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/xr;->e(II)V

    :cond_0
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzit;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rq;

    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->d1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzit;->f:Ljava/lang/String;

    const-string v3, "audioMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzit;->g:Ljava/lang/String;

    const-string v3, "audioSampleMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzit;->d:Ljava/lang/String;

    const-string v2, "audioCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final i(ZI)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->l:Lcom/google/android/gms/internal/ads/xr;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/xr;->f(I)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzit;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rq;

    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->d1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzit;->m:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzit;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzit;->k:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzit;->l:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzit;->f:Ljava/lang/String;

    const-string v3, "videoMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzit;->g:Ljava/lang/String;

    const-string v3, "videoSampleMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzit;->d:Ljava/lang/String;

    const-string v2, "videoCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic k(Ljava/lang/Object;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    return-void
.end method

.method public final l(IJ)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/internal/ads/yr;->n:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/yr;->n:I

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/ads/gl2;)V
    .locals 0

    return-void
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yr;->n:I

    return v0
.end method

.method public final o(Lcom/google/android/gms/internal/ads/yq2;Lcom/google/android/gms/internal/ads/zq2;)V
    .locals 2

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/dr2;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->r:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/dr2;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/mr;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/mr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/rq;

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->d1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mr;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheHit"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->s:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheDownloaded"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/or;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/or;-><init>(Lcom/google/android/gms/internal/ads/rq;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/yq2;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/yr;->m:I

    return-void
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->t:Ljava/util/Set;

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

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/jr;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/jr;->e(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final r(Landroid/view/Surface;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/uk2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yr;->d:Lcom/google/android/gms/internal/ads/hl2;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/uk2;-><init>(Lcom/google/android/gms/internal/ads/tk2;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    new-array p2, v3, [Lcom/google/android/gms/internal/ads/uk2;

    aput-object v1, p2, p1

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/vk2;->h([Lcom/google/android/gms/internal/ads/uk2;)V

    return-void

    :cond_1
    new-array p2, v3, [Lcom/google/android/gms/internal/ads/uk2;

    aput-object v1, p2, p1

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/vk2;->j([Lcom/google/android/gms/internal/ads/uk2;)V

    return-void
.end method

.method final s(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/uk2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr;->e:Lcom/google/android/gms/internal/ads/hl2;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/uk2;-><init>(Lcom/google/android/gms/internal/ads/tk2;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/uk2;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/vk2;->h([Lcom/google/android/gms/internal/ads/uk2;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/uk2;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/vk2;->j([Lcom/google/android/gms/internal/ads/uk2;)V

    return-void
.end method

.method final t(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->h:Lcom/google/android/gms/internal/ads/vk2;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr;->f:Lcom/google/android/gms/internal/ads/pq2;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/pq2;->f(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final u(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rp2;
    .locals 10

    new-instance v9, Lcom/google/android/gms/internal/ads/np2;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yr;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/pr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/pr;-><init>([B)V

    :goto_0
    move-object v2, v0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->f1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->d1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qq;->i:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    iget v2, v0, Lcom/google/android/gms/internal/ads/qq;->h:I

    if-lez v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/ads/qr;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/qr;-><init>(Lcom/google/android/gms/internal/ads/yr;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/rr;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/rr;-><init>(Lcom/google/android/gms/internal/ads/yr;Ljava/lang/String;Z)V

    :goto_2
    iget-boolean p2, v0, Lcom/google/android/gms/internal/ads/qq;->i:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/ads/sr;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/ads/sr;-><init>(Lcom/google/android/gms/internal/ads/yr;Lcom/google/android/gms/internal/ads/xq2;)V

    move-object v2, p2

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/tr;

    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/ads/tr;-><init>(Lcom/google/android/gms/internal/ads/xq2;[B)V

    goto :goto_0

    :cond_6
    :goto_3
    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->k:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/google/android/gms/internal/ads/ur;->a:Lcom/google/android/gms/internal/ads/an2;

    goto :goto_4

    :cond_7
    sget-object p2, Lcom/google/android/gms/internal/ads/vr;->a:Lcom/google/android/gms/internal/ads/an2;

    :goto_4
    move-object v3, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    iget v4, p2, Lcom/google/android/gms/internal/ads/qq;->j:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    const/4 v7, 0x0

    iget v8, p2, Lcom/google/android/gms/internal/ads/qq;->f:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/np2;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/xq2;Lcom/google/android/gms/internal/ads/an2;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/mp2;Ljava/lang/String;I)V

    return-object v9
.end method

.method final synthetic v(Lcom/google/android/gms/internal/ads/xq2;)Lcom/google/android/gms/internal/ads/yq2;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/mr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr;->b:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xq2;->zza()Lcom/google/android/gms/internal/ads/yq2;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yr;->p:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/yr;->q:I

    new-instance v6, Lcom/google/android/gms/internal/ads/wr;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/wr;-><init>(Lcom/google/android/gms/internal/ads/yr;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yq2;Ljava/lang/String;ILcom/google/android/gms/internal/ads/ir2;Lcom/google/android/gms/internal/ads/lr;)V

    return-object v7
.end method

.method final synthetic w(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->l:Lcom/google/android/gms/internal/ads/xr;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/xr;->d(ZJ)V

    :cond_0
    return-void
.end method

.method final synthetic x(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/yq2;
    .locals 8

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/br2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    const/4 v2, 0x0

    iget v4, v0, Lcom/google/android/gms/internal/ads/qq;->d:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/qq;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/br2;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ur2;Lcom/google/android/gms/internal/ads/ir2;IIZLcom/google/android/gms/internal/ads/cr2;)V

    return-object p2
.end method

.method final synthetic y(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/yq2;
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->g:Lcom/google/android/gms/internal/ads/qq;

    iget v3, v0, Lcom/google/android/gms/internal/ads/qq;->d:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/qq;->e:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/qq;->h:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/jr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ir2;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr;->t:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
