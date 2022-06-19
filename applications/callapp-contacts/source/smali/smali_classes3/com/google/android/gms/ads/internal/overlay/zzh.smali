.class final Lcom/google/android/gms/ads/internal/overlay/zzh;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private zzdts:Lcom/google/android/gms/ads/internal/util/zzad;

.field zzdtt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdts:Lcom/google/android/gms/ads/internal/util/zzad;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/util/zzad;->zzu(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdts:Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/ads/internal/util/zzad;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdtt:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdts:Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzd(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
