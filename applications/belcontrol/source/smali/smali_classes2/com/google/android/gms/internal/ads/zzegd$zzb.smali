.class public final Lcom/google/android/gms/internal/ads/zzegd$zzb;
.super Lcom/google/android/gms/internal/ads/zzelb$zzb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzegd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzegd;",
        "Lcom/google/android/gms/internal/ads/zzegd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegd;->zzbec()Lcom/google/android/gms/internal/ads/zzegd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegd$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzag(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzegd$zzb;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzegd;->zza(Lcom/google/android/gms/internal/ads/zzegd;Lcom/google/android/gms/internal/ads/zzejr;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzegd$zza;)Lcom/google/android/gms/internal/ads/zzegd$zzb;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzegd;->zza(Lcom/google/android/gms/internal/ads/zzegd;Lcom/google/android/gms/internal/ads/zzegd$zza;)V

    return-object p0
.end method

.method public final zzhu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzegd$zzb;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzegd;->zza(Lcom/google/android/gms/internal/ads/zzegd;Ljava/lang/String;)V

    return-object p0
.end method
