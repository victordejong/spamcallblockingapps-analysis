.class public final Lcom/google/android/gms/internal/ads/eek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/iy;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/eek;-><init>(IIF)V

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9c4

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/eek;->a:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/eek;->c:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/eek;->d:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/eek;->a:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/eek;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eek;->b:I

    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/eek;->a:I

    int-to-float v3, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/eek;->d:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/eek;->a:I

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/ads/eek;->c:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 15
    :cond_1
    throw p1
.end method

.method public final b()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/eek;->b:I

    return v0
.end method
