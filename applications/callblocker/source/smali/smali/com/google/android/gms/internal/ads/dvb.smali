.class public final Lcom/google/android/gms/internal/ads/dvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/ads/dup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/duy;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dup;

    check-cast p2, Lcom/google/android/gms/internal/ads/dup;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->b()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->b()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->b()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->b()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->a()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->a()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->a()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->a()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->d()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->b()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->c()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dup;->a()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->d()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->b()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->c()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dup;->a()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 13
    cmpl-float v4, v2, v3

    if-gtz v4, :cond_0

    .line 15
    cmpg-float v0, v2, v3

    if-gez v0, :cond_4

    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_4
    const/4 v0, 0x0

    .line 18
    goto :goto_0
.end method
