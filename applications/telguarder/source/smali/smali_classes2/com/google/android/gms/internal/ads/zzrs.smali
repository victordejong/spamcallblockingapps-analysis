.class public final Lcom/google/android/gms/internal/ads/zzrs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->left:F

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrs;->top:F

    add-float/2addr p1, p3

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->right:F

    add-float/2addr p2, p4

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrs;->bottom:F

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzbtz:I

    return-void
.end method


# virtual methods
.method final zzmn()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->left:F

    return v0
.end method

.method final zzmo()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->top:F

    return v0
.end method

.method final zzmp()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->right:F

    return v0
.end method

.method final zzmq()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->bottom:F

    return v0
.end method

.method final zzmr()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzbtz:I

    return v0
.end method
