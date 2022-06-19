.class public final synthetic Lcom/google/android/gms/internal/ads/zzbcj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzehx:Ljava/util/Map;

.field private final zzeol:Lcom/google/android/gms/internal/ads/zzbbo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzeol:Lcom/google/android/gms/internal/ads/zzbbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzehx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzeol:Lcom/google/android/gms/internal/ads/zzbbo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzehx:Ljava/util/Map;

    const-string v2, "onGcacheInfoEvent"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
