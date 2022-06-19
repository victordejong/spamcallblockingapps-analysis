.class public final Lcom/google/android/gms/internal/ads/zzeod;
.super Lcom/google/android/gms/internal/ads/zzeob;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeob<",
        "Lcom/google/android/gms/internal/ads/zzeoe;",
        "Lcom/google/android/gms/internal/ads/zzeoe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeob;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoy;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe;->zzb(Lcom/google/android/gms/internal/ads/zzeoy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzend;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzak(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbgf()V

    return-void
.end method

.method public final synthetic zzaq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbgf()V

    return-object p1
.end method

.method public final synthetic zzau(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbik()I

    move-result p1

    return p1
.end method

.method public final synthetic zzay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    return-object p1
.end method

.method public final synthetic zzaz(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbkz()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbla()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeod;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V

    :cond_0
    return-object v0
.end method

.method public final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzba(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzblb()I

    move-result p1

    return p1
.end method

.method public final synthetic zzbky()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbla()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoy;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe;->zza(Lcom/google/android/gms/internal/ads/zzeoy;)V

    return-void
.end method

.method public final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeod;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V

    return-void
.end method

.method public final synthetic zzj(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeod;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbkz()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzeoe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe;->zza(Lcom/google/android/gms/internal/ads/zzeoe;Lcom/google/android/gms/internal/ads/zzeoe;)Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object p1

    return-object p1
.end method
