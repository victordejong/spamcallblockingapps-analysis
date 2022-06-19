.class final Landroidx/core/app/a$d;
.super Landroid/app/SharedElementCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/app/n;


# direct methods
.method constructor <init>(Landroidx/core/app/n;)V
    .locals 0

    .line 608
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 609
    iput-object p1, p0, Landroidx/core/app/a$d;->a:Landroidx/core/app/n;

    return-void
.end method


# virtual methods
.method public final onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 639
    iget-object v3, v1, Landroidx/core/app/a$d;->a:Landroidx/core/app/n;

    .line 1168
    instance-of v4, v0, Landroid/widget/ImageView;

    const/high16 v5, 0x49800000    # 1048576.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4

    .line 1169
    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 1170
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1171
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v8, :cond_4

    if-nez v9, :cond_4

    .line 1214
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 1215
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    if-lez v9, :cond_2

    if-gtz v10, :cond_0

    goto :goto_0

    :cond_0
    mul-int v11, v9, v10

    int-to-float v11, v11

    div-float v11, v5, v11

    .line 1219
    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1220
    instance-of v12, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_1

    cmpl-float v12, v11, v7

    if-nez v12, :cond_1

    .line 1222
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1

    :cond_1
    int-to-float v9, v9

    mul-float v9, v9, v11

    float-to-int v9, v9

    int-to-float v10, v10

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 1226
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1227
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1228
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1229
    iget v14, v13, Landroid/graphics/Rect;->left:I

    .line 1230
    iget v15, v13, Landroid/graphics/Rect;->top:I

    .line 1231
    iget v6, v13, Landroid/graphics/Rect;->right:I

    .line 1232
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    .line 1233
    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1234
    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1235
    invoke-virtual {v8, v14, v15, v6, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v8, v11

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_4

    .line 1175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sharedElement:snapshot:bitmap"

    .line 1176
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1178
    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sharedElement:snapshot:imageScaleType"

    .line 1177
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_3

    .line 1180
    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [F

    .line 1182
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v2, "sharedElement:snapshot:imageMatrix"

    .line 1183
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_3
    return-object v0

    .line 1189
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v4, :cond_6

    if-lez v6, :cond_6

    mul-int v7, v4, v6

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1193
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v4, v4

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    .line 1196
    iget-object v7, v3, Landroidx/core/app/n;->a:Landroid/graphics/Matrix;

    if-nez v7, :cond_5

    .line 1197
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v3, Landroidx/core/app/n;->a:Landroid/graphics/Matrix;

    .line 1199
    :cond_5
    iget-object v7, v3, Landroidx/core/app/n;->a:Landroid/graphics/Matrix;

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1200
    iget-object v7, v3, Landroidx/core/app/n;->a:Landroid/graphics/Matrix;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1201
    iget-object v2, v3, Landroidx/core/app/n;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1202
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1203
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1204
    iget-object v3, v3, Landroidx/core/app/n;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1205
    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    return-object v6
.end method

.method public final onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 2

    .line 1258
    instance-of v0, p2, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1259
    check-cast p2, Landroid/os/Bundle;

    const-string v0, "sharedElement:snapshot:bitmap"

    .line 1260
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-object v1

    .line 1264
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1266
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "sharedElement:snapshot:imageScaleType"

    .line 1268
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    .line 1267
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1269
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_2

    const-string p1, "sharedElement:snapshot:imageMatrix"

    .line 1270
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    .line 1271
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 1272
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1273
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1275
    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1276
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1277
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1278
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 652
    new-instance p1, Landroidx/core/app/a$d$1;

    invoke-direct {p1, p0, p3}, Landroidx/core/app/a$d$1;-><init>(Landroidx/core/app/a$d;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 1301
    invoke-interface {p1}, Landroidx/core/app/n$a;->a()V

    return-void
.end method
