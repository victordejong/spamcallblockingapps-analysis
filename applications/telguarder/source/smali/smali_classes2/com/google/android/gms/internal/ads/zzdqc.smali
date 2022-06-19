.class final Lcom/google/android/gms/internal/ads/zzdqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private zzhpe:I

.field private final zzhpf:J

.field private final zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

.field private zzhph:J

.field private zzhpi:I

.field private zzhpj:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpf:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    return-void
.end method


# virtual methods
.method public final getCreationTimeMillis()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpf:J

    return-wide v0
.end method

.method public final zzavq()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    return-wide v0
.end method

.method public final zzavr()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    return v0
.end method

.method public final zzawd()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpf:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzawn()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    return-void
.end method

.method public final zzawo()V
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpd:Z

    return-void
.end method

.method public final zzawp()V
    .locals 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    return-void
.end method

.method public final zzawq()Lcom/google/android/gms/internal/ads/zzdqb;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqb;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpd:Z

    .line 24
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    return-object v0
.end method
