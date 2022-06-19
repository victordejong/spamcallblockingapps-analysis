.class final Lcom/google/android/gms/internal/ads/zzamm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbac;


# instance fields
.field private final synthetic zzdik:Lcom/google/android/gms/internal/ads/zzbaa;

.field private final synthetic zzdlb:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzbaa;Lcom/google/android/gms/internal/ads/zzalm;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdik:Lcom/google/android/gms/internal/ads/zzbaa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdlb:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdik:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaly;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaly;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdlb:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void
.end method
