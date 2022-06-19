.class final Lcom/google/android/gms/internal/ads/zzeod;
.super Lcom/google/android/gms/internal/ads/zzeob;
.source "com.google.android.gms:play-services-gass@@19.7.0"


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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeob;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V
    .locals 0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/zzelb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 64
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe;->zzb(Lcom/google/android/gms/internal/ads/zzeoy;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzend;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final zzak(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbgf()V

    return-void
.end method

.method final synthetic zzaq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbgf()V

    return-object p1
.end method

.method final synthetic zzau(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbik()I

    move-result p1

    return p1
.end method

.method final synthetic zzay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    return-object p1
.end method

.method final synthetic zzaz(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelb;->zziqk:Lcom/google/android/gms/internal/ads/zzeoe;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbkz()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbla()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeod;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V

    :cond_0
    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzba(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzblb()I

    move-result p1

    return p1
.end method

.method final synthetic zzbky()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbla()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Object;II)V
    .locals 0

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeoe;->zzd(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe;->zza(Lcom/google/android/gms/internal/ads/zzeoy;)V

    return-void
.end method

.method final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeoe;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeod;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V

    return-void
.end method

.method final synthetic zzj(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeod;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeoe;)V

    return-void
.end method

.method final synthetic zzk(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeoe;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzeoe;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe;->zzbkz()Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzeoe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe;->zza(Lcom/google/android/gms/internal/ads/zzeoe;Lcom/google/android/gms/internal/ads/zzeoe;)Lcom/google/android/gms/internal/ads/zzeoe;

    move-result-object p1

    return-object p1
.end method
