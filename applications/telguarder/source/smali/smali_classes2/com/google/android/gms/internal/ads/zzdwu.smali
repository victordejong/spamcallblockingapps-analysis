.class abstract Lcom/google/android/gms/internal/ads/zzdwu;
.super Lcom/google/android/gms/internal/ads/zzdyd;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyd<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyd;-><init>()V

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdwl;->zzu(II)I

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->size:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwu;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwu;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwu;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwu;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
