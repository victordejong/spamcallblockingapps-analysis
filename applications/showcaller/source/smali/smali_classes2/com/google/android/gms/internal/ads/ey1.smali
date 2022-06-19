.class final synthetic Lcom/google/android/gms/internal/ads/ey1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qc1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vi0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ey1;->a:Lcom/google/android/gms/internal/ads/vi0;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ey1;->a:Lcom/google/android/gms/internal/ads/vi0;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/m;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vi0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 p3, 0x1

    .line 3
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
