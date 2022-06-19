.class public final Lcom/google/android/gms/internal/ads/zzdqc;
.super Ljava/lang/Object;
.source ""


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    return-void
.end method


# virtual methods
.method public final getCreationTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpf:J

    return-wide v0
.end method

.method public final zzavq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    return-wide v0
.end method

.method public final zzavr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    return v0
.end method

.method public final zzawd()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpf:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzawn()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhph:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpi:I

    return-void
.end method

.method public final zzawo()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpd:Z

    return-void
.end method

.method public final zzawp()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpe:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    return-void
.end method

.method public final zzawq()Lcom/google/android/gms/internal/ads/zzdqb;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhpg:Lcom/google/android/gms/internal/ads/zzdqb;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpd:Z

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    return-object v0
.end method
