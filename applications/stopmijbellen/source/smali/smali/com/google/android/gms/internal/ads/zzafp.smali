.class final Lcom/google/android/gms/internal/ads/zzafp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafm;

.field private final zzb:I

.field private final zzc:J

.field private final zzd:J

.field private final zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafm;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:Lcom/google/android/gms/internal/ads/zzafm;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzc:J

    sub-long/2addr p5, p3

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzafm;->zzd:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzd:J

    .line 2
    invoke-direct {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzafp;->zza(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zze:J

    return-void
.end method

.method private final zza(J)J
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzb:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:Lcom/google/android/gms/internal/ads/zzafm;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzafm;->zzc:I

    int-to-long v6, p1

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zze:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzxn;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:Lcom/google/android/gms/internal/ads/zzafm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafm;->zzc:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzb:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long v4, v0, v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzd:J

    const-wide/16 v2, -0x1

    add-long v8, v0, v2

    const-wide/16 v6, 0x0

    .line 2
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfn;->zzo(JJJ)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzc:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:Lcom/google/android/gms/internal/ads/zzafm;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzafm;->zzd:I

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zza(J)J

    move-result-wide v7

    new-instance v9, Lcom/google/android/gms/internal/ads/zzxq;

    int-to-long v10, v6

    mul-long v10, v10, v0

    add-long/2addr v10, v4

    .line 4
    invoke-direct {v9, v7, v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(JJ)V

    cmp-long v4, v7, p1

    if-gez v4, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzd:J

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzc:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zza:Lcom/google/android/gms/internal/ads/zzafm;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzafm;->zzd:I

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzafp;->zza(J)J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzxq;

    int-to-long v6, v2

    mul-long v0, v0, v6

    add-long/2addr v0, p1

    .line 6
    invoke-direct {v5, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(JJ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {p1, v9, v5}, Lcom/google/android/gms/internal/ads/zzxn;-><init>(Lcom/google/android/gms/internal/ads/zzxq;Lcom/google/android/gms/internal/ads/zzxq;)V

    return-object p1

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {p1, v9, v9}, Lcom/google/android/gms/internal/ads/zzxn;-><init>(Lcom/google/android/gms/internal/ads/zzxq;Lcom/google/android/gms/internal/ads/zzxq;)V

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
