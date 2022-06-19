.class public final Lcom/google/android/gms/internal/ads/zzrs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F

.field private final zzbtz:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->left:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrs;->top:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->right:F

    add-float/2addr p2, p4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrs;->bottom:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzbtz:I

    return-void
.end method


# virtual methods
.method public final zzmn()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->left:F

    return v0
.end method

.method public final zzmo()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->top:F

    return v0
.end method

.method public final zzmp()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->right:F

    return v0
.end method

.method public final zzmq()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->bottom:F

    return v0
.end method

.method public final zzmr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzbtz:I

    return v0
.end method
