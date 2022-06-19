.class public Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->ALL:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;-><init>(IILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)V

    return-void
.end method

.method public constructor <init>(IILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>()V

    .line 38
    iput p1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    mul-int/lit8 p1, p1, 0x2

    .line 39
    iput p1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    .line 40
    iput p2, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    .line 41
    iput-object p3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 48
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 50
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 53
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 55
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p2, p3

    int-to-float p3, p4

    .line 1062
    iget p4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v0, p4

    sub-float/2addr p2, v0

    int-to-float p4, p4

    sub-float/2addr p3, p4

    .line 1065
    sget-object p4, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$1;->a:[I

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    .line 1112
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {v1, p4, p3, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1211
    :pswitch_0
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v0

    sub-float v3, p2, v3

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v5, v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-direct {p4, v3, v5, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1213
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v5, v4

    sub-float v5, p3, v5

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p4, v3, v5, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1215
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v5, v4

    sub-float v5, p2, v5

    int-to-float v4, v4

    sub-float v4, p3, v4

    invoke-direct {p4, v3, v0, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1216
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int v4, v0, v3

    int-to-float v4, v4

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {p4, v4, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1201
    :pswitch_1
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int v6, v0, v5

    int-to-float v6, v6

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1203
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v0

    sub-float v3, p2, v3

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1205
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p4, v3, v0, v4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1206
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v4, v4

    sub-float/2addr p3, v4

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1192
    :pswitch_2
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1194
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1196
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int v4, v0, v3

    int-to-float v4, v4

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {p4, v4, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1184
    :pswitch_3
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1186
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v3

    invoke-direct {p4, v0, v3, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1187
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v4, v4

    sub-float/2addr p2, v4

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1176
    :pswitch_4
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1178
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v0, v0

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {p4, v0, v3, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1180
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int v4, v0, v3

    int-to-float v4, v4

    int-to-float v0, v0

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {p4, v4, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1169
    :pswitch_5
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v0, v0

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {p4, v0, v3, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1171
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v3

    invoke-direct {p4, v0, v3, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1172
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v5, v4

    sub-float/2addr p2, v5

    int-to-float v4, v4

    sub-float/2addr p3, v4

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1164
    :pswitch_6
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v3

    invoke-direct {p4, v0, v3, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1165
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v4, v4

    sub-float/2addr p2, v4

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1158
    :pswitch_7
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1160
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1152
    :pswitch_8
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v0, v0

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {p4, v0, v3, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1154
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v4, v4

    sub-float/2addr p3, v4

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1146
    :pswitch_9
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1148
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1139
    :pswitch_a
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v0

    sub-float v3, p2, v3

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1141
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p4, v3, v0, v4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1142
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    sub-float v3, p2, v3

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-direct {p4, v3, v4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1132
    :pswitch_b
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v5, v4

    sub-float v5, p3, v5

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p4, v3, v5, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1134
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v5, v5

    sub-float v5, p3, v5

    invoke-direct {p4, v3, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1135
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1125
    :pswitch_c
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    int-to-float v3, v0

    sub-float v3, p2, v3

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v5, v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-direct {p4, v3, v5, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1127
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p4, v3, v0, v4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1128
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    sub-float v3, p2, v3

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1118
    :pswitch_d
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    add-int v6, v0, v5

    int-to-float v6, v6

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p4, v3, v4, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, p4, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1120
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    iget v4, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int v5, v0, v4

    int-to-float v5, v5

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p4, v3, v5, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1121
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v3, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1067
    :pswitch_e
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-direct {p4, v3, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {v1, p4, p3, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 227
    instance-of v0, p1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;

    iget v0, p1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 236
    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    mul-int/lit16 v0, v0, 0x2710

    const v1, -0x43abf40

    add-int/2addr v1, v0

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    iget v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedTransformation(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    .line 222
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.callapp.contacts.RoundedCornersTransformation.1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->e:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
