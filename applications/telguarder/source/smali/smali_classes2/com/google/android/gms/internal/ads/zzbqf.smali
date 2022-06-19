.class public final Lcom/google/android/gms/internal/ads/zzbqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbua;


# instance fields
.field private final zzaad:Landroid/content/Context;

.field private final zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final zzfqm:Lcom/google/android/gms/internal/ads/zzclq;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/zzclq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzaad:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfqm:Lcom/google/android/gms/internal/ads/zzclq;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 4

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcts:Lcom/google/android/gms/internal/ads/zzaba;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyn()Lcom/google/android/gms/internal/ads/zzayp;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzaad:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayp;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqf;->zzfqm:Lcom/google/android/gms/internal/ads/zzclq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclq;->zzarb()V

    return-void
.end method
