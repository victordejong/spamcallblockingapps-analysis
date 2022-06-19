.class final Lcom/google/android/gms/internal/ads/zzbjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

.field private final synthetic zzfrw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjq;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    .line 10
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zze(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdnx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzc(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdsq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbjq;->zza(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdnl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbjq;->zzb(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbjq;->zzb(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzdmw;->zzdmq:Ljava/util/List;

    const/4 v3, 0x0

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsq;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdnx;->zzj(Ljava/util/List;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zze(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdnx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzc(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdsq;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zza(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdnl;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzb(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjs;->zzfrh:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzb(Lcom/google/android/gms/internal/ads/zzbjq;)Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdmq:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdsq;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdnx;->zzj(Ljava/util/List;)V

    return-void
.end method
