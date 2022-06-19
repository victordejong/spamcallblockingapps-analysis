.class public final synthetic Lcom/google/android/gms/internal/ads/zzcon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

.field private final zzgig:Lcom/google/android/gms/internal/ads/zzdzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgig:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzgig:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzfym:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcoz;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpg;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcoz;-><init>(Lcom/google/android/gms/internal/ads/zzcpg;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatw;)V

    return-object v3
.end method
