.class public final synthetic Lcom/google/android/gms/internal/ads/zzeez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfxa;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzfxa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeez;->zza:Lcom/google/android/gms/internal/ads/zzfxa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Lcom/google/android/gms/internal/ads/zzfxa;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->zza:Lcom/google/android/gms/internal/ads/zzfxa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Lcom/google/android/gms/internal/ads/zzfxa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcdt;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzefn;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcdt;)V

    return-object v2
.end method
