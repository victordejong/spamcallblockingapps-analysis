.class public final Lcom/google/android/gms/internal/ads/dlj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dlj;


# instance fields
.field public final b:F

.field public final c:F

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dlj;

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/dlj;-><init>(FF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dlj;->a:Lcom/google/android/gms/internal/ads/dlj;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dlj;->b:F

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/dlj;->c:F

    .line 4
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlj;->d:I

    .line 5
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .prologue
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlj;->d:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    if-ne p0, p1, :cond_1

    .line 12
    :cond_0
    :goto_0
    return v0

    .line 9
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/dlj;

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/dlj;->b:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/dlj;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlj;->c:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/dlj;->c:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlj;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlj;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    return v0
.end method
