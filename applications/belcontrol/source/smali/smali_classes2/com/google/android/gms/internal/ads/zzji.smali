.class public Lcom/google/android/gms/internal/ads/zzji;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzji;->flags:I

    return-void
.end method

.method public final setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzji;->flags:I

    return-void
.end method

.method public final zzaa(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzji;->flags:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzji;->flags:I

    return-void
.end method

.method public final zzab(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzji;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzgh()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzji;->zzab(I)Z

    move-result v0

    return v0
.end method

.method public final zzgi()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzji;->zzab(I)Z

    move-result v0

    return v0
.end method

.method public final zzgj()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzji;->zzab(I)Z

    move-result v0

    return v0
.end method
