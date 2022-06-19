.class public final Lcom/google/android/gms/internal/ads/zzbef;
.super Lcom/google/android/gms/internal/ads/zzbcy;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/xr;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/rq;

.field private final e:Lcom/google/android/gms/internal/ads/sq;

.field private final f:Z

.field private final g:Lcom/google/android/gms/internal/ads/qq;

.field private h:Lcom/google/android/gms/internal/ads/aq;

.field private i:Landroid/view/Surface;

.field private j:Lcom/google/android/gms/internal/ads/yr;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:Lcom/google/android/gms/internal/ads/pq;

.field private final p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sq;Lcom/google/android/gms/internal/ads/rq;ZZLcom/google/android/gms/internal/ads/qq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcy;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->n:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbef;->f:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbef;->p:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/sq;->a(Lcom/google/android/gms/internal/ads/zzbcy;)V

    return-void
.end method

.method private final N()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final O()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final P()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->i:Landroid/view/Surface;

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "cache:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->k:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/rq;->j0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qs;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/ys;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/ads/ys;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys;->v()Lcom/google/android/gms/internal/ads/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v0, "Precached video player has been released."

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/ws;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/ads/ws;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws;->x()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws;->w()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws;->v()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Stream cache URL is null."

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->Y()Lcom/google/android/gms/internal/ads/yr;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/yr;->G([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stream cache miss: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->Y()Lcom/google/android/gms/internal/ads/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->Z()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->l:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbef;->l:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_8

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/yr;->F([Landroid/net/Uri;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yr;->D(Lcom/google/android/gms/internal/ads/xr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->i:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->Q(Landroid/view/Surface;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->S()V

    :cond_9
    :goto_4
    return-void
.end method

.method private final Q(Landroid/view/Surface;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/yr;->r(Landroid/view/Surface;Z)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final R(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/yr;->s(FZ)V

    return-void

    :cond_0
    const-string p1, "Trying to set volume before player is initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final S()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->q:Z

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/wq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wq;-><init>(Lcom/google/android/gms/internal/ads/zzbef;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->b()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->j()V

    :cond_1
    return-void
.end method

.method private static T(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final U()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->s:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->t:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->V(II)V

    return-void
.end method

.method private final V(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->w:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->w:F

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final W()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yr;->t(Z)V

    :cond_0
    return-void
.end method

.method private final X()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yr;->t(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->E()Lcom/google/android/gms/internal/ads/nr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nr;->j(I)V

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yr;->q(I)V

    :cond_0
    return-void
.end method

.method final synthetic C(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aq;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic D(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/rq;->a1(ZJ)V

    return-void
.end method

.method final synthetic E(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/aq;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic F()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->e()V

    :cond_0
    return-void
.end method

.method final synthetic G(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aq;->d(II)V

    :cond_0
    return-void
.end method

.method final synthetic H()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic I()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->f()V

    :cond_0
    return-void
.end method

.method final synthetic J()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->c()V

    :cond_0
    return-void
.end method

.method final synthetic K(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aq;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic L()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->a()V

    :cond_0
    return-void
.end method

.method final synthetic M()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->b()V

    :cond_0
    return-void
.end method

.method final Y()Lcom/google/android/gms/internal/ads/yr;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/yr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/yr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qq;Lcom/google/android/gms/internal/ads/rq;)V

    return-object v0
.end method

.method final Z()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/rq;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/l1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string p1, "onLoadException"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbef;->T(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter exception: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v0, Lcom/google/android/gms/internal/ads/xq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/xq;-><init>(Lcom/google/android/gms/internal/ads/zzbef;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbef;->T(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->m:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/qq;->a:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->X()V

    :cond_1
    sget-object p2, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v0, Lcom/google/android/gms/internal/ads/zq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zq;-><init>(Lcom/google/android/gms/internal/ads/zzbef;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->p:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/3"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final d(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->d:Lcom/google/android/gms/internal/ads/rq;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v1, Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hr;-><init>(Lcom/google/android/gms/internal/ads/zzbef;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->s:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->t:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->U()V

    return-void
.end method

.method public final f(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->n:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->n:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/qq;->a:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->X()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sq;->f()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcy;->c:Lcom/google/android/gms/internal/ads/vq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vq;->e()V

    sget-object p1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v0, Lcom/google/android/gms/internal/ads/yq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/yq;-><init>(Lcom/google/android/gms/internal/ads/zzbef;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->S()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->k:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->l:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->P()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->Q(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/yr;->D(Lcom/google/android/gms/internal/ads/xr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yr;->H()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->r:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->c:Lcom/google/android/gms/internal/ads/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vq;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->c()V

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->O()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qq;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->W()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vk2;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->c:Lcom/google/android/gms/internal/ads/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vq;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->b:Lcom/google/android/gms/internal/ads/lq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lq;->a()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/ar;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ar;-><init>(Lcom/google/android/gms/internal/ads/zzbef;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->r:Z

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qq;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->X()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vk2;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->c:Lcom/google/android/gms/internal/ads/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vq;->e()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/br;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/br;-><init>(Lcom/google/android/gms/internal/ads/zzbef;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->c:Lcom/google/android/gms/internal/ads/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vq;->c()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->R(FZ)V

    return-void
.end method

.method public final m()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->k()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->m()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vk2;->l(J)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->w:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    if-nez v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    div-float/2addr v2, v0

    float-to-int p2, v2

    :cond_0
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pq;->b(II)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->u:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->v:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->f:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->N()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->A()Lcom/google/android/gms/internal/ads/vk2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->d()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbef;->R(FZ)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/vk2;->f(Z)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->m()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->N()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vk2;->m()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0xfa

    cmp-long v9, v5, v7

    if-lez v9, :cond_6

    :cond_7
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vk2;->f(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->l()V

    :cond_8
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->u:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->v:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->p:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/pq;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/pq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/pq;->a(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pq;->d()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pq;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->i:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->P()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbef;->Q(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->g:Lcom/google/android/gms/internal/ads/qq;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/qq;->a:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->W()V

    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->s:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->t:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->U()V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbef;->V(II)V

    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance p2, Lcom/google/android/gms/internal/ads/dr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/dr;-><init>(Lcom/google/android/gms/internal/ads/zzbef;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbef;->k()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pq;->c()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->X()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->i:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->i:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbef;->Q(Landroid/view/Surface;Z)V

    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v0, Lcom/google/android/gms/internal/ads/fr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/fr;-><init>(Lcom/google/android/gms/internal/ads/zzbef;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/pq;->b(II)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v0, Lcom/google/android/gms/internal/ads/er;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/er;-><init>(Lcom/google/android/gms/internal/ads/zzbef;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->e:Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/sq;->d(Lcom/google/android/gms/internal/ads/zzbcy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->b:Lcom/google/android/gms/internal/ads/lq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->h:Lcom/google/android/gms/internal/ads/aq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/lq;->b(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/aq;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/gr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/gr;-><init>(Lcom/google/android/gms/internal/ads/zzbef;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final p(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->o:Lcom/google/android/gms/internal/ads/pq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/pq;->e(FF)V

    :cond_0
    return-void
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->s:I

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->t:I

    return v0
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->J()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->K()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->L()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final w(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbef;->h(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->k:Ljava/lang/String;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->l:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbef;->P()V

    :cond_1
    return-void
.end method

.method public final x(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->E()Lcom/google/android/gms/internal/ads/nr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nr;->g(I)V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->E()Lcom/google/android/gms/internal/ads/nr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nr;->h(I)V

    :cond_0
    return-void
.end method

.method public final z(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->j:Lcom/google/android/gms/internal/ads/yr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yr;->E()Lcom/google/android/gms/internal/ads/nr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nr;->i(I)V

    :cond_0
    return-void
.end method
