.class abstract Lcom/google/android/gms/internal/ads/zzdyx;
.super Lcom/google/android/gms/internal/ads/zzdyo;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field private zziae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwy;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwy<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>(Lcom/google/android/gms/internal/ads/zzdwy;ZZ)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwy;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdxd;->zzazm()Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwy;->size()I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdxl;->zzet(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwy;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zziae:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdyo$zza;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyo;->zza(Lcom/google/android/gms/internal/ads/zzdyo$zza;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zziae:Ljava/util/List;

    return-void
.end method

.method final zzazx()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zziae:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyx;->zzl(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final zzb(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zziae:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzdyz;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method abstract zzl(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method
