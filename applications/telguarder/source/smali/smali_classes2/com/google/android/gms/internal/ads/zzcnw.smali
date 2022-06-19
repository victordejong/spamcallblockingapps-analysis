.class final Lcom/google/android/gms/internal/ads/zzcnw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbua;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnw;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 3

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzdwy:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnw;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvl;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnw;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnw;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzdwy:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 0

    return-void
.end method
