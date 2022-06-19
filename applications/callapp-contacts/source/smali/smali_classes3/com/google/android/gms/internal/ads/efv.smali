.class public final Lcom/google/android/gms/internal/ads/efv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/efi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/efs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/efi;

    check-cast p2, Lcom/google/android/gms/internal/ads/efi;

    .line 1009
    iget v0, p1, Lcom/google/android/gms/internal/ads/efi;->b:F

    .line 2009
    iget v1, p2, Lcom/google/android/gms/internal/ads/efi;->b:F

    const/4 v2, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v2

    .line 3009
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/efi;->b:F

    .line 4009
    iget v1, p2, Lcom/google/android/gms/internal/ads/efi;->b:F

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v3

    .line 5008
    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/ads/efi;->a:F

    .line 6008
    iget v1, p2, Lcom/google/android/gms/internal/ads/efi;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    .line 7008
    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/ads/efi;->a:F

    .line 8008
    iget v1, p2, Lcom/google/android/gms/internal/ads/efi;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    return v3

    .line 8011
    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/ads/efi;->d:F

    .line 9009
    iget v1, p1, Lcom/google/android/gms/internal/ads/efi;->b:F

    sub-float/2addr v0, v1

    .line 9010
    iget v1, p1, Lcom/google/android/gms/internal/ads/efi;->c:F

    .line 10008
    iget p1, p1, Lcom/google/android/gms/internal/ads/efi;->a:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    .line 10011
    iget p1, p2, Lcom/google/android/gms/internal/ads/efi;->d:F

    .line 11009
    iget v1, p2, Lcom/google/android/gms/internal/ads/efi;->b:F

    sub-float/2addr p1, v1

    .line 11010
    iget v1, p2, Lcom/google/android/gms/internal/ads/efi;->c:F

    .line 12008
    iget p2, p2, Lcom/google/android/gms/internal/ads/efi;->a:F

    sub-float/2addr v1, p2

    mul-float p1, p1, v1

    cmpl-float p2, v0, p1

    if-lez p2, :cond_4

    return v2

    :cond_4
    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
