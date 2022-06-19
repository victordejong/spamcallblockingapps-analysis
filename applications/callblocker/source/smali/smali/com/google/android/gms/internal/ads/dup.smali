.class public final Lcom/google/android/gms/internal/ads/dup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dup;->a:F

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/dup;->b:F

    .line 4
    add-float v0, p1, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dup;->c:F

    .line 5
    add-float v0, p2, p4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dup;->d:F

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/dup;->e:I

    .line 7
    return-void
.end method


# virtual methods
.method final a()F
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dup;->a:F

    return v0
.end method

.method final b()F
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dup;->b:F

    return v0
.end method

.method final c()F
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dup;->c:F

    return v0
.end method

.method final d()F
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dup;->d:F

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dup;->e:I

    return v0
.end method
