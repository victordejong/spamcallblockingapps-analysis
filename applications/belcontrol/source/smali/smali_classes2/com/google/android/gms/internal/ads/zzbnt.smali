.class public Lcom/google/android/gms/internal/ads/zzbnt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field public final zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzfwe:Lcom/google/android/gms/internal/ads/zzbsg;

.field private final zzfwf:Lcom/google/android/gms/internal/ads/zzbsw;

.field private final zzfwg:Lcom/google/android/gms/internal/ads/zzdkk;

.field private final zzfwh:Lcom/google/android/gms/internal/ads/zzbrh;

.field private final zzfwi:Lcom/google/android/gms/internal/ads/zzbud;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zza(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzdnl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zzb(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zzc(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwe:Lcom/google/android/gms/internal/ads/zzbsg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zzd(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzbsw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwf:Lcom/google/android/gms/internal/ads/zzbsw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zze(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzdkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwg:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zzf(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwh:Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnw;->zzg(Lcom/google/android/gms/internal/ads/zzbnw;)Lcom/google/android/gms/internal/ads/zzbud;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwi:Lcom/google/android/gms/internal/ads/zzbud;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwe:Lcom/google/android/gms/internal/ads/zzbsg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzcd(Landroid/content/Context;)V

    return-void
.end method

.method public zzakb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwf:Lcom/google/android/gms/internal/ads/zzbsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsw;->onAdLoaded()V

    return-void
.end method

.method public final zzakq()Lcom/google/android/gms/internal/ads/zzbsg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwe:Lcom/google/android/gms/internal/ads/zzbsg;

    return-object v0
.end method

.method public final zzakr()Lcom/google/android/gms/internal/ads/zzbrh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwh:Lcom/google/android/gms/internal/ads/zzbrh;

    return-object v0
.end method

.method public final zzaks()Lcom/google/android/gms/internal/ads/zzdkk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwg:Lcom/google/android/gms/internal/ads/zzdkk;

    return-object v0
.end method

.method public final zzakt()Lcom/google/android/gms/internal/ads/zzbve;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfwi:Lcom/google/android/gms/internal/ads/zzbud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbud;->zzakt()Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v0

    return-object v0
.end method
