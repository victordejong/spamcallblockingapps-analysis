.class public Lcom/bytedance/sdk/adnet/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# instance fields
.field private final a:Landroid/graphics/Bitmap$Config;

.field private final b:I

.field private final c:I

.field private final d:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/d/a;->a:Landroid/graphics/Bitmap$Config;

    .line 30
    iput p1, p0, Lcom/bytedance/sdk/adnet/d/a;->b:I

    .line 31
    iput p2, p0, Lcom/bytedance/sdk/adnet/d/a;->c:I

    .line 32
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/d/a;->d:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static a(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 49
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    .line 82
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 103
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method


# virtual methods
.method public a([B)Landroid/graphics/Bitmap;
    .locals 9

    .line 118
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    iget v1, p0, Lcom/bytedance/sdk/adnet/d/a;->b:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/adnet/d/a;->c:I

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/a;->a:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 125
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 127
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 128
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 131
    iget v5, p0, Lcom/bytedance/sdk/adnet/d/a;->b:I

    iget v6, p0, Lcom/bytedance/sdk/adnet/d/a;->c:I

    iget-object v7, p0, Lcom/bytedance/sdk/adnet/d/a;->d:Landroid/widget/ImageView$ScaleType;

    .line 132
    invoke-static {v5, v6, v3, v4, v7}, Lcom/bytedance/sdk/adnet/d/a;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 134
    iget v6, p0, Lcom/bytedance/sdk/adnet/d/a;->c:I

    iget v7, p0, Lcom/bytedance/sdk/adnet/d/a;->b:I

    iget-object v8, p0, Lcom/bytedance/sdk/adnet/d/a;->d:Landroid/widget/ImageView$ScaleType;

    .line 135
    invoke-static {v6, v7, v4, v3, v8}, Lcom/bytedance/sdk/adnet/d/a;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 139
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/sdk/adnet/d/a;->a(IIII)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 144
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v5, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 150
    :cond_1
    invoke-static {p1, v5, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method
