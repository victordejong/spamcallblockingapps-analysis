.class final synthetic Lcom/google/android/gms/internal/ads/zzcoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzgig:Lcom/google/android/gms/internal/ads/zzdzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzgig:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzgig:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdzw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdzw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcpd;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatw;)V

    return-object v2
.end method
