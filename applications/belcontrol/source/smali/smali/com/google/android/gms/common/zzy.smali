.class public final Lcom/google/android/gms/common/zzy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:J

.field private zzc:Lcom/google/android/gms/internal/common/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzu<",
            "[B>;"
        }
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/common/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzu<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/common/zzy;->zzb:J

    invoke-static {}, Lcom/google/android/gms/internal/common/zzu;->zzi()Lcom/google/android/gms/internal/common/zzu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    invoke-static {}, Lcom/google/android/gms/internal/common/zzu;->zzi()Lcom/google/android/gms/internal/common/zzu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/common/zzy;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/common/zzy;->zzb:J

    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/gms/common/zzy;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzu;->zzm(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    return-object p0
.end method

.method public final zzd(Ljava/util/List;)Lcom/google/android/gms/common/zzy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/gms/common/zzy;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzu;->zzm(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/common/zzz;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/common/zzy;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either orderedTestCerts or orderedProdCerts must have at least one cert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/zzz;

    iget-object v3, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/common/zzy;->zzb:J

    iget-object v6, p0, Lcom/google/android/gms/common/zzy;->zzc:Lcom/google/android/gms/internal/common/zzu;

    iget-object v7, p0, Lcom/google/android/gms/common/zzy;->zzd:Lcom/google/android/gms/internal/common/zzu;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/common/zzz;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/common/zzx;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "minimumStampedVersionNumber must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "packageName must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
