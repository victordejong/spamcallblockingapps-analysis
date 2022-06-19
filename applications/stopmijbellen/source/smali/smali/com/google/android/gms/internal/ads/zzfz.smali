.class public final Lcom/google/android/gms/internal/ads/zzfz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzab;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzab;

.field public final zzd:I

.field public final zze:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    const/4 p5, 0x0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfz;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfz;->zze:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzfz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzd:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfz;->zzd:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfz;->zze:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfz;->zze:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfz;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfz;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfz;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfz;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzab;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzd:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfz;->zze:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfz;->zza:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/a;->d(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfz;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
