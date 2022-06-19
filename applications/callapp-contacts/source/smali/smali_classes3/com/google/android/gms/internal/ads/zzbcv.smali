.class public final Lcom/google/android/gms/internal/ads/zzbcv;
.super Lcom/google/android/gms/internal/ads/zzbbz;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/acg;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/abb;

.field d:Lcom/google/android/gms/internal/ads/aak;

.field private final e:Lcom/google/android/gms/internal/ads/aba;

.field private final f:Z

.field private final g:Lcom/google/android/gms/internal/ads/aay;

.field private h:Landroid/view/Surface;

.field private i:Lcom/google/android/gms/internal/ads/abw;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/aaz;

.field private final o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aba;Lcom/google/android/gms/internal/ads/abb;ZZLcom/google/android/gms/internal/ads/aay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:I

    .line 3
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbcv;->f:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    .line 8
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbcv;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/aba;->a(Lcom/google/android/gms/internal/ads/zzbbz;)V

    return-void
.end method

.method private final a(FZ)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_2

    .line 6168
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-eqz v1, :cond_1

    .line 6170
    new-instance v1, Lcom/google/android/gms/internal/ads/dvm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/abw;->e:Lcom/google/android/gms/internal/ads/dvy;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/dvm;-><init>(Lcom/google/android/gms/internal/ads/dvn;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 6172
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    new-array v0, v2, [Lcom/google/android/gms/internal/ads/dvm;

    aput-object v1, v0, p1

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/dvl;->b([Lcom/google/android/gms/internal/ads/dvm;)V

    return-void

    .line 6173
    :cond_0
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    new-array v0, v2, [Lcom/google/android/gms/internal/ads/dvm;

    aput-object v1, v0, p1

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/dvl;->a([Lcom/google/android/gms/internal/ads/dvm;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "Trying to set volume before player is initalized."

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/view/Surface;Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/abw;->a(Landroid/view/Surface;Z)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initalized."

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method private final b(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 283
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->v:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 284
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->v:F

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->requestLayout()V

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final n()Lcom/google/android/gms/internal/ads/abw;
    .locals 4

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/abw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/abb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/abw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aay;Lcom/google/android/gms/internal/ads/abb;)V

    return-object v0
.end method

.method private final o()Ljava/lang/String;
    .locals 3

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/abb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final p()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-eqz v0, :cond_0

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final q()Z
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final r()V
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Landroid/view/Surface;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "cache:"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/abb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/acu;

    move-result-object v0

    .line 23
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/adf;

    if-eqz v2, :cond_2

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/adf;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adf;->c()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 2040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-nez v0, :cond_8

    const-string v0, "Precached video player has been released."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_2
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/adg;

    if-eqz v2, :cond_4

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/ads/adg;

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->o()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adg;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3010
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/adg;->e:Z

    .line 4009
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/adg;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "Stream cache URL is null."

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->n()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Uri;

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/abw;->a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_2

    :cond_4
    const-string v0, "Stream cache miss: "

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->n()Lcom/google/android/gms/internal/ads/abw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->o()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->k:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 46
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcv;->k:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 47
    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/abw;->a([Landroid/net/Uri;Ljava/lang/String;)V

    .line 50
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 4054
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbcv;->a(Landroid/view/Surface;Z)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 5040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 6040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 53
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->s()V

    :cond_9
    :goto_3
    return-void
.end method

.method private final s()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->p:Z

    .line 70
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/abg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/abg;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbz;->m()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aba;->a()V

    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbz;->c()V

    :cond_1
    return-void
.end method

.method private final t()V
    .locals 2

    .line 280
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbcv;->b(II)V

    return-void
.end method

.method private final u()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abw;->a(Z)V

    :cond_0
    return-void
.end method

.method private final v()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abw;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 77
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:Z

    if-eqz v0, :cond_0

    const-string v0, " spherical"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "ExoPlayer/3"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(FF)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aaz;->a(FF)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 10040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    int-to-long v1, p1

    .line 128
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dvl;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:I

    .line 265
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:I

    .line 266
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->t()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aak;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 269
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcv;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 270
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
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 271
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Z

    .line 272
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/aay;->a:Z

    if-eqz p2, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->v()V

    .line 274
    :cond_1
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v0, Lcom/google/android/gms/internal/ads/abh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/abh;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;->setVideoPath(Ljava/lang/String;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Ljava/lang/String;

    .line 89
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->k:[Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->r()V

    :cond_1
    return-void
.end method

.method public final a(ZJ)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/abr;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/abr;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;ZJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 8040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 103
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->c()V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 106
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzbcv;->a(Landroid/view/Surface;Z)V

    .line 107
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v3, :cond_0

    .line 8054
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    .line 109
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/abw;->a()V

    .line 110
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 111
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:I

    .line 112
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Z

    .line 113
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->p:Z

    .line 114
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:Z

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    .line 8115
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/aba;->a:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->c:Lcom/google/android/gms/internal/ads/abc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abc;->c()V

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aba;->b()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 10056
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->d:Lcom/google/android/gms/internal/ads/abx;

    .line 132
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abx;->a(I)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 276
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcv;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 277
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
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 278
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v0, Lcom/google/android/gms/internal/ads/abj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/abj;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aay;->a:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->u()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 7040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 95
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvl;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aba;->c()V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->c:Lcom/google/android/gms/internal/ads/abc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abc;->b()V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->b:Lcom/google/android/gms/internal/ads/aas;

    .line 8007
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/aas;->a:Z

    .line 99
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/abl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/abl;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 100
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 11056
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->d:Lcom/google/android/gms/internal/ads/abx;

    .line 136
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abx;->b(I)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aay;->a:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->v()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 9040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    const/4 v1, 0x0

    .line 122
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvl;->a(Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    .line 9115
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/aba;->a:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->c:Lcom/google/android/gms/internal/ads/abc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abc;->c()V

    .line 125
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/abk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/abk;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 12056
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->d:Lcom/google/android/gms/internal/ads/abx;

    .line 140
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abx;->c(I)V

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 15040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 156
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->f()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 13056
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->d:Lcom/google/android/gms/internal/ads/abx;

    .line 144
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/abx;->d(I)V

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 14040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 153
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->g()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_2

    .line 13155
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 13156
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/abq;

    if-eqz v1, :cond_0

    .line 13184
    iput p1, v1, Lcom/google/android/gms/internal/ads/abq;->a:I

    .line 13185
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/abq;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    .line 13186
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 13187
    :try_start_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/abq;->a:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to update receive buffer size."

    .line 13190
    invoke-static {v4, v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:I

    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 252
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:I

    if-eq v0, p1, :cond_3

    .line 253
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/aay;->a:Z

    if-eqz p1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->v()V

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    const/4 v0, 0x0

    .line 16115
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/aba;->a:Z

    .line 261
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->c:Lcom/google/android/gms/internal/ads/abc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abc;->c()V

    .line 262
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v0, Lcom/google/android/gms/internal/ads/abf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/abf;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->s()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final h()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:I

    return v0
.end method

.method public final i()J
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abw;->b()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abw;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abw;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final l()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-eqz v0, :cond_0

    .line 15101
    iget v0, v0, Lcom/google/android/gms/internal/ads/abw;->j:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final m()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->c:Lcom/google/android/gms/internal/ads/abc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abc;->a()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbcv;->a(FZ)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 10

    .line 172
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbz;->onMeasure(II)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->getMeasuredWidth()I

    move-result p1

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->getMeasuredHeight()I

    move-result p2

    .line 175
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->v:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

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

    .line 181
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcv;->setMeasuredDimension(II)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aaz;->a(II)V

    .line 184
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->t:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->u:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    .line 187
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->f:Z

    if-eqz v0, :cond_8

    .line 188
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    .line 16040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 190
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 192
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcv;->a(FZ)V

    .line 193
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/dvl;->a(Z)V

    .line 194
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->g()J

    move-result-wide v1

    .line 195
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    .line 196
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->p()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->g()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_7

    .line 197
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0xfa

    cmp-long v9, v5, v7

    if-lez v9, :cond_6

    :cond_7
    const/4 v1, 0x0

    .line 199
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvl;->a(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbz;->m()V

    .line 201
    :cond_8
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->t:I

    .line 202
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->u:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:Z

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lcom/google/android/gms/internal/ads/aaz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aaz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    .line 206
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aaz;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaz;->start()V

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaz;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaz;->b()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    .line 214
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 215
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Landroid/view/Surface;

    .line 216
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    if-nez p1, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->r()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 218
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbcv;->a(Landroid/view/Surface;Z)V

    .line 219
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/aay;->a:Z

    if-nez p1, :cond_3

    .line 220
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->u()V

    .line 221
    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 223
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->t()V

    goto :goto_3

    .line 222
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbcv;->b(II)V

    .line 224
    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance p2, Lcom/google/android/gms/internal/ads/abn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/abn;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbz;->d()V

    .line 234
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aaz;->b()V

    .line 236
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Lcom/google/android/gms/internal/ads/abw;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->v()V

    .line 239
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 241
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Landroid/view/Surface;

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbcv;->a(Landroid/view/Surface;Z)V

    .line 243
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v0, Lcom/google/android/gms/internal/ads/abp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/abp;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Lcom/google/android/gms/internal/ads/aaz;

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/aaz;->a(II)V

    .line 228
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v0, Lcom/google/android/gms/internal/ads/abm;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/abm;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->e:Lcom/google/android/gms/internal/ads/aba;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aba;->b(Lcom/google/android/gms/internal/ads/zzbbz;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->b:Lcom/google/android/gms/internal/ads/aas;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/aas;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/aak;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/abo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/abo;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    .line 247
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 82
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->k:[Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->r()V

    :cond_0
    return-void
.end method
