.class final Lcom/theartofdev/edmodo/cropper/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/f$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/graphics/Matrix;


# instance fields
.field final a:Lcom/theartofdev/edmodo/cropper/f$a;

.field final b:Landroid/graphics/PointF;

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/f;->c:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/f$a;Lcom/theartofdev/edmodo/cropper/e;FF)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    .line 64
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/f;->a:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 65
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/e;->b()F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    .line 66
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/e;->c()F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    .line 67
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/e;->d()F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    .line 68
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/e;->e()F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    .line 69
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object p2

    .line 1138
    sget-object v1, Lcom/theartofdev/edmodo/cropper/f$1;->a:[I

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/f$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    .line 1172
    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float v1, p1, p3

    .line 1173
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    goto :goto_2

    .line 1169
    :pswitch_1
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 1164
    :pswitch_2
    iget p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 1161
    :pswitch_3
    iget p1, p2, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 1156
    :pswitch_4
    iget p1, p2, Landroid/graphics/RectF;->left:F

    :goto_1
    sub-float/2addr p1, p3

    move v1, p1

    goto :goto_0

    .line 1152
    :pswitch_5
    iget p1, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, p3

    .line 1153
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 1148
    :pswitch_6
    iget p1, p2, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, p3

    .line 1149
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 1144
    :pswitch_7
    iget p1, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, p3

    .line 1145
    iget p1, p2, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 1140
    :pswitch_8
    iget p1, p2, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, p3

    .line 1141
    iget p1, p2, Landroid/graphics/RectF;->top:F

    :goto_2
    sub-float/2addr p1, p4

    .line 1179
    :goto_3
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1180
    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method static a(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    return p2
.end method

.method static a(Landroid/graphics/RectF;F)V
    .locals 2

    .line 690
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method static a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    .line 322
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 323
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 325
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 326
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 328
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 329
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 331
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    cmpl-float p2, v0, v1

    if-lez p2, :cond_3

    .line 332
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, v2, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    return-void
.end method

.method static b(Landroid/graphics/RectF;F)V
    .locals 2

    .line 698
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method static b(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    .line 722
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 723
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 724
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 726
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 727
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method static c(Landroid/graphics/RectF;F)V
    .locals 2

    .line 706
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method static c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    .line 736
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 737
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 738
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 740
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 741
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method static d(Landroid/graphics/RectF;F)V
    .locals 2

    .line 714
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 357
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 360
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float v3, p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 364
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    cmpg-float v1, v1, p4

    if-gez v1, :cond_2

    .line 365
    iget p2, p3, Landroid/graphics/RectF;->left:F

    .line 369
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 370
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    sub-float/2addr p2, v1

    .line 374
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 375
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    sub-float/2addr p2, v1

    .line 378
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    cmpg-float p4, v1, p4

    if-gez p4, :cond_5

    .line 379
    iget p2, p3, Landroid/graphics/RectF;->left:F

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    .line 384
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 387
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 388
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 389
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 393
    :cond_6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 394
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 395
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 400
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    .line 401
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    .line 404
    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p6, p4

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    .line 405
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p6, v0

    mul-float p6, p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 406
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_9
    if-eqz p7, :cond_a

    .line 410
    iget p6, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p6, p4

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 411
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p7, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p7

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    .line 414
    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 412
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 419
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 3

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 445
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 448
    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1

    .line 449
    iget-object p4, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->x:F

    .line 453
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    .line 454
    iget p2, p3, Landroid/graphics/RectF;->right:F

    .line 458
    :cond_2
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 459
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    add-float/2addr p2, p4

    .line 463
    :cond_3
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 464
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    add-float/2addr p2, p4

    .line 468
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_5

    .line 469
    iget p2, p3, Landroid/graphics/RectF;->right:F

    :cond_5
    const/4 p4, 0x0

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 474
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    .line 477
    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    cmpg-float p5, p4, p5

    if-gez p5, :cond_6

    .line 478
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 479
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    .line 483
    :cond_6
    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_7

    .line 484
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 485
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 490
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    .line 491
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    .line 494
    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p5, p5, p7

    if-gez p5, :cond_9

    .line 495
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    iget p7, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p5, p7

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 496
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    :cond_9
    if-eqz p8, :cond_a

    .line 500
    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p4

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p5, p4

    if-lez p4, :cond_a

    .line 501
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p7, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p7

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    .line 504
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 502
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 509
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method final b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 533
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 536
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 540
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    cmpg-float v1, v1, p4

    if-gez v1, :cond_2

    .line 541
    iget p2, p3, Landroid/graphics/RectF;->top:F

    .line 545
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 546
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    sub-float/2addr p2, v1

    .line 550
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 551
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    sub-float/2addr p2, v1

    .line 554
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    cmpg-float p4, v1, p4

    if-gez p4, :cond_5

    .line 555
    iget p2, p3, Landroid/graphics/RectF;->top:F

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    .line 560
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 563
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 564
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 565
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 569
    :cond_6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 570
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 571
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 576
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    .line 579
    iget p6, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p6, p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    .line 580
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p6, v0

    div-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 581
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_9
    if-eqz p7, :cond_a

    .line 585
    iget p6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p6, p4

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 586
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p7, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p7

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    .line 589
    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 587
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 594
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method final b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 3

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 620
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 623
    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1

    .line 624
    iget-object p4, p0, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->y:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->y:F

    .line 627
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    .line 628
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    .line 632
    :cond_2
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 633
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lcom/theartofdev/edmodo/cropper/f;->e:F

    add-float/2addr p2, p4

    .line 637
    :cond_3
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 638
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lcom/theartofdev/edmodo/cropper/f;->g:F

    add-float/2addr p2, p4

    .line 641
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_5

    .line 642
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    :cond_5
    const/4 p4, 0x0

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 647
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    .line 650
    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    cmpg-float p5, p4, p5

    if-gez p5, :cond_6

    .line 651
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->d:F

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 652
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    .line 656
    :cond_6
    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_7

    .line 657
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/f;->f:F

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 658
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 663
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    .line 664
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    .line 667
    iget p5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p5, p5, p7

    if-gez p5, :cond_9

    .line 668
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p1, Landroid/graphics/RectF;->right:F

    iget p7, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p5, p7

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 669
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    :cond_9
    if-eqz p8, :cond_a

    .line 673
    iget p5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p4

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p5, p4

    if-lez p4, :cond_a

    .line 674
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p7, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p7

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    .line 677
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 675
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 682
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
