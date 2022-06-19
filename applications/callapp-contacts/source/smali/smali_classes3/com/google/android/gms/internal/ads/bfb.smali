.class final Lcom/google/android/gms/internal/ads/bfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cxu<",
        "Lcom/google/android/gms/internal/ads/emg;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:D

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bey;DZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfb;->c:Lcom/google/android/gms/internal/ads/bey;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bfb;->a:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bfb;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/emg;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfb;->c:Lcom/google/android/gms/internal/ads/bey;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/emg;->b:[B

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/bfb;->a:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/bfb;->b:Z

    .line 2010
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-wide/high16 v5, 0x4064000000000000L    # 160.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    .line 2011
    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v3, :cond_0

    .line 2013
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2016
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dJ:Lcom/google/android/gms/internal/ads/af;

    .line 2017
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 2018
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2020
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2021
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/bey;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 2022
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2023
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2024
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v2, v3

    if-lez v2, :cond_1

    .line 2027
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->dK:Lcom/google/android/gms/internal/ads/af;

    .line 2028
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 2029
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v1

    .line 2030
    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x21

    .line 2031
    div-int/lit8 v2, v2, 0x2

    shl-int/2addr v1, v2

    .line 2032
    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2033
    :cond_1
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/bey;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
