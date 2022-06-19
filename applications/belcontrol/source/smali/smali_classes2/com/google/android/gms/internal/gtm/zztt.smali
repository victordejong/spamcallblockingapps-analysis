.class public final Lcom/google/android/gms/internal/gtm/zztt;
.super Lcom/google/android/gms/internal/gtm/zztr;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zztr<",
        "Lcom/google/android/gms/internal/gtm/zzts;",
        "Lcom/google/android/gms/internal/gtm/zzts;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zztr;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrc;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/gtm/zzps;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    check-cast p3, Lcom/google/android/gms/internal/gtm/zzts;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(Lcom/google/android/gms/internal/gtm/zzum;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic zzaa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzmi()V

    return-object p1
.end method

.method public final synthetic zzad(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzpe()I

    move-result p1

    return p1
.end method

.method public final synthetic zzag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    return-object p1
.end method

.method public final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrj()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrk()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zztt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V

    :cond_0
    return-object v0
.end method

.method public final synthetic zzai(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzrl()I

    move-result p1

    return p1
.end method

.method public final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzts;->zza(Lcom/google/android/gms/internal/gtm/zzum;)V

    return-void
.end method

.method public final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zztt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V

    return-void
.end method

.method public final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zztt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V

    return-void
.end method

.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrj()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzts;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzts;->zza(Lcom/google/android/gms/internal/gtm/zzts;Lcom/google/android/gms/internal/gtm/zzts;)Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzri()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrk()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    return-object v0
.end method

.method public final zzt(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzmi()V

    return-void
.end method
