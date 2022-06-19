.class public final Lcom/google/android/gms/internal/ads/ebk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/ecy;)I
    .locals 3

    const/4 v0, 0x0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ecy;->b()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ecy;->d()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0
.end method
