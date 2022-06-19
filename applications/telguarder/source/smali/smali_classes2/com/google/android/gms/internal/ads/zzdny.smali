.class final synthetic Lcom/google/android/gms/internal/ads/zzdny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# instance fields
.field private final zzhlk:Lcom/google/android/gms/internal/ads/zzdss;

.field private final zzhll:Lcom/google/android/gms/internal/ads/zzcqr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzcqr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhlk:Lcom/google/android/gms/internal/ads/zzdss;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhll:Lcom/google/android/gms/internal/ads/zzcqr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhlk:Lcom/google/android/gms/internal/ads/zzdss;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhll:Lcom/google/android/gms/internal/ads/zzcqr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdu;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdu;->zzacp()Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdss;->zzel(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcrc;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfa;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzadn()Lcom/google/android/gms/internal/ads/zzdnb;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    sget v7, Lcom/google/android/gms/internal/ads/zzcqs;->zzgru:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Lcom/google/android/gms/internal/ads/zzcrc;)V

    return-void
.end method
