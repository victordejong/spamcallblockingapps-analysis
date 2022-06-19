.class public Lcom/google/android/gms/internal/ads/zzbqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbqx$zza;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private zzfyw:Landroid/os/Bundle;

.field private final zzfyx:Ljava/lang/String;

.field private final zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbqx$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzbqx$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbqx$zza;)Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbqx$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyw:Landroid/os/Bundle;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbqx$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyx:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zze(Lcom/google/android/gms/internal/ads/zzbqx$zza;)Lcom/google/android/gms/internal/ads/zzdnk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbqx$zza;Lcom/google/android/gms/internal/ads/zzbqz;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqx;-><init>(Lcom/google/android/gms/internal/ads/zzbqx$zza;)V

    return-void
.end method


# virtual methods
.method final zzalk()Lcom/google/android/gms/internal/ads/zzbqx$zza;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqx$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqx$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqx;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzcf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyx:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzfs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyw:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v0

    return-object v0
.end method

.method final zzall()Lcom/google/android/gms/internal/ads/zzdnp;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    return-object v0
.end method

.method final zzalm()Lcom/google/android/gms/internal/ads/zzdnk;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    return-object v0
.end method

.method final zzaln()Landroid/os/Bundle;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyw:Landroid/os/Bundle;

    return-object v0
.end method

.method final zzce(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqx;->zzfyx:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqx;->context:Landroid/content/Context;

    return-object p1
.end method
