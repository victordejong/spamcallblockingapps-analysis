.class public final Lcom/google/android/gms/internal/ads/zzcjs;
.super Lcom/google/android/gms/internal/ads/zzcii;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/zj0;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/internal/ads/kk0;

.field private final g:Lcom/google/android/gms/internal/ads/lk0;

.field private final h:Z

.field private final i:Lcom/google/android/gms/internal/ads/jk0;

.field private j:Lcom/google/android/gms/internal/ads/rj0;

.field private k:Landroid/view/Surface;

.field private l:Lcom/google/android/gms/internal/ads/ak0;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Lcom/google/android/gms/internal/ads/hk0;

.field private final r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk0;Lcom/google/android/gms/internal/ads/kk0;ZZLcom/google/android/gms/internal/ads/jk0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcii;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcjs;->h:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcjs;->r:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    .line 2
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/lk0;->a(Lcom/google/android/gms/internal/ads/zzcii;)V

    return-void
.end method

.method private final Q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final R()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final S(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->k:Landroid/view/Surface;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Q()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ak0;->X()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->T()V

    goto :goto_1

    :cond_3
    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->m:Ljava/lang/String;

    const-string v0, "cache:"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->m:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/kk0;->g0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/km0;

    move-result-object p1

    .line 7
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/tm0;

    if-eqz v1, :cond_6

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/tm0;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tm0;->x()Lcom/google/android/gms/internal/ads/ak0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ak0;->A()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p1, "Precached video player has been released."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_6
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/qm0;

    if-eqz v1, :cond_8

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/qm0;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->D()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qm0;->z()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qm0;->y()Z

    move-result v3

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qm0;->x()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Stream cache URL is null."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->C()Lcom/google/android/gms/internal/ads/ak0;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ak0;->S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->m:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stream cache miss: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->C()Lcom/google/android/gms/internal/ads/ak0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->D()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->n:[Ljava/lang/String;

    .line 24
    array-length v1, v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->n:[Ljava/lang/String;

    .line 25
    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 26
    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 27
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/ak0;->R([Landroid/net/Uri;Ljava/lang/String;)V

    .line 28
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 29
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/ak0;->T(Lcom/google/android/gms/internal/ads/zj0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->k:Landroid/view/Surface;

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->U(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ak0;->A()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ak0;->B()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->W()V

    :cond_c
    :goto_5
    return-void
.end method

.method private final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->U(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ak0;->T(Lcom/google/android/gms/internal/ads/zj0;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ak0;->U()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->o:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->s:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->t:Z

    :cond_1
    return-void
.end method

.method private final U(Landroid/view/Surface;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ak0;->V(Landroid/view/Surface;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initialized."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final V(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ak0;->W(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Trying to set volume before player is initialized."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final W()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->s:Z

    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/pk0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/pk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lk0;->b()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->t:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->l()V

    :cond_1
    return-void
.end method

.method private static X(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final Y()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->u:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->v:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->Z(II)V

    return-void
.end method

.method private final Z(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->y:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->y:F

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak0;->M(Z)V

    :cond_0
    return-void
.end method

.method private final b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak0;->M(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ak0;->G(I)V

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ak0;->Z(I)V

    :cond_0
    return-void
.end method

.method final C()Lcom/google/android/gms/internal/ads/ak0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/jk0;->m:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/mn0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/kk0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/mn0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jk0;Lcom/google/android/gms/internal/ads/kk0;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/rl0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/kk0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/rl0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jk0;Lcom/google/android/gms/internal/ads/kk0;)V

    return-object v0
.end method

.method final D()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/kk0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/kk0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/c2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->h()V

    :cond_0
    return-void
.end method

.method final synthetic F(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/rj0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic G(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kk0;->c1(ZJ)V

    return-void
.end method

.method final synthetic H(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/rj0;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->f()V

    :cond_0
    return-void
.end method

.method final synthetic J(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rj0;->d(II)V

    :cond_0
    return-void
.end method

.method final synthetic K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->e()V

    :cond_0
    return-void
.end method

.method final synthetic M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->c()V

    :cond_0
    return-void
.end method

.method final synthetic N(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/rj0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->a()V

    :cond_0
    return-void
.end method

.method final synthetic P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->b()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/jk0;->a:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->b0()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lk0;->f()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcii;->e:Lcom/google/android/gms/internal/ads/ok0;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ok0;->e()V

    .line 5
    sget-object p1, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v0, Lcom/google/android/gms/internal/ads/sk0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/sk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->W()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ak0;->a0(I)V

    :cond_0
    return-void
.end method

.method public final c(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->f:Lcom/google/android/gms/internal/ads/kk0;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/al0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/al0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string p1, "onLoadException"

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjs;->X(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter exception: "

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v0

    const-string v1, "AdExoPlayerView.onException"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/ph0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v0, Lcom/google/android/gms/internal/ads/qk0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/qk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->u:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->v:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Y()V

    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ak0;->b0(I)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjs;->X(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    .line 5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/jk0;->a:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->b0()V

    .line 7
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/tk0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/tk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p1

    const-string v0, "AdExoPlayerView.onError"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/ph0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->r:Z

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

.method public final i(Lcom/google/android/gms/internal/ads/rj0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcii;->y(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->X()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->T()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lk0;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->e:Lcom/google/android/gms/internal/ads/ok0;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok0;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lk0;->c()V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->R()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/jk0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->a0()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak0;->E(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lk0;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->e:Lcom/google/android/gms/internal/ads/ok0;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok0;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->d:Lcom/google/android/gms/internal/ads/dk0;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dk0;->a()V

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/uk0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/uk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->t:Z

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/jk0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->b0()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak0;->E(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lk0;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->e:Lcom/google/android/gms/internal/ads/ok0;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok0;->e()V

    .line 6
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/vk0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/vk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final n()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->H()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->C()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->y:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

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

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hk0;->b(II)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->w:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->x:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->h:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Q()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->C()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->D()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->V(FZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ak0;->E(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->C()J

    move-result-wide v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Q()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ak0;->C()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_7

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak0;->E(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzt()V

    .line 15
    :cond_8
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->w:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->x:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->r:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hk0;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hk0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hk0;->a(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hk0;->d()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hk0;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    .line 8
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->k:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjs;->S(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcjs;->U(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    .line 11
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/jk0;->a:Z

    if-nez p1, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->a0()V

    .line 13
    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->u:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->v:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->Y()V

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjs;->Z(II)V

    .line 16
    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance p2, Lcom/google/android/gms/internal/ads/wk0;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/wk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hk0;->c()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->b0()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->k:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->k:Landroid/view/Surface;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->U(Landroid/view/Surface;Z)V

    .line 6
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v0, Lcom/google/android/gms/internal/ads/yk0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/yk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/hk0;->b(II)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v0, Lcom/google/android/gms/internal/ads/xk0;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/xk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->g:Lcom/google/android/gms/internal/ads/lk0;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/lk0;->d(Lcom/google/android/gms/internal/ads/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->d:Lcom/google/android/gms/internal/ads/dk0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->j:Lcom/google/android/gms/internal/ads/rj0;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dk0;->b(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/rj0;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/zk0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final p(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ak0;->Y(J)V

    :cond_0
    return-void
.end method

.method public final q(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->q:Lcom/google/android/gms/internal/ads/hk0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hk0;->e(FF)V

    :cond_0
    return-void
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->u:I

    return v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->v:I

    return v0
.end method

.method public final t()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/rk0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/rk0;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->I()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final v()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->J()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final w()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->K()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak0;->L()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final y(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    aput-object p1, p2, v1

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->n:[Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_1
    array-length v2, p2

    .line 3
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->n:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->i:Lcom/google/android/gms/internal/ads/jk0;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/jk0;->n:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->p:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->m:Ljava/lang/String;

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->S(Z)V

    return-void
.end method

.method public final z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->l:Lcom/google/android/gms/internal/ads/ak0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ak0;->F(I)V

    :cond_0
    return-void
.end method

.method public final zzt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->e:Lcom/google/android/gms/internal/ads/ok0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok0;->c()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->V(FZ)V

    return-void
.end method
