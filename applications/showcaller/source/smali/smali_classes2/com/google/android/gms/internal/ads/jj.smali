.class public final Lcom/google/android/gms/internal/ads/jj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/kj;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/kj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jj;->b:Lcom/google/android/gms/internal/ads/kj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jj;)Lcom/google/android/gms/internal/ads/kj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/jj;->b:Lcom/google/android/gms/internal/ads/kj;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/gd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/cj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/cj;-><init>(Lcom/google/android/gms/internal/ads/jj;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/dj;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/jj;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ej;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ej;-><init>(Lcom/google/android/gms/internal/ads/jj;Lcom/google/android/gms/internal/ads/zzanm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/fj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/fj;-><init>(Lcom/google/android/gms/internal/ads/jj;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(IIIF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/gj;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/gj;-><init>(Lcom/google/android/gms/internal/ads/jj;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hj;-><init>(Lcom/google/android/gms/internal/ads/jj;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/gd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ij;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ij;-><init>(Lcom/google/android/gms/internal/ads/jj;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
