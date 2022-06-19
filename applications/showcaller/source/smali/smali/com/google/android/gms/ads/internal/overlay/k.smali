.class final Lcom/google/android/gms/ads/internal/overlay/k;
.super Lcom/google/android/gms/ads/internal/util/b0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic c:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/l;Lcom/google/android/gms/ads/internal/overlay/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/k;->c:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->w()Lcom/google/android/gms/ads/internal/util/z0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/k;->c:Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzj;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/z0;->a(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/k;->c:Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v2, Lcom/google/android/gms/ads/internal/zzj;->g:Z

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzj;->h:F

    .line 3
    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/google/android/gms/ads/internal/util/e;->d(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>(Lcom/google/android/gms/ads/internal/overlay/k;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
