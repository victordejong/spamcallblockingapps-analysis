.class public final synthetic Lcom/google/android/gms/internal/ads/zzfel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjs;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzehh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmd;Lcom/google/android/gms/internal/ads/zzfjs;Lcom/google/android/gms/internal/ads/zzehh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfel;->zza:Lcom/google/android/gms/internal/ads/zzdmd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfel;->zzb:Lcom/google/android/gms/internal/ads/zzfjs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfel;->zzc:Lcom/google/android/gms/internal/ads/zzehh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfel;->zza:Lcom/google/android/gms/internal/ads/zzdmd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfel;->zzb:Lcom/google/android/gms/internal/ads/zzfjs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfel;->zzc:Lcom/google/android/gms/internal/ads/zzehh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcop;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbrs;->zzd(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdmd;)V

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciz;->zzj(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrs;->zzb(Lcom/google/android/gms/internal/ads/zzcop;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfen;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfen;-><init>(Lcom/google/android/gms/internal/ads/zzcop;Lcom/google/android/gms/internal/ads/zzfjs;Lcom/google/android/gms/internal/ads/zzehh;)V

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzr(Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzfwm;Ljava/util/concurrent/Executor;)V

    return-void
.end method
