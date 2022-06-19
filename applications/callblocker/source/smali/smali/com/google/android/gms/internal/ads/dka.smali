.class public final Lcom/google/android/gms/internal/ads/dka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cc;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dka;-><init>(IIF)V

    .line 2
    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dka;->a:I

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dka;->c:I

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/dka;->d:F

    .line 7
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dka;->a:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 3

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dka;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dka;->b:I

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dka;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dka;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/dka;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dka;->a:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/dka;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dka;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    throw p1

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dka;->b:I

    return v0
.end method
