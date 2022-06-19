.class public final Lcom/google/android/gms/internal/ads/zzcus;
.super Lcom/google/android/gms/internal/ads/zzcun;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcun<",
        "Lcom/google/android/gms/internal/ads/zzbyy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

.field private final zzfmf:Lcom/google/android/gms/internal/ads/zzcxa;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

.field private final zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzbqx$zza;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzbwg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcun;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzfmf:Lcom/google/android/gms/internal/ads/zzcxa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdnp;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzbyy;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafm()Lcom/google/android/gms/internal/ads/zzbzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzalo()Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzx;->zze(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbzx;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzx;->zze(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbzx;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzfmf:Lcom/google/android/gms/internal/ads/zzcxa;

    .line 14
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzx;->zzb(Lcom/google/android/gms/internal/ads/zzcxa;)Lcom/google/android/gms/internal/ads/zzbzx;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbzx;->zzahx()Lcom/google/android/gms/internal/ads/zzbzy;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzy;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzalb()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
