.class public final Lcom/google/android/gms/internal/ads/xr2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xr2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xr2;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/os2;->C()Lcom/google/android/gms/internal/ads/ms2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xr2;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ms2;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ms2;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ms2;->s(I)Lcom/google/android/gms/internal/ads/ms2;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/ks2;->C()Lcom/google/android/gms/internal/ads/js2;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/js2;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/js2;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/js2;->r(I)Lcom/google/android/gms/internal/ads/js2;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ms2;->r(Lcom/google/android/gms/internal/ads/js2;)Lcom/google/android/gms/internal/ads/ms2;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/os2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xr2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xr2;->b:Landroid/os/Looper;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/yr2;

    .line 10
    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/yr2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/os2;)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yr2;->a()V

    return-void
.end method
