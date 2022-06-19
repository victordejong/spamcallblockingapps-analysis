.class public Ltd0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:[I

.field public static final i:[F

.field public static final j:[I

.field public static final k:[F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:I

.field public f:I

.field public final g:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Ltd0;->h:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ltd0;->i:[F

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Ltd0;->j:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Ltd0;->k:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Ltd0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ltd0;->g:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Ltd0;->c(I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ltd0;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltd0;->a:Landroid/graphics/Paint;

    iget v1, p0, Ltd0;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Ltd0;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v1, p4

    iget-object v3, v0, Ltd0;->g:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    sget-object v10, Ltd0;->j:[I

    const/4 v3, 0x0

    aput v3, v10, v3

    iget v3, v0, Ltd0;->d:I

    const/4 v6, 0x1

    aput v3, v10, v6

    iget v3, v0, Ltd0;->e:I

    const/4 v13, 0x2

    aput v3, v10, v13

    iget v3, v0, Ltd0;->f:I

    const/4 v7, 0x3

    aput v3, v10, v7

    int-to-float v3, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    div-float/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    sub-float/2addr v7, v3

    div-float/2addr v7, v8

    add-float/2addr v7, v3

    sget-object v11, Ltd0;->k:[F

    aput v3, v11, v6

    aput v7, v11, v13

    iget-object v3, v0, Ltd0;->b:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/RadialGradient;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v12, v6, v8

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v14

    move v8, v9

    move v9, v12

    move-object v12, v15

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Ltd0;->b:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Ltd0;->b:Landroid/graphics/Paint;

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Ltd0;->b:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .locals 9

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p4

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    neg-int p4, p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p4}, Landroid/graphics/RectF;->offset(FF)V

    sget-object v6, Ltd0;->h:[I

    iget p4, p0, Ltd0;->f:I

    const/4 v0, 0x0

    aput p4, v6, v0

    iget p4, p0, Ltd0;->e:I

    const/4 v0, 0x1

    aput p4, v6, v0

    iget p4, p0, Ltd0;->d:I

    const/4 v0, 0x2

    aput p4, v6, v0

    iget-object p4, p0, Ltd0;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    sget-object v7, Ltd0;->i:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    move v2, v4

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Ltd0;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public c(I)V
    .locals 1

    const/16 v0, 0x44

    invoke-static {p1, v0}, Ls8;->m(II)I

    move-result v0

    iput v0, p0, Ltd0;->d:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ls8;->m(II)I

    move-result v0

    iput v0, p0, Ltd0;->e:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ls8;->m(II)I

    move-result p1

    iput p1, p0, Ltd0;->f:I

    return-void
.end method
