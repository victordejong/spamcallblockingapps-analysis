.class final Lcom/google/android/gms/internal/ads/ga0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic e:Lcom/google/android/gms/internal/ads/zzbye;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbye;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ga0;->e:Lcom/google/android/gms/internal/ads/zzbye;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ga0;->d:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ga0;->e:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbye;->a(Lcom/google/android/gms/internal/ads/zzbye;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ga0;->d:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
