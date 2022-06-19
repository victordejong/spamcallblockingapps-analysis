.class public final Lcom/google/android/gms/internal/ads/zzcul;
.super Lcom/google/android/gms/internal/ads/zzcun;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcun<",
        "Lcom/google/android/gms/internal/ads/zzbnz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzezb:Lcom/google/android/gms/internal/ads/zzcaq;

.field private final zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

.field private final zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzcaq;Lcom/google/android/gms/internal/ads/zzbqx$zza;Lcom/google/android/gms/internal/ads/zzbwg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcun;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzezb:Lcom/google/android/gms/internal/ads/zzcaq;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

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
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafo()Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzguz:Lcom/google/android/gms/internal/ads/zzbqx$zza;

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
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcat;->zza(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzezg:Lcom/google/android/gms/internal/ads/zzbwg;

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zza(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzezb:Lcom/google/android/gms/internal/ads/zzcaq;

    .line 14
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zza(Lcom/google/android/gms/internal/ads/zzcaq;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzblu;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Landroid/view/ViewGroup;)V

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zza(Lcom/google/android/gms/internal/ads/zzblu;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzagl()Lcom/google/android/gms/internal/ads/zzcau;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcau;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzalb()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
