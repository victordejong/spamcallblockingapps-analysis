.class final synthetic Lcom/google/android/gms/internal/ads/e12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qc1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e12;->a:Lcom/google/android/gms/internal/ads/tw1;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/e12;->a:Lcom/google/android/gms/internal/ads/tw1;

    .line 2
    :try_start_0
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 3
    check-cast p3, Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/ok2;->v(Z)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ok2;->p()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Cannot show rewarded video."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkm;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
