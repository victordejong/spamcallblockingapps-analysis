.class public final Lcom/google/android/gms/internal/ads/aal;
.super Lcom/google/android/gms/internal/ads/zo;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/abk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/aad;

.field private final d:Lcom/google/android/gms/internal/ads/aah;

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/aae;

.field private g:Lcom/google/android/gms/internal/ads/zl;

.field private h:Landroid/view/Surface;

.field private i:Lcom/google/android/gms/internal/ads/abb;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/aab;

.field private final o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aah;Lcom/google/android/gms/internal/ads/aad;ZZLcom/google/android/gms/internal/ads/aae;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zo;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    .line 3
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/aal;->e:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/aal;->o:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    .line 8
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/aal;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aah;->a(Lcom/google/android/gms/internal/ads/zo;)V

    .line 10
    return-void
.end method

.method private final a(FZ)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/abb;->a(FZ)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "Trying to set volume before player is initalized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final a(Landroid/view/Surface;Z)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/abb;->a(Landroid/view/Surface;Z)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "Trying to set surface before player is initalized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final c(II)V
    .locals 2

    .prologue
    .line 264
    if-lez p2, :cond_1

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 265
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 266
    iput v0, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    .line 267
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aal;->requestLayout()V

    .line 268
    :cond_0
    return-void

    .line 264
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private final l()Lcom/google/android/gms/internal/ads/abb;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/abb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/abb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aae;)V

    return-object v0
.end method

.method private final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/aad;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method private final n()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final o()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final p()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->j:Ljava/lang/String;

    const-string/jumbo v2, "cache:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v0

    .line 23
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/acj;

    if-eqz v2, :cond_2

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/acj;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acj;->c()Lcom/google/android/gms/internal/ads/abb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    if-nez v0, :cond_4

    .line 27
    const-string/jumbo v0, "Precached video player has been released."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/acf;

    if-eqz v2, :cond_5

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/ads/acf;

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->m()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acf;->e()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acf;->d()Z

    move-result v4

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acf;->c()Ljava/lang/String;

    move-result-object v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    const-string/jumbo v0, "Stream cache URL is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->l()Lcom/google/android/gms/internal/ads/abb;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    .line 39
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/abb;->a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    .line 50
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/abb;->a(Lcom/google/android/gms/internal/ads/abk;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aal;->a(Landroid/view/Surface;Z)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dkt;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->q()V

    goto/16 :goto_0

    .line 41
    :cond_5
    const-string/jumbo v1, "Stream cache miss: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->l()Lcom/google/android/gms/internal/ads/abb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->m()Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->k:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Landroid/net/Uri;

    move v0, v1

    .line 46
    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aal;->k:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 47
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aal;->k:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 49
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/abb;->a([Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final q()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->p:Z

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->p:Z

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aak;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aak;-><init>(Lcom/google/android/gms/internal/ads/aal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->a()V

    .line 72
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->q:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->c()V

    goto :goto_0
.end method

.method private final r()V
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->r:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/aal;->s:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aal;->c(II)V

    .line 263
    return-void
.end method

.method private final s()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abb;->b(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method private final t()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abb;->b(Z)V

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const-string/jumbo v0, "ExoPlayer/3"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->o:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " spherical"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(FF)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aab;->a(FF)V

    .line 149
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dkt;->a(J)V

    .line 127
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/google/android/gms/internal/ads/aal;->r:I

    .line 251
    iput p2, p0, Lcom/google/android/gms/internal/ads/aal;->s:I

    .line 252
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->r()V

    .line 253
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zl;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    .line 77
    return-void
.end method

.method final synthetic a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    const-string/jumbo v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 254
    .line 255
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string/jumbo v2, "ExoPlayerAdapter error: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->l:Z

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aae;->a:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->t()V

    .line 260
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/aam;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/aam;-><init>(Lcom/google/android/gms/internal/ads/aal;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    if-eqz p1, :cond_1

    .line 84
    if-nez p2, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zo;->setVideoPath(Ljava/lang/String;)V

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aal;->j:Ljava/lang/String;

    .line 87
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->k:[Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->p()V

    .line 89
    :cond_1
    return-void
.end method

.method public final a(ZJ)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/aav;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aav;-><init>(Lcom/google/android/gms/internal/ads/aal;ZJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 237
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dkt;->c()V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/aal;->a(Landroid/view/Surface;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/abb;->a(Lcom/google/android/gms/internal/ads/abk;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->e()V

    .line 108
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    .line 109
    :cond_0
    iput v3, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    .line 110
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aal;->l:Z

    .line 111
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aal;->p:Z

    .line 112
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aal;->q:Z

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->d()V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->c()V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->b()V

    .line 116
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    if-eq v0, p1, :cond_0

    .line 239
    iput p1, p0, Lcom/google/android/gms/internal/ads/aal;->m:I

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->q()V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aae;->a:Z

    if-eqz v0, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->t()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->d()V

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->c()V

    .line 248
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aan;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aan;-><init>(Lcom/google/android/gms/internal/ads/aal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final synthetic b(II)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zl;->a(II)V

    .line 284
    :cond_0
    return-void
.end method

.method final synthetic b(ZJ)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->c:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aad;->a(ZJ)V

    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aae;->a:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->s()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dkt;->a(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->c()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->b()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->a:Lcom/google/android/gms/internal/ads/zy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zy;->a()V

    .line 97
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aap;-><init>(Lcom/google/android/gms/internal/ads/aal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aal;->q:Z

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->a(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aae;->a:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->t()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dkt;->a(Z)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->d()V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->c()V

    .line 123
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aao;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aao;-><init>(Lcom/google/android/gms/internal/ads/aal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->b(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->a()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aal;->a(FZ)V

    .line 65
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->c(I)V

    .line 139
    :cond_0
    return-void
.end method

.method final synthetic f()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->f()V

    .line 281
    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->d(I)V

    .line 143
    :cond_0
    return-void
.end method

.method final synthetic g()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->a()V

    .line 287
    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abb;->a(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public final getCurrentPosition()I
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dkt;->g()J

    move-result-wide v0

    long-to-int v0, v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dkt;->f()J

    move-result-wide v0

    long-to-int v0, v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVideoHeight()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->s:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->r:I

    return v0
.end method

.method final synthetic h()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->d()V

    .line 290
    :cond_0
    return-void
.end method

.method final synthetic h(I)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zl;->onWindowVisibilityChanged(I)V

    .line 278
    :cond_0
    return-void
.end method

.method final synthetic i()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->c()V

    .line 293
    :cond_0
    return-void
.end method

.method final synthetic j()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->e()V

    .line 299
    :cond_0
    return-void
.end method

.method final synthetic k()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->b()V

    .line 302
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zo;->onMeasure(II)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aal;->getMeasuredWidth()I

    move-result v1

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aal;->getMeasuredHeight()I

    move-result v0

    .line 161
    iget v2, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    if-nez v2, :cond_1

    .line 162
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 163
    iget v3, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    .line 164
    int-to-float v0, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 165
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 166
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/aal;->v:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 167
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aal;->setMeasuredDimension(II)V

    .line 168
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/aab;->a(II)V

    .line 170
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    .line 171
    iget v2, p0, Lcom/google/android/gms/internal/ads/aal;->t:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ads/aal;->t:I

    if-ne v2, v1, :cond_4

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/ads/aal;->u:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/aal;->u:I

    if-eq v2, v0, :cond_5

    .line 173
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aal;->e:Z

    if-eqz v2, :cond_5

    .line 174
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v2

    .line 176
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dkt;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dkt;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 187
    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/aal;->t:I

    .line 188
    iput v0, p0, Lcom/google/android/gms/internal/ads/aal;->u:I

    .line 189
    :cond_6
    return-void

    .line 178
    :cond_7
    invoke-direct {p0, v8, v9}, Lcom/google/android/gms/internal/ads/aal;->a(FZ)V

    .line 179
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/ads/dkt;->a(Z)V

    .line 180
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dkt;->g()J

    move-result-wide v4

    .line 181
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    .line 182
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->n()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dkt;->g()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-nez v3, :cond_9

    .line 183
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v8

    .line 184
    sub-long/2addr v8, v6

    const-wide/16 v10, 0xfa

    cmp-long v3, v8, v10

    if-lez v3, :cond_8

    .line 185
    :cond_9
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dkt;->a(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    goto :goto_0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aal;->o:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aab;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->start()V

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    move-object p1, v0

    .line 200
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 201
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-nez v0, :cond_4

    .line 203
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->p()V

    .line 207
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->r:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/aal;->s:I

    if-nez v0, :cond_5

    .line 208
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/aal;->c(II)V

    .line 210
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aar;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aar;-><init>(Lcom/google/android/gms/internal/ads/aal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->a()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    goto :goto_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aal;->a(Landroid/view/Surface;Z)V

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->f:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aae;->a:Z

    if-nez v0, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->s()V

    goto :goto_1

    .line 209
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->r()V

    goto :goto_2
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->d()V

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->a()V

    .line 222
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->i:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->t()V

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 227
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aal;->h:Landroid/view/Surface;

    .line 228
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/aal;->a(Landroid/view/Surface;Z)V

    .line 229
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aat;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aat;-><init>(Lcom/google/android/gms/internal/ads/aal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 230
    return v2
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->n:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/aab;->a(II)V

    .line 214
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aaq;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/aaq;-><init>(Lcom/google/android/gms/internal/ads/aal;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aah;->b(Lcom/google/android/gms/internal/ads/zo;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->a:Lcom/google/android/gms/internal/ads/zy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aal;->g:Lcom/google/android/gms/internal/ads/zl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zy;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zl;)V

    .line 218
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 231
    const/16 v0, 0x39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aas;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aas;-><init>(Lcom/google/android/gms/internal/ads/aal;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 233
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zo;->onWindowVisibilityChanged(I)V

    .line 234
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aal;->j:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aal;->k:[Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aal;->p()V

    .line 82
    :cond_0
    return-void
.end method
