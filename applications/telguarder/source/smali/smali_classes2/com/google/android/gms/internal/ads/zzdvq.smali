.class abstract Lcom/google/android/gms/internal/ads/zzdvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzhvl:I

.field private zzhvm:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    sget v1, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvq:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvp;->zzhvk:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    sub-int/2addr v1, v3

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 13
    sget v0, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvq;->zzaza()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvm:Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    sget v1, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvp:I

    if-eq v0, v1, :cond_1

    .line 16
    sget v0, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    return v3

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v2

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvq;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget v0, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvm:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvm:Ljava/lang/Object;

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract zzaza()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final zzazb()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 4
    sget v0, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvq;->zzhvl:I

    const/4 v0, 0x0

    return-object v0
.end method
