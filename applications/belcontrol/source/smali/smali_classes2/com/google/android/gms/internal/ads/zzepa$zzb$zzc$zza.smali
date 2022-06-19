.class public final Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;
.super Lcom/google/android/gms/internal/ads/zzelb$zzb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;->zzblv()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeoz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzap(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;->zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;Lcom/google/android/gms/internal/ads/zzejr;)V

    return-object p0
.end method

.method public final zzaq(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;Lcom/google/android/gms/internal/ads/zzejr;)V

    return-object p0
.end method
