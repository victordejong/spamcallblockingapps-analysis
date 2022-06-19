.class public final Lcom/google/android/gms/internal/ads/zzdpd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzhnb:Lcom/google/android/gms/internal/ads/zzdpg;

.field private zzhnc:I

.field private zzhnd:I

.field private zzhne:I

.field private zzhnf:I

.field private zzhng:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnb:Lcom/google/android/gms/internal/ads/zzdpg;

    return-void
.end method


# virtual methods
.method public final zzavx()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhne:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhne:I

    return-void
.end method

.method public final zzavy()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnf:I

    return-void
.end method

.method public final zzavz()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnc:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnb:Lcom/google/android/gms/internal/ads/zzdpg;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhnv:Z

    return-void
.end method

.method public final zzawa()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnb:Lcom/google/android/gms/internal/ads/zzdpg;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdpg;->zzhnw:Z

    return-void
.end method

.method public final zzawb()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhng:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhng:I

    return-void
.end method

.method public final zzawc()Lcom/google/android/gms/internal/ads/zzdpg;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnb:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnb:Lcom/google/android/gms/internal/ads/zzdpg;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhnv:Z

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhnw:Z

    return-object v0
.end method

.method public final zzawd()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tPool does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNew pools created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPools removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tEntries added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhng:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNo entries retrieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzhnf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
