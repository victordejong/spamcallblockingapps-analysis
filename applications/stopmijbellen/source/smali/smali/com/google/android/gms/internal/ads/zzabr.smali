.class final Lcom/google/android/gms/internal/ads/zzabr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabp;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabm;Lcom/google/android/gms/internal/ads/zzab;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v0

    .line 3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzab;->zzB:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzab;->zzz:I

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzfn;->zzm(II)I

    move-result p2

    if-eqz v0, :cond_0

    .line 5
    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x58

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    const-string v3, ", stsz sample size: "

    invoke-static {v1, v2, p2, v3, v0}, Landroid/support/v4/media/b;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:I

    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v0

    :cond_0
    return v0
.end method
