.class public Lai0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai0$g;,
        Lai0$b;,
        Lai0$c;,
        Lai0$d;,
        Lai0$i;,
        Lai0$k;,
        Lai0$e;,
        Lai0$j;,
        Lai0$f;,
        Lai0$h;
    }
.end annotation


# static fields
.field public static l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/graphics/Canvas;

.field public b:Lzh0$b;

.field public c:F

.field public d:Z

.field public e:Lzh0;

.field public f:Lai0$h;

.field public g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lai0$h;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lzh0$j0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;Lzh0$b;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai0;->a:Landroid/graphics/Canvas;

    iput p3, p0, Lai0;->c:F

    iput-object p2, p0, Lai0;->b:Lzh0$b;

    return-void
.end method

.method public static varargs C(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static varargs J(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized Z()V
    .locals 3

    const-class v0, Lai0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Structure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "BasicStructure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "ConditionalProcessing"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Style"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "ViewportAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Shape"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "BasicText"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "PaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "BasicPaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "OpacityAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "BasicGraphicsAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Marker"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Gradient"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Clip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "BasicClip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "Mask"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lai0;->l:Ljava/util/HashSet;

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs Z0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lai0;)Z
    .locals 0

    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lai0;)Lai0$h;
    .locals 0

    iget-object p0, p0, Lai0;->f:Lai0$h;

    return-object p0
.end method

.method public static synthetic d(Lai0;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lai0;->a:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(FFFFFZZFFLzh0$x;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lai0;->m(FFFFFZZFFLzh0$x;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lai0;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static m(FFFFFZZFFLzh0$x;)V
    .locals 33

    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    cmpl-float v4, p0, v2

    if-nez v4, :cond_0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-eqz v5, :cond_a

    cmpl-float v4, p3, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p9

    move v1, v2

    goto/16 :goto_4

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v0

    const-wide v8, 0x4076800000000000L    # 360.0

    rem-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    sub-float v12, p0, v2

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-float v8, p1, v3

    float-to-double v8, v8

    div-double/2addr v8, v14

    mul-double v16, v10, v12

    mul-double v18, v6, v8

    add-double v14, v16, v18

    neg-double v2, v6

    mul-double v2, v2, v12

    mul-double v8, v8, v10

    add-double/2addr v2, v8

    mul-float v8, v4, v4

    float-to-double v8, v8

    mul-float v12, v5, v5

    float-to-double v12, v12

    mul-double v16, v14, v14

    mul-double v18, v2, v2

    div-double v22, v16, v8

    div-double v24, v18, v12

    add-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v22, v24

    if-lez v26, :cond_2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v4, v4, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v5, v5, v8

    mul-float v8, v4, v4

    float-to-double v8, v8

    mul-float v12, v5, v5

    float-to-double v12, v12

    :cond_2
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    move-wide/from16 v26, v22

    goto :goto_0

    :cond_3
    move-wide/from16 v26, v24

    :goto_0
    mul-double v28, v8, v12

    mul-double v8, v8, v18

    sub-double v28, v28, v8

    mul-double v12, v12, v16

    sub-double v28, v28, v12

    add-double/2addr v8, v12

    div-double v28, v28, v8

    const-wide/16 v8, 0x0

    cmpg-double v0, v28, v8

    if-gez v0, :cond_4

    move-wide/from16 v28, v8

    :cond_4
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v26, v26, v12

    float-to-double v12, v4

    mul-double v16, v12, v2

    float-to-double v8, v5

    div-double v16, v16, v8

    mul-double v16, v16, v26

    mul-double v28, v8, v14

    move v0, v4

    move/from16 v30, v5

    div-double v4, v28, v12

    neg-double v4, v4

    mul-double v26, v26, v4

    move/from16 v4, p7

    add-float v5, p0, v4

    float-to-double v4, v5

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v4, v4, v20

    move/from16 v28, v0

    move/from16 v0, p8

    add-float v1, p1, v0

    float-to-double v0, v1

    div-double v0, v0, v20

    mul-double v20, v10, v16

    mul-double v31, v6, v26

    sub-double v20, v20, v31

    add-double v4, v4, v20

    mul-double v6, v6, v16

    mul-double v10, v10, v26

    add-double/2addr v6, v10

    add-double/2addr v0, v6

    sub-double v6, v14, v16

    div-double/2addr v6, v12

    sub-double v10, v2, v26

    div-double/2addr v10, v8

    neg-double v14, v14

    sub-double v14, v14, v16

    div-double/2addr v14, v12

    neg-double v2, v2

    sub-double v2, v2, v26

    div-double/2addr v2, v8

    mul-double v8, v6, v6

    mul-double v12, v10, v10

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmpg-double v20, v10, v16

    if-gez v20, :cond_5

    move-wide/from16 v16, v22

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v24

    :goto_1
    div-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    mul-double v16, v14, v14

    mul-double v20, v2, v2

    add-double v16, v16, v20

    mul-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v16, v6, v14

    mul-double v20, v10, v2

    add-double v16, v16, v20

    mul-double v6, v6, v2

    mul-double v10, v10, v14

    sub-double/2addr v6, v10

    const-wide/16 v2, 0x0

    cmpg-double v10, v6, v2

    if-gez v10, :cond_6

    move-wide/from16 v24, v22

    :cond_6
    div-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double v24, v24, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    if-nez p6, :cond_7

    cmpl-double v8, v6, v2

    if-lez v8, :cond_7

    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v6, v8

    goto :goto_2

    :cond_7
    const-wide v8, 0x4076800000000000L    # 360.0

    if-eqz p6, :cond_8

    cmpg-double v10, v6, v2

    if-gez v10, :cond_8

    add-double/2addr v6, v8

    :cond_8
    :goto_2
    rem-double/2addr v6, v8

    rem-double/2addr v12, v8

    invoke-static {v12, v13, v6, v7}, Lai0;->n(DD)[F

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v6, v28

    move/from16 v7, v30

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v6, p4

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v4, v4

    double-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    move/from16 v1, p7

    aput v1, v2, v0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move/from16 v3, p8

    aput v3, v2, v0

    const/4 v0, 0x0

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_9

    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, v2, v5

    add-int/lit8 v6, v0, 0x4

    aget v6, v2, v6

    add-int/lit8 v7, v0, 0x5

    aget v7, v2, v7

    move-object/from16 p0, p9

    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    invoke-interface/range {p0 .. p6}, Lzh0$x;->c(FFFFFF)V

    add-int/lit8 v0, v0, 0x6

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    move v1, v2

    move-object/from16 v0, p9

    :goto_4
    invoke-interface {v0, v1, v3}, Lzh0$x;->e(FF)V

    return-void
.end method

.method public static n(DD)[F
    .locals 21

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    int-to-double v5, v0

    div-double/2addr v3, v5

    double-to-float v3, v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    div-double/2addr v8, v6

    mul-int/lit8 v6, v0, 0x6

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    int-to-float v11, v7

    mul-float v11, v11, v3

    float-to-double v11, v11

    add-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    add-int/lit8 v17, v10, 0x1

    mul-double v18, v8, v15

    move/from16 v20, v0

    move-wide/from16 p0, v1

    sub-double v0, v13, v18

    double-to-float v0, v0

    aput v0, v6, v10

    add-int/lit8 v0, v17, 0x1

    mul-double v13, v13, v8

    add-double v1, v15, v13

    double-to-float v1, v1

    aput v1, v6, v17

    add-double/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    add-int/lit8 v12, v0, 0x1

    mul-double v13, v8, v10

    add-double/2addr v13, v1

    double-to-float v13, v13

    aput v13, v6, v0

    add-int/lit8 v0, v12, 0x1

    mul-double v13, v8, v1

    sub-double v13, v10, v13

    double-to-float v13, v13

    aput v13, v6, v12

    add-int/lit8 v12, v0, 0x1

    double-to-float v1, v1

    aput v1, v6, v0

    add-int/lit8 v0, v12, 0x1

    double-to-float v1, v10

    aput v1, v6, v12

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, p0

    move v10, v0

    move/from16 v0, v20

    goto :goto_0

    :cond_0
    return-object v6
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lai0;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai0$h;

    iput-object v0, p0, Lai0;->f:Lai0$h;

    return-void
.end method

.method public final A0(Lzh0$n0;)V
    .locals 1

    instance-of v0, p1, Lzh0$t;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->S0()V

    invoke-virtual {p0, p1}, Lai0;->y(Lzh0$n0;)V

    instance-of v0, p1, Lzh0$f0;

    if-eqz v0, :cond_1

    check-cast p1, Lzh0$f0;

    invoke-virtual {p0, p1}, Lai0;->x0(Lzh0$f0;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lzh0$e1;

    if-eqz v0, :cond_2

    check-cast p1, Lzh0$e1;

    invoke-virtual {p0, p1}, Lai0;->E0(Lzh0$e1;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lzh0$s0;

    if-eqz v0, :cond_3

    check-cast p1, Lzh0$s0;

    invoke-virtual {p0, p1}, Lai0;->B0(Lzh0$s0;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lzh0$m;

    if-eqz v0, :cond_4

    check-cast p1, Lzh0$m;

    invoke-virtual {p0, p1}, Lai0;->q0(Lzh0$m;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lzh0$o;

    if-eqz v0, :cond_5

    check-cast p1, Lzh0$o;

    invoke-virtual {p0, p1}, Lai0;->r0(Lzh0$o;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lzh0$v;

    if-eqz v0, :cond_6

    check-cast p1, Lzh0$v;

    invoke-virtual {p0, p1}, Lai0;->t0(Lzh0$v;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lzh0$b0;

    if-eqz v0, :cond_7

    check-cast p1, Lzh0$b0;

    invoke-virtual {p0, p1}, Lai0;->w0(Lzh0$b0;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lzh0$d;

    if-eqz v0, :cond_8

    check-cast p1, Lzh0$d;

    invoke-virtual {p0, p1}, Lai0;->o0(Lzh0$d;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lzh0$i;

    if-eqz v0, :cond_9

    check-cast p1, Lzh0$i;

    invoke-virtual {p0, p1}, Lai0;->p0(Lzh0$i;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lzh0$q;

    if-eqz v0, :cond_a

    check-cast p1, Lzh0$q;

    invoke-virtual {p0, p1}, Lai0;->s0(Lzh0$q;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lzh0$a0;

    if-eqz v0, :cond_b

    check-cast p1, Lzh0$a0;

    invoke-virtual {p0, p1}, Lai0;->v0(Lzh0$a0;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lzh0$z;

    if-eqz v0, :cond_c

    check-cast p1, Lzh0$z;

    invoke-virtual {p0, p1}, Lai0;->u0(Lzh0$z;)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Lzh0$w0;

    if-eqz v0, :cond_d

    check-cast p1, Lzh0$w0;

    invoke-virtual {p0, p1}, Lai0;->D0(Lzh0$w0;)V

    :cond_d
    :goto_0
    invoke-virtual {p0}, Lai0;->R0()V

    return-void
.end method

.method public final B()V
    .locals 2

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lai0;->g:Ljava/util/Stack;

    iget-object v1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {v0}, Lai0$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai0$h;

    iput-object v0, p0, Lai0;->f:Lai0$h;

    return-void
.end method

.method public final B0(Lzh0$s0;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Switch render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lzh0$m;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v0

    invoke-virtual {p0, p1}, Lai0;->K0(Lzh0$s0;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_2
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    return-void
.end method

.method public final C0(Lzh0$t0;Lzh0$p;Lzh0$p;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Symbol render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lzh0$p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lzh0$p;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lzh0$p0;->n:Lyh0;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lyh0;->d:Lyh0;

    :goto_0
    iget-object v1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v1, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lzh0$p;->g(Lai0;)F

    move-result p2

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->g:Lzh0$b;

    iget p2, p2, Lzh0$b;->c:F

    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3, p0}, Lzh0$p;->g(Lai0;)F

    move-result p3

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lai0;->f:Lai0$h;

    iget-object p3, p3, Lai0$h;->g:Lzh0$b;

    iget p3, p3, Lzh0$b;->d:F

    :goto_2
    iget-object v1, p0, Lai0;->f:Lai0$h;

    new-instance v2, Lzh0$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p3}, Lzh0$b;-><init>(FFFF)V

    iput-object v2, v1, Lai0$h;->g:Lzh0$b;

    iget-object p2, v1, Lai0$h;->a:Lzh0$e0;

    iget-object p2, p2, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->g:Lzh0$b;

    iget p3, p2, Lzh0$b;->a:F

    iget v1, p2, Lzh0$b;->b:F

    iget v2, p2, Lzh0$b;->c:F

    iget p2, p2, Lzh0$b;->d:F

    invoke-virtual {p0, p3, v1, v2, p2}, Lai0;->O0(FFFF)V

    :cond_6
    iget-object p2, p1, Lzh0$r0;->o:Lzh0$b;

    if-eqz p2, :cond_7

    iget-object p3, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lai0;->f:Lai0$h;

    iget-object v1, v1, Lai0$h;->g:Lzh0$b;

    invoke-virtual {p0, v1, p2, v0}, Lai0;->s(Lzh0$b;Lzh0$b;Lyh0;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p3, p1, Lzh0$r0;->o:Lzh0$b;

    iput-object p3, p2, Lai0$h;->h:Lzh0$b;

    :cond_7
    invoke-virtual {p0}, Lai0;->n0()Z

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lai0;->F0(Lzh0$j0;Z)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_8
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    return-void
.end method

.method public final D(ZLzh0$b;Lzh0$u;)V
    .locals 3

    iget-object v0, p0, Lai0;->e:Lzh0;

    iget-object v1, p3, Lzh0$u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "Fill"

    goto :goto_0

    :cond_0
    const-string v0, "Stroke"

    :goto_0
    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object v2, p3, Lzh0$u;->a:Ljava/lang/String;

    aput-object v2, p2, v0

    const-string v0, "%s reference \'%s\' not found"

    invoke-static {v0, p2}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p3, Lzh0$u;->b:Lzh0$o0;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, p3, p1, p2}, Lai0;->P0(Lai0$h;ZLzh0$o0;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lai0;->f:Lai0$h;

    iput-boolean v1, p1, Lai0$h;->b:Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lai0;->f:Lai0$h;

    iput-boolean v1, p1, Lai0$h;->c:Z

    :goto_1
    return-void

    :cond_3
    instance-of p3, v0, Lzh0$m0;

    if-eqz p3, :cond_4

    move-object p3, v0

    check-cast p3, Lzh0$m0;

    invoke-virtual {p0, p1, p2, p3}, Lai0;->b0(ZLzh0$b;Lzh0$m0;)V

    :cond_4
    instance-of p3, v0, Lzh0$q0;

    if-eqz p3, :cond_5

    move-object p3, v0

    check-cast p3, Lzh0$q0;

    invoke-virtual {p0, p1, p2, p3}, Lai0;->h0(ZLzh0$b;Lzh0$q0;)V

    :cond_5
    instance-of p2, v0, Lzh0$c0;

    if-eqz p2, :cond_6

    check-cast v0, Lzh0$c0;

    invoke-virtual {p0, p1, v0}, Lai0;->Q0(ZLzh0$c0;)V

    :cond_6
    return-void
.end method

.method public final D0(Lzh0$w0;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Text render"

    invoke-static {v2, v1}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v1, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lzh0$w0;->r:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v1, p1, Lzh0$a1;->n:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lzh0$a1;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0$p;

    invoke-virtual {v1, p0}, Lzh0$p;->g(Lai0;)F

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lzh0$a1;->o:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lzh0$a1;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzh0$p;

    invoke-virtual {v3, p0}, Lzh0$p;->h(Lai0;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p1, Lzh0$a1;->p:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lzh0$a1;->p:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzh0$p;

    invoke-virtual {v4, p0}, Lzh0$p;->g(Lai0;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x0

    :goto_5
    iget-object v5, p1, Lzh0$a1;->q:Ljava/util/List;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lzh0$a1;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->h(Lai0;)F

    move-result v2

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lai0;->S()Lzh0$e0$e;

    move-result-object v0

    sget-object v5, Lzh0$e0$e;->a:Lzh0$e0$e;

    if-eq v0, v5, :cond_b

    invoke-virtual {p0, p1}, Lai0;->r(Lzh0$y0;)F

    move-result v5

    sget-object v6, Lzh0$e0$e;->b:Lzh0$e0$e;

    if-ne v0, v6, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    :cond_a
    sub-float/2addr v1, v5

    :cond_b
    iget-object v0, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v0, :cond_c

    new-instance v0, Lai0$i;

    invoke-direct {v0, p0, v1, v3}, Lai0$i;-><init>(Lai0;FF)V

    invoke-virtual {p0, p1, v0}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    new-instance v5, Lzh0$b;

    iget-object v6, v0, Lai0$i;->c:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v0, v0, Lai0$i;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v7, v8, v6, v0}, Lzh0$b;-><init>(FFFF)V

    iput-object v5, p1, Lzh0$k0;->h:Lzh0$b;

    :cond_c
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v0

    new-instance v5, Lai0$f;

    add-float/2addr v1, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v1, v3}, Lai0$f;-><init>(Lai0;FF)V

    invoke-virtual {p0, p1, v5}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_d
    return-void
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final E0(Lzh0$e1;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Use render"

    invoke-static {v2, v1}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lzh0$e1;->r:Lzh0$p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lzh0$p;->j()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lzh0$e1;->s:Lzh0$p;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lzh0$p;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v1, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p1, Lzh0$n0;->a:Lzh0;

    iget-object v2, p1, Lzh0$e1;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lzh0$e1;->o:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, v1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p1, Lzh0$m;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p1, Lzh0$e1;->p:Lzh0$p;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lzh0$p;->g(Lai0;)F

    move-result v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p1, Lzh0$e1;->q:Lzh0$p;

    if-eqz v4, :cond_7

    invoke-virtual {v4, p0}, Lzh0$p;->h(Lai0;)F

    move-result v3

    :cond_7
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v0

    invoke-virtual {p0, p1}, Lai0;->j0(Lzh0$j0;)V

    instance-of v2, v1, Lzh0$f0;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lai0;->S0()V

    check-cast v1, Lzh0$f0;

    iget-object v2, p1, Lzh0$e1;->r:Lzh0$p;

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    iget-object v2, v1, Lzh0$f0;->r:Lzh0$p;

    :goto_1
    iget-object v3, p1, Lzh0$e1;->s:Lzh0$p;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, v1, Lzh0$f0;->s:Lzh0$p;

    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Lai0;->y0(Lzh0$f0;Lzh0$p;Lzh0$p;)V

    :goto_3
    invoke-virtual {p0}, Lai0;->R0()V

    goto :goto_6

    :cond_a
    instance-of v2, v1, Lzh0$t0;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lzh0$e1;->r:Lzh0$p;

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    new-instance v2, Lzh0$p;

    sget-object v4, Lzh0$d1;->k:Lzh0$d1;

    invoke-direct {v2, v3, v4}, Lzh0$p;-><init>(FLzh0$d1;)V

    :goto_4
    iget-object v4, p1, Lzh0$e1;->s:Lzh0$p;

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    new-instance v4, Lzh0$p;

    sget-object v5, Lzh0$d1;->k:Lzh0$d1;

    invoke-direct {v4, v3, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    :goto_5
    invoke-virtual {p0}, Lai0;->S0()V

    check-cast v1, Lzh0$t0;

    invoke-virtual {p0, v1, v2, v4}, Lai0;->C0(Lzh0$t0;Lzh0$p;Lzh0$p;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v1}, Lai0;->A0(Lzh0$n0;)V

    :goto_6
    invoke-virtual {p0}, Lai0;->i0()V

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_e
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    return-void
.end method

.method public final F(Lzh0$k0;Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->b:Lzh0$o0;

    instance-of v1, v0, Lzh0$u;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lai0;->e:Lzh0;

    check-cast v0, Lzh0$u;

    iget-object v0, v0, Lzh0$u;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    instance-of v1, v0, Lzh0$y;

    if-eqz v1, :cond_0

    check-cast v0, Lzh0$y;

    invoke-virtual {p0, p1, p2, v0}, Lai0;->P(Lzh0$k0;Landroid/graphics/Path;Lzh0$y;)V

    return-void

    :cond_0
    iget-object p1, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final F0(Lzh0$j0;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lai0;->j0(Lzh0$j0;)V

    :cond_0
    invoke-interface {p1}, Lzh0$j0;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$n0;

    invoke-virtual {p0, v0}, Lai0;->A0(Lzh0$n0;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lai0;->i0()V

    :cond_2
    return-void
.end method

.method public final G(Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v1, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v1, Lzh0$e0;->N:Lzh0$e0$h;

    sget-object v2, Lzh0$e0$h;->b:Lzh0$e0$h;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p0, Lai0;->a:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lai0;->f:Lai0$h;

    iget-object p1, p1, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v3, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lai0;->f:Lai0$h;

    iget-object v4, v4, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v0, v0, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public G0(Lzh0;Lzh0$b;Lyh0;Z)V
    .locals 6

    iput-object p1, p0, Lai0;->e:Lzh0;

    iput-boolean p4, p0, Lai0;->d:Z

    invoke-virtual {p1}, Lzh0;->h()Lzh0$f0;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Nothing to render. Document is empty."

    invoke-static {p2, p1}, Lai0;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->N0()V

    invoke-virtual {p0, v1}, Lai0;->y(Lzh0$n0;)V

    iget-object v2, v1, Lzh0$f0;->r:Lzh0$p;

    iget-object v3, v1, Lzh0$f0;->s:Lzh0$p;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lzh0$r0;->o:Lzh0$b;

    :goto_0
    move-object v4, p2

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, v1, Lzh0$p0;->n:Lyh0;

    :goto_1
    move-object v5, p3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lai0;->z0(Lzh0$f0;Lzh0$p;Lzh0$p;Lzh0$b;Lyh0;)V

    return-void
.end method

.method public final H()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lai0;->k:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not enough memory to create temporary bitmaps for mask processing"

    invoke-static {v2, v1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final H0(Lzh0$r;Lai0$c;)V
    .locals 11

    invoke-virtual {p0}, Lai0;->S0()V

    iget-object v0, p1, Lzh0$r;->u:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lai0$c;->c:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p2, Lai0$c;->d:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p2, Lai0$c;->d:F

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lzh0$r;->u:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p1, Lzh0$r;->p:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-object v2, v2, Lai0$h;->a:Lzh0$e0;

    iget-object v2, v2, Lzh0$e0;->h:Lzh0$p;

    iget v3, p0, Lai0;->c:F

    invoke-virtual {v2, v3}, Lzh0$p;->c(F)F

    move-result v2

    :goto_1
    invoke-virtual {p0, p1}, Lai0;->Q(Lzh0$n0;)Lai0$h;

    move-result-object v3

    iput-object v3, p0, Lai0;->f:Lai0$h;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, p2, Lai0$c;->a:F

    iget p2, p2, Lai0$c;->b:F

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p1, Lzh0$r;->q:Lzh0$p;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lzh0$p;->g(Lai0;)F

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p1, Lzh0$r;->r:Lzh0$p;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lzh0$p;->h(Lai0;)F

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p1, Lzh0$r;->s:Lzh0$p;

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lzh0$p;->g(Lai0;)F

    move-result v2

    goto :goto_4

    :cond_6
    const/high16 v2, 0x40400000    # 3.0f

    :goto_4
    iget-object v5, p1, Lzh0$r;->t:Lzh0$p;

    if-eqz v5, :cond_7

    invoke-virtual {v5, p0}, Lzh0$p;->h(Lai0;)F

    move-result v4

    :cond_7
    iget-object v5, p1, Lzh0$r0;->o:Lzh0$b;

    if-eqz v5, :cond_e

    iget v6, v5, Lzh0$b;->c:F

    div-float v6, v2, v6

    iget v5, v5, Lzh0$b;->d:F

    div-float v5, v4, v5

    iget-object v7, p1, Lzh0$p0;->n:Lyh0;

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    sget-object v7, Lyh0;->d:Lyh0;

    :goto_5
    sget-object v8, Lyh0;->c:Lyh0;

    invoke-virtual {v7, v8}, Lyh0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lyh0;->b()Lyh0$b;

    move-result-object v8

    sget-object v9, Lyh0$b;->b:Lyh0$b;

    if-ne v8, v9, :cond_9

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_6

    :cond_9
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_6
    move v6, v5

    move v5, v6

    :cond_a
    neg-float p2, p2

    mul-float p2, p2, v6

    neg-float v0, v0

    mul-float v0, v0, v5

    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p1, Lzh0$r0;->o:Lzh0$b;

    iget v0, p2, Lzh0$b;->c:F

    mul-float v0, v0, v6

    iget p2, p2, Lzh0$b;->d:F

    mul-float p2, p2, v5

    sget-object v8, Lai0$a;->a:[I

    invoke-virtual {v7}, Lyh0;->a()Lyh0$a;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    packed-switch v9, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_8

    :pswitch_0
    sub-float v0, v2, v0

    goto :goto_7

    :pswitch_1
    sub-float v0, v2, v0

    div-float/2addr v0, v10

    :goto_7
    sub-float v0, v1, v0

    :goto_8
    invoke-virtual {v7}, Lyh0;->a()Lyh0$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    const/4 v8, 0x5

    if-eq v7, v8, :cond_c

    const/4 v8, 0x6

    if-eq v7, v8, :cond_b

    const/4 v8, 0x7

    if-eq v7, v8, :cond_c

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b

    goto :goto_a

    :cond_b
    sub-float p2, v4, p2

    goto :goto_9

    :cond_c
    sub-float p2, v4, p2

    div-float/2addr p2, v10

    :goto_9
    sub-float/2addr v1, p2

    :goto_a
    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->a:Lzh0$e0;

    iget-object p2, p2, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p0, v0, v1, v2, v4}, Lai0;->O0(FFFF)V

    :cond_d
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_e
    neg-float p2, p2

    neg-float v0, v0

    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->a:Lzh0$e0;

    iget-object p2, p2, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p0, v1, v1, v2, v4}, Lai0;->O0(FFFF)V

    :cond_f
    :goto_b
    invoke-virtual {p0}, Lai0;->n0()Z

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai0;->F0(Lzh0$j0;Z)V

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_10
    invoke-virtual {p0}, Lai0;->R0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Lzh0$y0;Lai0$j;)V
    .locals 4

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzh0$n0;

    instance-of v3, v2, Lzh0$c1;

    if-eqz v3, :cond_1

    check-cast v2, Lzh0$c1;

    iget-object v2, v2, Lzh0$c1;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p0, v2, v1, v3}, Lai0;->T0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lai0$j;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, p2}, Lai0;->m0(Lzh0$n0;Lai0$j;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I0(Lzh0$l;)V
    .locals 8

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v0, Lzh0$e0;->z:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v2, v0, Lzh0$e0;->A:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v0, v0, Lzh0$e0;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Marker reference \'%s\' not found"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget-object v5, p1, Lzh0$n0;->a:Lzh0;

    invoke-virtual {v5, v1}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lzh0$r;

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lai0;->f:Lai0$h;

    iget-object v5, v5, Lai0$h;->a:Lzh0$e0;

    iget-object v5, v5, Lzh0$e0;->z:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v1, v3

    :goto_0
    iget-object v5, p0, Lai0;->f:Lai0$h;

    iget-object v5, v5, Lai0$h;->a:Lzh0$e0;

    iget-object v5, v5, Lzh0$e0;->A:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v6, p1, Lzh0$n0;->a:Lzh0;

    invoke-virtual {v6, v5}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Lzh0$r;

    goto :goto_1

    :cond_3
    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lai0;->f:Lai0$h;

    iget-object v6, v6, Lai0$h;->a:Lzh0$e0;

    iget-object v6, v6, Lzh0$e0;->A:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v5, v3

    :goto_1
    iget-object v6, p0, Lai0;->f:Lai0$h;

    iget-object v6, v6, Lai0$h;->a:Lzh0$e0;

    iget-object v6, v6, Lzh0$e0;->B:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v7, p1, Lzh0$n0;->a:Lzh0;

    invoke-virtual {v7, v6}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v6

    if-eqz v6, :cond_5

    check-cast v6, Lzh0$r;

    goto :goto_2

    :cond_5
    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lai0;->f:Lai0$h;

    iget-object v7, v7, Lai0$h;->a:Lzh0$e0;

    iget-object v7, v7, Lzh0$e0;->B:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v6, v3

    :goto_2
    instance-of v0, p1, Lzh0$v;

    if-eqz v0, :cond_7

    new-instance v0, Lai0$b;

    check-cast p1, Lzh0$v;

    iget-object p1, p1, Lzh0$v;->o:Lzh0$w;

    invoke-direct {v0, p0, p1}, Lai0$b;-><init>(Lai0;Lzh0$w;)V

    invoke-virtual {v0}, Lai0$b;->f()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_7
    instance-of v0, p1, Lzh0$q;

    if-eqz v0, :cond_8

    check-cast p1, Lzh0$q;

    invoke-virtual {p0, p1}, Lai0;->o(Lzh0$q;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_8
    check-cast p1, Lzh0$z;

    invoke-virtual {p0, p1}, Lai0;->p(Lzh0$z;)Ljava/util/List;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v7, p0, Lai0;->f:Lai0$h;

    iget-object v7, v7, Lai0$h;->a:Lzh0$e0;

    iput-object v3, v7, Lzh0$e0;->B:Ljava/lang/String;

    iput-object v3, v7, Lzh0$e0;->A:Ljava/lang/String;

    iput-object v3, v7, Lzh0$e0;->z:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lai0$c;

    invoke-virtual {p0, v1, v2}, Lai0;->H0(Lzh0$r;Lai0$c;)V

    :cond_b
    if-eqz v5, :cond_c

    const/4 v1, 0x1

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lai0$c;

    invoke-virtual {p0, v5, v2}, Lai0;->H0(Lzh0$r;Lai0$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lai0$c;

    invoke-virtual {p0, v6, p1}, Lai0;->H0(Lzh0$r;Lai0$c;)V

    :cond_d
    return-void
.end method

.method public final J0(Lzh0$s;Lzh0$k0;)V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Mask render"

    invoke-static {v2, v1}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lzh0$s;->n:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    iget-object v1, p1, Lzh0$s;->r:Lzh0$p;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lzh0$p;->g(Lai0;)F

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p2, Lzh0$k0;->h:Lzh0$b;

    iget v1, v1, Lzh0$b;->c:F

    :goto_1
    iget-object v4, p1, Lzh0$s;->s:Lzh0$p;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Lzh0$p;->h(Lai0;)F

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v4, p2, Lzh0$k0;->h:Lzh0$b;

    iget v4, v4, Lzh0$b;->d:F

    :goto_2
    iget-object v5, p1, Lzh0$s;->p:Lzh0$p;

    if-eqz v5, :cond_3

    invoke-virtual {v5, p0}, Lzh0$p;->g(Lai0;)F

    goto :goto_3

    :cond_3
    iget-object v5, p2, Lzh0$k0;->h:Lzh0$b;

    iget v6, v5, Lzh0$b;->a:F

    iget v5, v5, Lzh0$b;->c:F

    :goto_3
    iget-object v5, p1, Lzh0$s;->q:Lzh0$p;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p0}, Lzh0$p;->h(Lai0;)F

    goto :goto_5

    :cond_4
    iget-object v5, p2, Lzh0$k0;->h:Lzh0$b;

    iget v6, v5, Lzh0$b;->b:F

    iget v5, v5, Lzh0$b;->d:F

    goto :goto_5

    :cond_5
    iget-object v1, p1, Lzh0$s;->p:Lzh0$p;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0, v3}, Lzh0$p;->f(Lai0;F)F

    :cond_6
    iget-object v1, p1, Lzh0$s;->q:Lzh0$p;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p0, v3}, Lzh0$p;->f(Lai0;F)F

    :cond_7
    iget-object v1, p1, Lzh0$s;->r:Lzh0$p;

    const v4, 0x3f99999a    # 1.2f

    if-eqz v1, :cond_8

    invoke-virtual {v1, p0, v3}, Lzh0$p;->f(Lai0;F)F

    move-result v1

    goto :goto_4

    :cond_8
    const v1, 0x3f99999a    # 1.2f

    :goto_4
    iget-object v5, p1, Lzh0$s;->s:Lzh0$p;

    if-eqz v5, :cond_9

    invoke-virtual {v5, p0, v3}, Lzh0$p;->f(Lai0;F)F

    move-result v4

    :cond_9
    iget-object v5, p2, Lzh0$k0;->h:Lzh0$b;

    iget v6, v5, Lzh0$b;->a:F

    iget v6, v5, Lzh0$b;->c:F

    iget v7, v5, Lzh0$b;->b:F

    iget v5, v5, Lzh0$b;->d:F

    mul-float v1, v1, v6

    mul-float v4, v4, v5

    :goto_5
    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_e

    cmpl-float v1, v4, v5

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lai0;->S0()V

    invoke-virtual {p0, p1}, Lai0;->Q(Lzh0$n0;)Lai0$h;

    move-result-object v1

    iput-object v1, p0, Lai0;->f:Lai0$h;

    iget-object v1, v1, Lai0$h;->a:Lzh0$e0;

    iput v3, v1, Lzh0$e0;->o:F

    iget-object v1, p1, Lzh0$s;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_6
    if-nez v2, :cond_d

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v2, p2, Lzh0$k0;->h:Lzh0$b;

    iget v3, v2, Lzh0$b;->a:F

    iget v2, v2, Lzh0$b;->b:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object p2, p2, Lzh0$k0;->h:Lzh0$b;

    iget v2, p2, Lzh0$b;->c:F

    iget p2, p2, Lzh0$b;->d:F

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_d
    invoke-virtual {p0, p1, v0}, Lai0;->F0(Lzh0$j0;Z)V

    invoke-virtual {p0}, Lai0;->R0()V

    :cond_e
    :goto_7
    return-void
.end method

.method public final K(Lzh0$y0;Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object p1, p1, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzh0$n0;

    instance-of v3, v2, Lzh0$y0;

    if-eqz v3, :cond_0

    check-cast v2, Lzh0$y0;

    invoke-virtual {p0, v2, p2}, Lai0;->K(Lzh0$y0;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lzh0$c1;

    if-eqz v3, :cond_1

    check-cast v2, Lzh0$c1;

    iget-object v2, v2, Lzh0$c1;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p0, v2, v1, v3}, Lai0;->T0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final K0(Lzh0$s0;)V
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lai0;->e:Lzh0;

    invoke-virtual {v1}, Lzh0;->e()Lbi0;

    move-result-object v1

    invoke-virtual {p1}, Lzh0$h0;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzh0$n0;

    instance-of v3, v2, Lzh0$g0;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    check-cast v3, Lzh0$g0;

    invoke-interface {v3}, Lzh0$g0;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lzh0$g0;->getSystemLanguage()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lzh0$g0;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v5, Lai0;->l:Ljava/util/HashSet;

    if-nez v5, :cond_4

    invoke-static {}, Lai0;->Z()V

    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lai0;->l:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Lzh0$g0;->j()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lbi0;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_8
    invoke-interface {v3}, Lzh0$g0;->k()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lai0;->f:Lai0$h;

    iget-object v5, v5, Lai0$h;->a:Lzh0$e0;

    iget-object v5, v5, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lai0;->f:Lai0$h;

    iget-object v6, v6, Lai0$h;->a:Lzh0$e0;

    iget-object v6, v6, Lzh0$e0;->t:Lzh0$e0$b;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lbi0;->b(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v2}, Lai0;->A0(Lzh0$n0;)V

    :cond_c
    return-void
.end method

.method public final L(Lzh0$j;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lzh0$n0;->a:Lzh0;

    invoke-virtual {v0, p2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Gradient reference \'%s\' not found"

    invoke-static {p2, p1}, Lai0;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v3, v0, Lzh0$j;

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Gradient href attributes must point to other gradient elements"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Circular reference in gradient href attribute \'%s\'"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object p2, v0

    check-cast p2, Lzh0$j;

    iget-object v1, p1, Lzh0$j;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    iget-object v1, p2, Lzh0$j;->i:Ljava/lang/Boolean;

    iput-object v1, p1, Lzh0$j;->i:Ljava/lang/Boolean;

    :cond_3
    iget-object v1, p1, Lzh0$j;->j:Landroid/graphics/Matrix;

    if-nez v1, :cond_4

    iget-object v1, p2, Lzh0$j;->j:Landroid/graphics/Matrix;

    iput-object v1, p1, Lzh0$j;->j:Landroid/graphics/Matrix;

    :cond_4
    iget-object v1, p1, Lzh0$j;->k:Lzh0$k;

    if-nez v1, :cond_5

    iget-object v1, p2, Lzh0$j;->k:Lzh0$k;

    iput-object v1, p1, Lzh0$j;->k:Lzh0$k;

    :cond_5
    iget-object v1, p1, Lzh0$j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lzh0$j;->h:Ljava/util/List;

    iput-object v1, p1, Lzh0$j;->h:Ljava/util/List;

    :cond_6
    :try_start_0
    instance-of v1, p1, Lzh0$m0;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lzh0$m0;

    check-cast v0, Lzh0$m0;

    invoke-virtual {p0, v1, v0}, Lai0;->M(Lzh0$m0;Lzh0$m0;)V

    goto :goto_0

    :cond_7
    move-object v1, p1

    check-cast v1, Lzh0$q0;

    check-cast v0, Lzh0$q0;

    invoke-virtual {p0, v1, v0}, Lai0;->N(Lzh0$q0;Lzh0$q0;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object p2, p2, Lzh0$j;->l:Ljava/lang/String;

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, p2}, Lai0;->L(Lzh0$j;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final L0(Lzh0$z0;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TextPath render"

    invoke-static {v2, v1}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v1, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lzh0$n0;->a:Lzh0;

    iget-object v2, p1, Lzh0$z0;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lzh0$z0;->n:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "TextPath reference \'%s\' not found"

    invoke-static {p1, v1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v1, Lzh0$v;

    new-instance v2, Lai0$d;

    iget-object v3, v1, Lzh0$v;->o:Lzh0$w;

    invoke-direct {v2, p0, v3}, Lai0$d;-><init>(Lai0;Lzh0$w;)V

    invoke-virtual {v2}, Lai0$d;->f()Landroid/graphics/Path;

    move-result-object v2

    iget-object v1, v1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_3
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, v2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iget-object v0, p1, Lzh0$z0;->o:Lzh0$p;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lzh0$p;->f(Lai0;F)F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lai0;->S()Lzh0$e0$e;

    move-result-object v1

    sget-object v4, Lzh0$e0$e;->a:Lzh0$e0$e;

    if-eq v1, v4, :cond_6

    invoke-virtual {p0, p1}, Lai0;->r(Lzh0$y0;)F

    move-result v4

    sget-object v5, Lzh0$e0$e;->b:Lzh0$e0$e;

    if-ne v1, v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    :cond_5
    sub-float/2addr v0, v4

    :cond_6
    invoke-virtual {p1}, Lzh0$z0;->c()Lzh0$b1;

    move-result-object v1

    check-cast v1, Lzh0$k0;

    invoke-virtual {p0, v1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    new-instance v4, Lai0$e;

    invoke-direct {v4, p0, v2, v0, v3}, Lai0$e;-><init>(Lai0;Landroid/graphics/Path;FF)V

    invoke-virtual {p0, p1, v4}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_7
    return-void
.end method

.method public final M(Lzh0$m0;Lzh0$m0;)V
    .locals 1

    iget-object v0, p1, Lzh0$m0;->m:Lzh0$p;

    if-nez v0, :cond_0

    iget-object v0, p2, Lzh0$m0;->m:Lzh0$p;

    iput-object v0, p1, Lzh0$m0;->m:Lzh0$p;

    :cond_0
    iget-object v0, p1, Lzh0$m0;->n:Lzh0$p;

    if-nez v0, :cond_1

    iget-object v0, p2, Lzh0$m0;->n:Lzh0$p;

    iput-object v0, p1, Lzh0$m0;->n:Lzh0$p;

    :cond_1
    iget-object v0, p1, Lzh0$m0;->o:Lzh0$p;

    if-nez v0, :cond_2

    iget-object v0, p2, Lzh0$m0;->o:Lzh0$p;

    iput-object v0, p1, Lzh0$m0;->o:Lzh0$p;

    :cond_2
    iget-object v0, p1, Lzh0$m0;->p:Lzh0$p;

    if-nez v0, :cond_3

    iget-object p2, p2, Lzh0$m0;->p:Lzh0$p;

    iput-object p2, p1, Lzh0$m0;->p:Lzh0$p;

    :cond_3
    return-void
.end method

.method public final M0()Z
    .locals 5

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v1, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v1, Lzh0$e0;->I:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lai0$h;->k:Z

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Masks are not supported when using getPicture()"

    invoke-static {v1, v0}, Lai0;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v1, v0, Lai0$h;->a:Lzh0$e0;

    iget v3, v1, Lzh0$e0;->o:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v1, v1, Lzh0$e0;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lai0$h;->k:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final N(Lzh0$q0;Lzh0$q0;)V
    .locals 1

    iget-object v0, p1, Lzh0$q0;->m:Lzh0$p;

    if-nez v0, :cond_0

    iget-object v0, p2, Lzh0$q0;->m:Lzh0$p;

    iput-object v0, p1, Lzh0$q0;->m:Lzh0$p;

    :cond_0
    iget-object v0, p1, Lzh0$q0;->n:Lzh0$p;

    if-nez v0, :cond_1

    iget-object v0, p2, Lzh0$q0;->n:Lzh0$p;

    iput-object v0, p1, Lzh0$q0;->n:Lzh0$p;

    :cond_1
    iget-object v0, p1, Lzh0$q0;->o:Lzh0$p;

    if-nez v0, :cond_2

    iget-object v0, p2, Lzh0$q0;->o:Lzh0$p;

    iput-object v0, p1, Lzh0$q0;->o:Lzh0$p;

    :cond_2
    iget-object v0, p1, Lzh0$q0;->p:Lzh0$p;

    if-nez v0, :cond_3

    iget-object v0, p2, Lzh0$q0;->p:Lzh0$p;

    iput-object v0, p1, Lzh0$q0;->p:Lzh0$p;

    :cond_3
    iget-object v0, p1, Lzh0$q0;->q:Lzh0$p;

    if-nez v0, :cond_4

    iget-object p2, p2, Lzh0$q0;->q:Lzh0$p;

    iput-object p2, p1, Lzh0$q0;->q:Lzh0$p;

    :cond_4
    return-void
.end method

.method public final N0()V
    .locals 2

    new-instance v0, Lai0$h;

    invoke-direct {v0, p0}, Lai0$h;-><init>(Lai0;)V

    iput-object v0, p0, Lai0;->f:Lai0$h;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lai0;->g:Ljava/util/Stack;

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-static {}, Lzh0$e0;->b()Lzh0$e0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lai0;->V0(Lai0$h;Lzh0$e0;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v1, p0, Lai0;->b:Lzh0$b;

    iput-object v1, v0, Lai0$h;->g:Lzh0$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lai0$h;->j:Z

    iget-boolean v1, p0, Lai0;->d:Z

    iput-boolean v1, v0, Lai0$h;->k:Z

    iget-object v1, p0, Lai0;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Lai0$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai0$h;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lai0;->j:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lai0;->k:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lai0;->i:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lai0;->h:Ljava/util/Stack;

    return-void
.end method

.method public final O(Lzh0$y;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lzh0$n0;->a:Lzh0;

    invoke-virtual {v0, p2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Pattern reference \'%s\' not found"

    invoke-static {p2, p1}, Lai0;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v3, v0, Lzh0$y;

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Pattern href attributes must point to other pattern elements"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Circular reference in pattern href attribute \'%s\'"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v0, Lzh0$y;

    iget-object p2, p1, Lzh0$y;->p:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    iget-object p2, v0, Lzh0$y;->p:Ljava/lang/Boolean;

    iput-object p2, p1, Lzh0$y;->p:Ljava/lang/Boolean;

    :cond_3
    iget-object p2, p1, Lzh0$y;->q:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    iget-object p2, v0, Lzh0$y;->q:Ljava/lang/Boolean;

    iput-object p2, p1, Lzh0$y;->q:Ljava/lang/Boolean;

    :cond_4
    iget-object p2, p1, Lzh0$y;->r:Landroid/graphics/Matrix;

    if-nez p2, :cond_5

    iget-object p2, v0, Lzh0$y;->r:Landroid/graphics/Matrix;

    iput-object p2, p1, Lzh0$y;->r:Landroid/graphics/Matrix;

    :cond_5
    iget-object p2, p1, Lzh0$y;->s:Lzh0$p;

    if-nez p2, :cond_6

    iget-object p2, v0, Lzh0$y;->s:Lzh0$p;

    iput-object p2, p1, Lzh0$y;->s:Lzh0$p;

    :cond_6
    iget-object p2, p1, Lzh0$y;->t:Lzh0$p;

    if-nez p2, :cond_7

    iget-object p2, v0, Lzh0$y;->t:Lzh0$p;

    iput-object p2, p1, Lzh0$y;->t:Lzh0$p;

    :cond_7
    iget-object p2, p1, Lzh0$y;->u:Lzh0$p;

    if-nez p2, :cond_8

    iget-object p2, v0, Lzh0$y;->u:Lzh0$p;

    iput-object p2, p1, Lzh0$y;->u:Lzh0$p;

    :cond_8
    iget-object p2, p1, Lzh0$y;->v:Lzh0$p;

    if-nez p2, :cond_9

    iget-object p2, v0, Lzh0$y;->v:Lzh0$p;

    iput-object p2, p1, Lzh0$y;->v:Lzh0$p;

    :cond_9
    iget-object p2, p1, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, v0, Lzh0$h0;->i:Ljava/util/List;

    iput-object p2, p1, Lzh0$h0;->i:Ljava/util/List;

    :cond_a
    iget-object p2, p1, Lzh0$r0;->o:Lzh0$b;

    if-nez p2, :cond_b

    iget-object p2, v0, Lzh0$r0;->o:Lzh0$b;

    iput-object p2, p1, Lzh0$r0;->o:Lzh0$b;

    :cond_b
    iget-object p2, p1, Lzh0$p0;->n:Lyh0;

    if-nez p2, :cond_c

    iget-object p2, v0, Lzh0$p0;->n:Lyh0;

    iput-object p2, p1, Lzh0$p0;->n:Lyh0;

    :cond_c
    iget-object p2, v0, Lzh0$y;->w:Ljava/lang/String;

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1, p2}, Lai0;->O(Lzh0$y;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final O0(FFFF)V
    .locals 1

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->y:Lzh0$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzh0$c;->d:Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->y:Lzh0$c;

    iget-object v0, v0, Lzh0$c;->a:Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->h(Lai0;)F

    move-result v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->y:Lzh0$c;

    iget-object v0, v0, Lzh0$c;->b:Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->y:Lzh0$c;

    iget-object v0, v0, Lzh0$c;->c:Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->h(Lai0;)F

    move-result v0

    sub-float/2addr p4, v0

    :cond_0
    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method public final P(Lzh0$k0;Landroid/graphics/Path;Lzh0$y;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v2, Lzh0$y;->p:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v2, Lzh0$y;->w:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v0, v2, v6}, Lai0;->O(Lzh0$y;Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v2, Lzh0$y;->s:Lzh0$p;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lzh0$p;->g(Lai0;)F

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v7, v2, Lzh0$y;->t:Lzh0$p;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v0}, Lzh0$p;->h(Lai0;)F

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    iget-object v8, v2, Lzh0$y;->u:Lzh0$p;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v0}, Lzh0$p;->g(Lai0;)F

    move-result v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iget-object v9, v2, Lzh0$y;->v:Lzh0$p;

    if-eqz v9, :cond_5

    invoke-virtual {v9, v0}, Lzh0$p;->h(Lai0;)F

    move-result v9

    goto :goto_8

    :cond_5
    const/4 v9, 0x0

    goto :goto_8

    :cond_6
    iget-object v3, v2, Lzh0$y;->s:Lzh0$p;

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0, v7}, Lzh0$p;->f(Lai0;F)F

    move-result v3

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    iget-object v8, v2, Lzh0$y;->t:Lzh0$p;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v0, v7}, Lzh0$p;->f(Lai0;F)F

    move-result v8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    iget-object v9, v2, Lzh0$y;->u:Lzh0$p;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v0, v7}, Lzh0$p;->f(Lai0;F)F

    move-result v9

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    iget-object v10, v2, Lzh0$y;->v:Lzh0$p;

    if-eqz v10, :cond_a

    invoke-virtual {v10, v0, v7}, Lzh0$p;->f(Lai0;F)F

    move-result v7

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    iget-object v10, v1, Lzh0$k0;->h:Lzh0$b;

    iget v11, v10, Lzh0$b;->a:F

    iget v12, v10, Lzh0$b;->c:F

    mul-float v3, v3, v12

    add-float/2addr v3, v11

    iget v11, v10, Lzh0$b;->b:F

    iget v10, v10, Lzh0$b;->d:F

    mul-float v8, v8, v10

    add-float/2addr v8, v11

    mul-float v9, v9, v12

    mul-float v7, v7, v10

    move/from16 v16, v9

    move v9, v7

    move v7, v8

    move/from16 v8, v16

    :goto_8
    cmpl-float v10, v8, v6

    if-eqz v10, :cond_1c

    cmpl-float v10, v9, v6

    if-nez v10, :cond_b

    goto/16 :goto_11

    :cond_b
    iget-object v10, v2, Lzh0$p0;->n:Lyh0;

    if-eqz v10, :cond_c

    goto :goto_9

    :cond_c
    sget-object v10, Lyh0;->d:Lyh0;

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lai0;->S0()V

    iget-object v11, v0, Lai0;->a:Landroid/graphics/Canvas;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v11, Lai0$h;

    invoke-direct {v11, v0}, Lai0$h;-><init>(Lai0;)V

    invoke-static {}, Lzh0$e0;->b()Lzh0$e0;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lai0;->V0(Lai0$h;Lzh0$e0;)V

    iget-object v12, v11, Lai0$h;->a:Lzh0$e0;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v13, v12, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v11}, Lai0;->R(Lzh0$n0;Lai0$h;)Lai0$h;

    iput-object v11, v0, Lai0;->f:Lai0$h;

    iget-object v11, v1, Lzh0$k0;->h:Lzh0$b;

    iget-object v12, v2, Lzh0$y;->r:Landroid/graphics/Matrix;

    if-eqz v12, :cond_12

    iget-object v13, v0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v13, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iget-object v13, v2, Lzh0$y;->r:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v11, 0x8

    new-array v11, v11, [F

    iget-object v13, v1, Lzh0$k0;->h:Lzh0$b;

    iget v14, v13, Lzh0$b;->a:F

    aput v14, v11, v4

    iget v14, v13, Lzh0$b;->b:F

    aput v14, v11, v5

    invoke-virtual {v13}, Lzh0$b;->c()F

    move-result v13

    const/4 v14, 0x2

    aput v13, v11, v14

    const/4 v13, 0x3

    iget-object v15, v1, Lzh0$k0;->h:Lzh0$b;

    iget v14, v15, Lzh0$b;->b:F

    aput v14, v11, v13

    const/4 v13, 0x4

    invoke-virtual {v15}, Lzh0$b;->c()F

    move-result v14

    aput v14, v11, v13

    const/4 v13, 0x5

    iget-object v14, v1, Lzh0$k0;->h:Lzh0$b;

    invoke-virtual {v14}, Lzh0$b;->d()F

    move-result v14

    aput v14, v11, v13

    iget-object v13, v1, Lzh0$k0;->h:Lzh0$b;

    iget v14, v13, Lzh0$b;->a:F

    const/4 v15, 0x6

    aput v14, v11, v15

    const/4 v14, 0x7

    invoke-virtual {v13}, Lzh0$b;->d()F

    move-result v13

    aput v13, v11, v14

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v12, Landroid/graphics/RectF;

    aget v13, v11, v4

    aget v14, v11, v5

    aget v6, v11, v4

    aget v4, v11, v5

    invoke-direct {v12, v13, v14, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v14, 0x2

    :goto_a
    if-gt v14, v15, :cond_11

    aget v4, v11, v14

    iget v6, v12, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_d

    aget v4, v11, v14

    iput v4, v12, Landroid/graphics/RectF;->left:F

    :cond_d
    aget v4, v11, v14

    iget v6, v12, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_e

    aget v4, v11, v14

    iput v4, v12, Landroid/graphics/RectF;->right:F

    :cond_e
    add-int/lit8 v4, v14, 0x1

    aget v6, v11, v4

    iget v13, v12, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v13

    if-gez v6, :cond_f

    aget v6, v11, v4

    iput v6, v12, Landroid/graphics/RectF;->top:F

    :cond_f
    aget v6, v11, v4

    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v13

    if-lez v6, :cond_10

    aget v4, v11, v4

    iput v4, v12, Landroid/graphics/RectF;->bottom:F

    :cond_10
    add-int/lit8 v14, v14, 0x2

    goto :goto_a

    :cond_11
    new-instance v11, Lzh0$b;

    iget v4, v12, Landroid/graphics/RectF;->left:F

    iget v6, v12, Landroid/graphics/RectF;->top:F

    iget v13, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v4

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v6

    invoke-direct {v11, v4, v6, v13, v12}, Lzh0$b;-><init>(FFFF)V

    :cond_12
    iget v4, v11, Lzh0$b;->a:F

    sub-float/2addr v4, v3

    div-float/2addr v4, v8

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v4, v12

    mul-float v4, v4, v8

    add-float/2addr v3, v4

    iget v4, v11, Lzh0$b;->b:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v9

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v4, v12

    mul-float v4, v4, v9

    add-float/2addr v7, v4

    invoke-virtual {v11}, Lzh0$b;->c()F

    move-result v4

    invoke-virtual {v11}, Lzh0$b;->d()F

    move-result v6

    new-instance v11, Lzh0$b;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v8, v9}, Lzh0$b;-><init>(FFFF)V

    :goto_b
    cmpg-float v12, v7, v6

    if-gez v12, :cond_1b

    move v12, v3

    :goto_c
    cmpg-float v13, v12, v4

    if-gez v13, :cond_1a

    iput v12, v11, Lzh0$b;->a:F

    iput v7, v11, Lzh0$b;->b:F

    invoke-virtual/range {p0 .. p0}, Lai0;->S0()V

    iget-object v13, v0, Lai0;->f:Lai0$h;

    iget-object v13, v13, Lai0$h;->a:Lzh0$e0;

    iget-object v13, v13, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_13

    iget v13, v11, Lzh0$b;->a:F

    iget v14, v11, Lzh0$b;->b:F

    iget v15, v11, Lzh0$b;->c:F

    iget v5, v11, Lzh0$b;->d:F

    invoke-virtual {v0, v13, v14, v15, v5}, Lai0;->O0(FFFF)V

    :cond_13
    iget-object v5, v2, Lzh0$r0;->o:Lzh0$b;

    if-eqz v5, :cond_14

    iget-object v13, v0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v11, v5, v10}, Lai0;->s(Lzh0$b;Lzh0$b;Lyh0;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_f

    :cond_14
    iget-object v5, v2, Lzh0$y;->q:Ljava/lang/Boolean;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v5, 0x1

    :goto_e
    iget-object v13, v0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v13, v12, v7}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v5, :cond_17

    iget-object v5, v0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v13, v1, Lzh0$k0;->h:Lzh0$b;

    iget v14, v13, Lzh0$b;->c:F

    iget v13, v13, Lzh0$b;->d:F

    invoke-virtual {v5, v14, v13}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_17
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lai0;->n0()Z

    move-result v5

    iget-object v13, v2, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lzh0$n0;

    invoke-virtual {v0, v14}, Lai0;->A0(Lzh0$n0;)V

    goto :goto_10

    :cond_18
    if-eqz v5, :cond_19

    invoke-virtual {v0, v2}, Lai0;->k0(Lzh0$k0;)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    add-float/2addr v12, v8

    const/4 v5, 0x1

    goto :goto_c

    :cond_1a
    add-float/2addr v7, v9

    const/4 v5, 0x1

    goto :goto_b

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    :cond_1c
    :goto_11
    return-void
.end method

.method public final P0(Lai0$h;ZLzh0$o0;)V
    .locals 2

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    if-eqz p2, :cond_0

    iget v0, v0, Lzh0$e0;->d:F

    goto :goto_0

    :cond_0
    iget v0, v0, Lzh0$e0;->g:F

    :goto_0
    instance-of v1, p3, Lzh0$f;

    if-eqz v1, :cond_1

    check-cast p3, Lzh0$f;

    :goto_1
    iget p3, p3, Lzh0$f;->a:I

    goto :goto_2

    :cond_1
    instance-of p3, p3, Lzh0$g;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lai0$h;->a:Lzh0$e0;

    iget-object p3, p3, Lzh0$e0;->p:Lzh0$f;

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0}, Lai0;->z(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p3, v0

    if-eqz p2, :cond_2

    iget-object p1, p1, Lai0$h;->d:Landroid/graphics/Paint;

    goto :goto_3

    :cond_2
    iget-object p1, p1, Lai0$h;->f:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method

.method public final Q(Lzh0$n0;)Lai0$h;
    .locals 2

    new-instance v0, Lai0$h;

    invoke-direct {v0, p0}, Lai0$h;-><init>(Lai0;)V

    invoke-static {}, Lzh0$e0;->b()Lzh0$e0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lai0;->V0(Lai0$h;Lzh0$e0;)V

    invoke-virtual {p0, p1, v0}, Lai0;->R(Lzh0$n0;Lai0$h;)Lai0$h;

    return-object v0
.end method

.method public final Q0(ZLzh0$c0;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x180000000L

    const-wide v4, 0x100000000L

    const-wide v6, 0x80000000L

    iget-object v8, p2, Lzh0$l0;->e:Lzh0$e0;

    invoke-virtual {p0, v8, v6, v7}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v6

    if-eqz p1, :cond_3

    if-eqz v6, :cond_1

    iget-object v6, p0, Lai0;->f:Lai0$h;

    iget-object v7, v6, Lai0$h;->a:Lzh0$e0;

    iget-object v8, p2, Lzh0$l0;->e:Lzh0$e0;

    iget-object v8, v8, Lzh0$e0;->J:Lzh0$o0;

    iput-object v8, v7, Lzh0$e0;->b:Lzh0$o0;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v6, Lai0$h;->b:Z

    :cond_1
    iget-object v0, p2, Lzh0$l0;->e:Lzh0$e0;

    invoke-virtual {p0, v0, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$l0;->e:Lzh0$e0;

    iget v1, v1, Lzh0$e0;->K:F

    iput v1, v0, Lzh0$e0;->d:F

    :cond_2
    iget-object p2, p2, Lzh0$l0;->e:Lzh0$e0;

    invoke-virtual {p0, p2, v2, v3}, Lai0;->a0(Lzh0$e0;J)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object v0, p2, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->b:Lzh0$o0;

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_5

    iget-object v6, p0, Lai0;->f:Lai0$h;

    iget-object v7, v6, Lai0$h;->a:Lzh0$e0;

    iget-object v8, p2, Lzh0$l0;->e:Lzh0$e0;

    iget-object v8, v8, Lzh0$e0;->J:Lzh0$o0;

    iput-object v8, v7, Lzh0$e0;->f:Lzh0$o0;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v6, Lai0$h;->c:Z

    :cond_5
    iget-object v0, p2, Lzh0$l0;->e:Lzh0$e0;

    invoke-virtual {p0, v0, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$l0;->e:Lzh0$e0;

    iget v1, v1, Lzh0$e0;->K:F

    iput v1, v0, Lzh0$e0;->g:F

    :cond_6
    iget-object p2, p2, Lzh0$l0;->e:Lzh0$e0;

    invoke-virtual {p0, p2, v2, v3}, Lai0;->a0(Lzh0$e0;J)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object v0, p2, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->f:Lzh0$o0;

    :goto_2
    invoke-virtual {p0, p2, p1, v0}, Lai0;->P0(Lai0$h;ZLzh0$o0;)V

    :cond_7
    return-void
.end method

.method public final R(Lzh0$n0;Lai0$h;)Lai0$h;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    instance-of v1, p1, Lzh0$l0;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Lzh0$l0;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p1, Lzh0$n0;->b:Lzh0$j0;

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$l0;

    invoke-virtual {p0, p2, v0}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lai0;->e:Lzh0;

    invoke-virtual {p1}, Lzh0;->h()Lzh0$f0;

    move-result-object p1

    iget-object p1, p1, Lzh0$r0;->o:Lzh0$b;

    iput-object p1, p2, Lai0$h;->h:Lzh0$b;

    if-nez p1, :cond_2

    iget-object p1, p0, Lai0;->b:Lzh0$b;

    iput-object p1, p2, Lai0$h;->h:Lzh0$b;

    :cond_2
    iget-object p1, p0, Lai0;->b:Lzh0$b;

    iput-object p1, p2, Lai0$h;->g:Lzh0$b;

    iget-object p1, p0, Lai0;->f:Lai0$h;

    iget-boolean p1, p1, Lai0$h;->k:Z

    iput-boolean p1, p2, Lai0$h;->k:Z

    return-object p2

    :cond_3
    check-cast p1, Lzh0$n0;

    goto :goto_0
.end method

.method public final R0()V
    .locals 1

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lai0;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai0$h;

    iput-object v0, p0, Lai0;->f:Lai0$h;

    return-void
.end method

.method public final S()Lzh0$e0$e;
    .locals 3

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v0, Lzh0$e0;->v:Lzh0$e0$g;

    sget-object v2, Lzh0$e0$g;->a:Lzh0$e0$g;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lzh0$e0;->w:Lzh0$e0$e;

    sget-object v2, Lzh0$e0$e;->b:Lzh0$e0$e;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lzh0$e0$e;->a:Lzh0$e0$e;

    if-ne v1, v0, :cond_1

    sget-object v0, Lzh0$e0$e;->c:Lzh0$e0$e;

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    iget-object v0, v0, Lzh0$e0;->w:Lzh0$e0$e;

    return-object v0
.end method

.method public final S0()V
    .locals 2

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lai0;->g:Ljava/util/Stack;

    iget-object v1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {v0}, Lai0$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai0$h;

    iput-object v0, p0, Lai0;->f:Lai0$h;

    return-void
.end method

.method public final T()Landroid/graphics/Path$FillType;
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->H:Lzh0$e0$a;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_0
    sget-object v1, Lai0$a;->d:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public final T0(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-boolean v0, v0, Lai0$h;->j:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    const-string p2, "[\\n\\t]"

    :goto_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "\\n"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "^\\s+"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "\\s+$"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "\\s{2,}"

    goto :goto_0
.end method

.method public U()F
    .locals 1

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public final U0(Lzh0$k0;)V
    .locals 8

    iget-object v0, p1, Lzh0$n0;->b:Lzh0$j0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lai0;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget-object v2, p1, Lzh0$k0;->h:Lzh0$b;

    iget v3, v2, Lzh0$b;->a:F

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, v2, Lzh0$b;->b:F

    const/4 v5, 0x1

    aput v3, v1, v5

    invoke-virtual {v2}, Lzh0$b;->c()F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    iget-object v6, p1, Lzh0$k0;->h:Lzh0$b;

    iget v7, v6, Lzh0$b;->b:F

    aput v7, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v6}, Lzh0$b;->c()F

    move-result v6

    aput v6, v1, v2

    const/4 v2, 0x5

    iget-object v6, p1, Lzh0$k0;->h:Lzh0$b;

    invoke-virtual {v6}, Lzh0$b;->d()F

    move-result v6

    aput v6, v1, v2

    iget-object p1, p1, Lzh0$k0;->h:Lzh0$b;

    iget v2, p1, Lzh0$b;->a:F

    const/4 v6, 0x6

    aput v2, v1, v6

    const/4 v2, 0x7

    invoke-virtual {p1}, Lzh0$b;->d()F

    move-result p1

    aput p1, v1, v2

    iget-object p1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Landroid/graphics/RectF;

    aget v0, v1, v4

    aget v2, v1, v5

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-direct {p1, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-gt v3, v6, :cond_6

    aget v0, v1, v3

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    aget v0, v1, v3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_2
    aget v0, v1, v3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    aget v0, v1, v3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_3
    add-int/lit8 v0, v3, 0x1

    aget v2, v1, v0

    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    aget v2, v1, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    :cond_4
    aget v2, v1, v0

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    aget v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_5
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lai0;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$k0;

    iget-object v1, v0, Lzh0$k0;->h:Lzh0$b;

    if-nez v1, :cond_7

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, p1}, Lzh0$b;->b(FFFF)Lzh0$b;

    move-result-object p1

    iput-object p1, v0, Lzh0$k0;->h:Lzh0$b;

    goto :goto_1

    :cond_7
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v2, v3, p1}, Lzh0$b;->b(FFFF)Lzh0$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzh0$b;->g(Lzh0$b;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public V()F
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final V0(Lai0$h;Lzh0$e0;)V
    .locals 11

    const-wide/16 v0, 0x1000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->p:Lzh0$f;

    iput-object v1, v0, Lzh0$e0;->p:Lzh0$f;

    :cond_0
    const-wide/16 v0, 0x800

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget v1, p2, Lzh0$e0;->o:F

    iput v1, v0, Lzh0$e0;->o:F

    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->b:Lzh0$o0;

    iput-object v3, v0, Lzh0$e0;->b:Lzh0$o0;

    iget-object v0, p2, Lzh0$e0;->b:Lzh0$o0;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lai0$h;->b:Z

    :cond_3
    const-wide/16 v3, 0x4

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget v3, p2, Lzh0$e0;->d:F

    iput v3, v0, Lzh0$e0;->d:F

    :cond_4
    const-wide/16 v3, 0x1805

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->b:Lzh0$o0;

    invoke-virtual {p0, p1, v2, v0}, Lai0;->P0(Lai0$h;ZLzh0$o0;)V

    :cond_5
    const-wide/16 v3, 0x2

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->c:Lzh0$e0$a;

    iput-object v3, v0, Lzh0$e0;->c:Lzh0$e0$a;

    :cond_6
    const-wide/16 v3, 0x8

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->f:Lzh0$o0;

    iput-object v3, v0, Lzh0$e0;->f:Lzh0$o0;

    iget-object v0, p2, Lzh0$e0;->f:Lzh0$o0;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lai0$h;->c:Z

    :cond_8
    const-wide/16 v3, 0x10

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget v3, p2, Lzh0$e0;->g:F

    iput v3, v0, Lzh0$e0;->g:F

    :cond_9
    const-wide/16 v3, 0x1818

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->f:Lzh0$o0;

    invoke-virtual {p0, p1, v1, v0}, Lai0;->P0(Lai0$h;ZLzh0$o0;)V

    :cond_a
    const-wide v3, 0x800000000L

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->N:Lzh0$e0$h;

    iput-object v3, v0, Lzh0$e0;->N:Lzh0$e0$h;

    :cond_b
    const-wide/16 v3, 0x20

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->h:Lzh0$p;

    iput-object v3, v0, Lzh0$e0;->h:Lzh0$p;

    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, p0}, Lzh0$p;->d(Lai0;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_c
    const-wide/16 v3, 0x40

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_10

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v5, p2, Lzh0$e0;->j:Lzh0$e0$c;

    iput-object v5, v0, Lzh0$e0;->j:Lzh0$e0$c;

    sget-object v0, Lai0$a;->b:[I

    iget-object v5, p2, Lzh0$e0;->j:Lzh0$e0$c;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_d

    goto :goto_3

    :cond_d
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_e
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_f
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_2
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_10
    :goto_3
    const-wide/16 v5, 0x80

    invoke-virtual {p0, p2, v5, v6}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v5, p2, Lzh0$e0;->k:Lzh0$e0$d;

    iput-object v5, v0, Lzh0$e0;->k:Lzh0$e0$d;

    sget-object v0, Lai0$a;->c:[I

    iget-object v5, p2, Lzh0$e0;->k:Lzh0$e0$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_13

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    goto :goto_5

    :cond_11
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_12
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_13
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_4
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_14
    :goto_5
    const-wide/16 v3, 0x100

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget v3, p2, Lzh0$e0;->l:F

    iput v3, v0, Lzh0$e0;->l:F

    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    iget v3, p2, Lzh0$e0;->l:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_15
    const-wide/16 v3, 0x200

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->m:[Lzh0$p;

    iput-object v3, v0, Lzh0$e0;->m:[Lzh0$p;

    :cond_16
    const-wide/16 v3, 0x400

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->n:Lzh0$p;

    iput-object v3, v0, Lzh0$e0;->n:Lzh0$p;

    :cond_17
    const-wide/16 v3, 0x600

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->m:[Lzh0$p;

    if-nez v0, :cond_18

    :goto_6
    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_9

    :cond_18
    array-length v0, v0

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_19

    move v4, v0

    goto :goto_7

    :cond_19
    mul-int/lit8 v4, v0, 0x2

    :goto_7
    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v7, v4, :cond_1a

    iget-object v9, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v9, v9, Lzh0$e0;->m:[Lzh0$p;

    rem-int v10, v7, v0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lzh0$p;->d(Lai0;)F

    move-result v9

    aput v9, v5, v7

    aget v9, v5, v7

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_1a
    cmpl-float v0, v8, v6

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->n:Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->d(Lai0;)F

    move-result v0

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1c

    rem-float/2addr v0, v8

    add-float/2addr v0, v8

    :cond_1c
    iget-object v4, p1, Lai0$h;->f:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    invoke-direct {v6, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_1d
    :goto_9
    const-wide/16 v4, 0x4000

    invoke-virtual {p0, p2, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lai0;->U()F

    move-result v0

    iget-object v4, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v5, p2, Lzh0$e0;->r:Lzh0$p;

    iput-object v5, v4, Lzh0$e0;->r:Lzh0$p;

    iget-object v4, p1, Lai0$h;->d:Landroid/graphics/Paint;

    iget-object v5, p2, Lzh0$e0;->r:Lzh0$p;

    invoke-virtual {v5, p0, v0}, Lzh0$p;->f(Lai0;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p1, Lai0$h;->f:Landroid/graphics/Paint;

    iget-object v5, p2, Lzh0$e0;->r:Lzh0$p;

    invoke-virtual {v5, p0, v0}, Lzh0$p;->f(Lai0;F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1e
    const-wide/16 v4, 0x2000

    invoke-virtual {p0, p2, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v4, p2, Lzh0$e0;->q:Ljava/util/List;

    iput-object v4, v0, Lzh0$e0;->q:Ljava/util/List;

    :cond_1f
    const-wide/32 v4, 0x8000

    invoke-virtual {p0, p2, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p2, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    const/16 v5, 0x64

    if-ne v0, v4, :cond_20

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_20

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v4, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_b

    :cond_20
    iget-object v0, p2, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_21

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x384

    if-ge v0, v4, :cond_21

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v4, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    goto :goto_a

    :cond_21
    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v4, p2, Lzh0$e0;->s:Ljava/lang/Integer;

    :goto_b
    iput-object v4, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    :cond_22
    const-wide/32 v4, 0x10000

    invoke-virtual {p0, p2, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v4, p2, Lzh0$e0;->t:Lzh0$e0$b;

    iput-object v4, v0, Lzh0$e0;->t:Lzh0$e0$b;

    :cond_23
    const-wide/32 v4, 0x1a000

    invoke-virtual {p0, p2, v4, v5}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->q:Ljava/util/List;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lai0;->e:Lzh0;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lzh0;->e()Lbi0;

    move-result-object v0

    iget-object v4, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v4, v4, Lzh0$e0;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v6, v5, Lzh0$e0;->s:Ljava/lang/Integer;

    iget-object v5, v5, Lzh0$e0;->t:Lzh0$e0$b;

    invoke-virtual {p0, v3, v6, v5}, Lai0;->x(Ljava/lang/String;Ljava/lang/Integer;Lzh0$e0$b;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_25

    if-eqz v0, :cond_25

    iget-object v5, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v5, v5, Lzh0$e0;->s:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v6, v6, Lzh0$e0;->t:Lzh0$e0$b;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Lbi0;->b(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_c

    :cond_25
    move-object v3, v5

    :goto_c
    if-eqz v3, :cond_24

    :cond_26
    if-nez v3, :cond_27

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    iget-object v0, v0, Lzh0$e0;->t:Lzh0$e0$b;

    const-string v4, "sans-serif"

    invoke-virtual {p0, v4, v3, v0}, Lai0;->x(Ljava/lang/String;Ljava/lang/Integer;Lzh0$e0$b;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_27
    iget-object v0, p1, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_28
    const-wide/32 v3, 0x20000

    invoke-virtual {p0, p2, v3, v4}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v3, p2, Lzh0$e0;->u:Lzh0$e0$f;

    iput-object v3, v0, Lzh0$e0;->u:Lzh0$e0$f;

    iget-object v0, p1, Lai0$h;->d:Landroid/graphics/Paint;

    iget-object v3, p2, Lzh0$e0;->u:Lzh0$e0$f;

    sget-object v4, Lzh0$e0$f;->d:Lzh0$e0$f;

    if-ne v3, v4, :cond_29

    const/4 v3, 0x1

    goto :goto_d

    :cond_29
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lai0$h;->d:Landroid/graphics/Paint;

    iget-object v3, p2, Lzh0$e0;->u:Lzh0$e0$f;

    sget-object v5, Lzh0$e0$f;->b:Lzh0$e0$f;

    if-ne v3, v5, :cond_2a

    const/4 v3, 0x1

    goto :goto_e

    :cond_2a
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_2d

    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    iget-object v3, p2, Lzh0$e0;->u:Lzh0$e0$f;

    if-ne v3, v4, :cond_2b

    const/4 v3, 0x1

    goto :goto_f

    :cond_2b
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lai0$h;->f:Landroid/graphics/Paint;

    iget-object v3, p2, Lzh0$e0;->u:Lzh0$e0$f;

    if-ne v3, v5, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2d
    const-wide v0, 0x1000000000L

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->v:Lzh0$e0$g;

    iput-object v1, v0, Lzh0$e0;->v:Lzh0$e0$g;

    :cond_2e
    const-wide/32 v0, 0x40000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->w:Lzh0$e0$e;

    iput-object v1, v0, Lzh0$e0;->w:Lzh0$e0$e;

    :cond_2f
    const-wide/32 v0, 0x80000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->x:Ljava/lang/Boolean;

    iput-object v1, v0, Lzh0$e0;->x:Ljava/lang/Boolean;

    :cond_30
    const-wide/32 v0, 0x200000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->z:Ljava/lang/String;

    iput-object v1, v0, Lzh0$e0;->z:Ljava/lang/String;

    :cond_31
    const-wide/32 v0, 0x400000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->A:Ljava/lang/String;

    iput-object v1, v0, Lzh0$e0;->A:Ljava/lang/String;

    :cond_32
    const-wide/32 v0, 0x800000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->B:Ljava/lang/String;

    iput-object v1, v0, Lzh0$e0;->B:Ljava/lang/String;

    :cond_33
    const-wide/32 v0, 0x1000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->C:Ljava/lang/Boolean;

    iput-object v1, v0, Lzh0$e0;->C:Ljava/lang/Boolean;

    :cond_34
    const-wide/32 v0, 0x2000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->D:Ljava/lang/Boolean;

    iput-object v1, v0, Lzh0$e0;->D:Ljava/lang/Boolean;

    :cond_35
    const-wide/32 v0, 0x100000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->y:Lzh0$c;

    iput-object v1, v0, Lzh0$e0;->y:Lzh0$c;

    :cond_36
    const-wide/32 v0, 0x10000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->G:Ljava/lang/String;

    iput-object v1, v0, Lzh0$e0;->G:Ljava/lang/String;

    :cond_37
    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->H:Lzh0$e0$a;

    iput-object v1, v0, Lzh0$e0;->H:Lzh0$e0$a;

    :cond_38
    const-wide/32 v0, 0x40000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->I:Ljava/lang/String;

    iput-object v1, v0, Lzh0$e0;->I:Ljava/lang/String;

    :cond_39
    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->E:Lzh0$o0;

    iput-object v1, v0, Lzh0$e0;->E:Lzh0$o0;

    :cond_3a
    const-wide/32 v0, 0x8000000

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget v1, p2, Lzh0$e0;->F:F

    iput v1, v0, Lzh0$e0;->F:F

    :cond_3b
    const-wide v0, 0x200000000L

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, p2, Lzh0$e0;->L:Lzh0$o0;

    iput-object v1, v0, Lzh0$e0;->L:Lzh0$o0;

    :cond_3c
    const-wide v0, 0x400000000L

    invoke-virtual {p0, p2, v0, v1}, Lai0;->a0(Lzh0$e0;J)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object p1, p1, Lai0$h;->a:Lzh0$e0;

    iget-object p2, p2, Lzh0$e0;->M:Ljava/lang/Float;

    iput-object p2, p1, Lzh0$e0;->M:Ljava/lang/Float;

    :cond_3d
    return-void
.end method

.method public W()Lzh0$b;
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v1, v0, Lai0$h;->h:Lzh0$b;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lai0$h;->g:Lzh0$b;

    return-object v0
.end method

.method public final W0(Lai0$h;Lzh0$l0;)V
    .locals 3

    iget-object v0, p2, Lzh0$n0;->b:Lzh0$j0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lai0$h;->a:Lzh0$e0;

    invoke-virtual {v1, v0}, Lzh0$e0;->c(Z)V

    iget-object v0, p2, Lzh0$l0;->e:Lzh0$e0;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lai0;->V0(Lai0$h;Lzh0$e0;)V

    :cond_1
    iget-object v0, p0, Lai0;->e:Lzh0;

    invoke-virtual {v0}, Lzh0;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lai0;->e:Lzh0;

    invoke-virtual {v0}, Lzh0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luh0$g;

    iget-object v2, v1, Luh0$g;->a:Luh0$i;

    invoke-static {v2, p2}, Luh0;->m(Luh0$i;Lzh0$l0;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Luh0$g;->b:Lzh0$e0;

    invoke-virtual {p0, p1, v1}, Lai0;->V0(Lai0$h;Lzh0$e0;)V

    goto :goto_1

    :cond_3
    iget-object p2, p2, Lzh0$l0;->f:Lzh0$e0;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p2}, Lai0;->V0(Lai0$h;Lzh0$e0;)V

    :cond_4
    return-void
.end method

.method public X()F
    .locals 1

    iget v0, p0, Lai0;->c:F

    return v0
.end method

.method public final X0()V
    .locals 3

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v0, Lzh0$e0;->L:Lzh0$o0;

    instance-of v2, v1, Lzh0$f;

    if-eqz v2, :cond_0

    check-cast v1, Lzh0$f;

    :goto_0
    iget v1, v1, Lzh0$f;->a:I

    goto :goto_1

    :cond_0
    instance-of v1, v1, Lzh0$g;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzh0$e0;->p:Lzh0$f;

    goto :goto_0

    :goto_1
    iget-object v0, v0, Lzh0$e0;->M:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lai0;->z(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method public final Y()Landroid/graphics/Path$FillType;
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->c:Lzh0$e0$a;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_0
    sget-object v1, Lai0$a;->d:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public final Y0()Z
    .locals 1

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a0(Lzh0$e0;J)Z
    .locals 2

    iget-wide v0, p1, Lzh0$e0;->a:J

    and-long p1, v0, p2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b0(ZLzh0$b;Lzh0$m0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lzh0$j;->l:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Lai0;->L(Lzh0$j;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lzh0$j;->i:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lai0;->f:Lai0$h;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lai0$h;->d:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lai0$h;->f:Landroid/graphics/Paint;

    :goto_1
    const/4 v7, 0x0

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lai0;->W()Lzh0$b;

    move-result-object v8

    iget-object v9, v2, Lzh0$m0;->m:Lzh0$p;

    if-eqz v9, :cond_3

    invoke-virtual {v9, v0}, Lzh0$p;->g(Lai0;)F

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v2, Lzh0$m0;->n:Lzh0$p;

    if-eqz v10, :cond_4

    invoke-virtual {v10, v0}, Lzh0$p;->h(Lai0;)F

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v2, Lzh0$m0;->o:Lzh0$p;

    if-eqz v11, :cond_5

    invoke-virtual {v11, v0}, Lzh0$p;->g(Lai0;)F

    move-result v8

    goto :goto_4

    :cond_5
    iget v8, v8, Lzh0$b;->c:F

    :goto_4
    iget-object v11, v2, Lzh0$m0;->p:Lzh0$p;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v0}, Lzh0$p;->h(Lai0;)F

    move-result v7

    :cond_6
    move/from16 v16, v7

    move v15, v8

    move v13, v9

    move v14, v10

    goto :goto_8

    :cond_7
    iget-object v8, v2, Lzh0$m0;->m:Lzh0$p;

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_8

    invoke-virtual {v8, v0, v9}, Lzh0$p;->f(Lai0;F)F

    move-result v8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    iget-object v10, v2, Lzh0$m0;->n:Lzh0$p;

    if-eqz v10, :cond_9

    invoke-virtual {v10, v0, v9}, Lzh0$p;->f(Lai0;F)F

    move-result v10

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    iget-object v11, v2, Lzh0$m0;->o:Lzh0$p;

    if-eqz v11, :cond_a

    invoke-virtual {v11, v0, v9}, Lzh0$p;->f(Lai0;F)F

    move-result v11

    goto :goto_7

    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_7
    iget-object v12, v2, Lzh0$m0;->p:Lzh0$p;

    if-eqz v12, :cond_b

    invoke-virtual {v12, v0, v9}, Lzh0$p;->f(Lai0;F)F

    move-result v7

    :cond_b
    move/from16 v16, v7

    move v13, v8

    move v14, v10

    move v15, v11

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lai0;->S0()V

    invoke-virtual {v0, v2}, Lai0;->Q(Lzh0$n0;)Lai0$h;

    move-result-object v7

    iput-object v7, v0, Lai0;->f:Lai0$h;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_c

    iget v3, v1, Lzh0$b;->a:F

    iget v8, v1, Lzh0$b;->b:F

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, v1, Lzh0$b;->c:F

    iget v1, v1, Lzh0$b;->d:F

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_c
    iget-object v1, v2, Lzh0$j;->j:Landroid/graphics/Matrix;

    if-eqz v1, :cond_d

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_d
    iget-object v1, v2, Lzh0$j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    iget-object v1, v0, Lai0;->f:Lai0$h;

    if-eqz p1, :cond_e

    iput-boolean v5, v1, Lai0$h;->b:Z

    goto :goto_9

    :cond_e
    iput-boolean v5, v1, Lai0$h;->c:Z

    :goto_9
    return-void

    :cond_f
    new-array v3, v1, [I

    new-array v8, v1, [F

    const/high16 v9, -0x40800000    # -1.0f

    iget-object v10, v2, Lzh0$j;->h:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzh0$n0;

    check-cast v11, Lzh0$d0;

    if-eqz v5, :cond_11

    iget-object v12, v11, Lzh0$d0;->h:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v9

    if-ltz v12, :cond_10

    goto :goto_b

    :cond_10
    aput v9, v8, v5

    goto :goto_c

    :cond_11
    :goto_b
    iget-object v9, v11, Lzh0$d0;->h:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v5

    iget-object v9, v11, Lzh0$d0;->h:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lai0;->S0()V

    iget-object v12, v0, Lai0;->f:Lai0$h;

    invoke-virtual {v0, v12, v11}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    iget-object v11, v0, Lai0;->f:Lai0$h;

    iget-object v11, v11, Lai0$h;->a:Lzh0$e0;

    iget-object v12, v11, Lzh0$e0;->E:Lzh0$o0;

    check-cast v12, Lzh0$f;

    if-nez v12, :cond_12

    sget-object v12, Lzh0$f;->b:Lzh0$f;

    :cond_12
    iget v11, v11, Lzh0$e0;->F:F

    invoke-virtual {v0, v11}, Lai0;->z(F)I

    move-result v11

    shl-int/lit8 v11, v11, 0x18

    iget v12, v12, Lzh0$f;->a:I

    or-int/2addr v11, v12

    aput v11, v3, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    goto :goto_a

    :cond_13
    cmpl-float v5, v13, v15

    if-nez v5, :cond_14

    cmpl-float v5, v14, v16

    if-eqz v5, :cond_15

    :cond_14
    if-ne v1, v4, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    sub-int/2addr v1, v4

    aget v1, v3, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_16
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v2, v2, Lzh0$j;->k:Lzh0$k;

    if-eqz v2, :cond_18

    sget-object v4, Lzh0$k;->b:Lzh0$k;

    if-ne v2, v4, :cond_17

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_d

    :cond_17
    sget-object v4, Lzh0$k;->c:Lzh0$k;

    if-ne v2, v4, :cond_18

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_18
    :goto_d
    move-object/from16 v19, v1

    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    new-instance v1, Landroid/graphics/LinearGradient;

    move-object v12, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public final c0(Lzh0$d;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lzh0$d;->o:Lzh0$p;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lzh0$p;->g(Lai0;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, v1, Lzh0$d;->p:Lzh0$p;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lzh0$p;->h(Lai0;)F

    move-result v3

    :cond_1
    iget-object v4, v1, Lzh0$d;->q:Lzh0$p;

    invoke-virtual {v4, v0}, Lzh0$p;->d(Lai0;)F

    move-result v4

    sub-float v11, v2, v4

    sub-float v12, v3, v4

    add-float v13, v2, v4

    add-float v14, v3, v4

    iget-object v5, v1, Lzh0$k0;->h:Lzh0$b;

    if-nez v5, :cond_2

    new-instance v5, Lzh0$b;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v4

    invoke-direct {v5, v11, v12, v6, v6}, Lzh0$b;-><init>(FFFF)V

    iput-object v5, v1, Lzh0$k0;->h:Lzh0$b;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v1, v1, v4

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v15, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v1

    sub-float v17, v3, v1

    move-object v4, v15

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v18, v3, v1

    move v5, v13

    move/from16 v6, v18

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v2, v1

    move v5, v1

    move v6, v14

    move v7, v11

    move/from16 v8, v18

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v1

    move v8, v12

    move v9, v2

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    return-object v15
.end method

.method public final d0(Lzh0$i;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lzh0$i;->o:Lzh0$p;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lzh0$p;->g(Lai0;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, v1, Lzh0$i;->p:Lzh0$p;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lzh0$p;->h(Lai0;)F

    move-result v3

    :cond_1
    iget-object v4, v1, Lzh0$i;->q:Lzh0$p;

    invoke-virtual {v4, v0}, Lzh0$p;->g(Lai0;)F

    move-result v4

    iget-object v5, v1, Lzh0$i;->r:Lzh0$p;

    invoke-virtual {v5, v0}, Lzh0$p;->h(Lai0;)F

    move-result v5

    sub-float v11, v2, v4

    sub-float v12, v3, v5

    add-float v13, v2, v4

    add-float v14, v3, v5

    iget-object v6, v1, Lzh0$k0;->h:Lzh0$b;

    if-nez v6, :cond_2

    new-instance v6, Lzh0$b;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v4, v7

    mul-float v7, v7, v5

    invoke-direct {v6, v11, v12, v8, v7}, Lzh0$b;-><init>(FFFF)V

    iput-object v6, v1, Lzh0$k0;->h:Lzh0$b;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v15, v4, v1

    mul-float v1, v1, v5

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v15

    sub-float v17, v3, v1

    move-object v4, v10

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move-object/from16 v18, v10

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v1, v3

    move-object/from16 v4, v18

    move v5, v13

    move v6, v1

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v13, v2, v15

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v1

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v13

    move v8, v12

    move v9, v2

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    return-object v18
.end method

.method public final e0(Lzh0$q;)Landroid/graphics/Path;
    .locals 9

    iget-object v0, p1, Lzh0$q;->o:Lzh0$p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    :goto_0
    iget-object v2, p1, Lzh0$q;->p:Lzh0$p;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p0}, Lzh0$p;->h(Lai0;)F

    move-result v2

    :goto_1
    iget-object v3, p1, Lzh0$q;->q:Lzh0$p;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p0}, Lzh0$p;->g(Lai0;)F

    move-result v3

    :goto_2
    iget-object v4, p1, Lzh0$q;->r:Lzh0$p;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p0}, Lzh0$p;->h(Lai0;)F

    move-result v1

    :goto_3
    iget-object v4, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v4, :cond_4

    new-instance v4, Lzh0$b;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lzh0$b;-><init>(FFFF)V

    iput-object v4, p1, Lzh0$k0;->h:Lzh0$b;

    :cond_4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public final f0(Lzh0$z;)Landroid/graphics/Path;
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p1, Lzh0$z;->o:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    :goto_0
    iget-object v2, p1, Lzh0$z;->o:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lzh0$a0;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_1
    iget-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lai0;->q(Landroid/graphics/Path;)Lzh0$b;

    move-result-object v1

    iput-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    :cond_2
    invoke-virtual {p0}, Lai0;->T()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-object v0
.end method

.method public final g0(Lzh0$b0;)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lzh0$b0;->s:Lzh0$p;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v4, v1, Lzh0$b0;->t:Lzh0$p;

    if-nez v4, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, v1, Lzh0$b0;->t:Lzh0$p;

    invoke-virtual {v2, v0}, Lzh0$p;->h(Lai0;)F

    move-result v2

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lzh0$b0;->t:Lzh0$p;

    invoke-virtual {v2, v0}, Lzh0$p;->g(Lai0;)F

    move-result v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lzh0$b0;->t:Lzh0$p;

    invoke-virtual {v4, v0}, Lzh0$p;->h(Lai0;)F

    move-result v4

    :goto_1
    iget-object v5, v1, Lzh0$b0;->q:Lzh0$p;

    invoke-virtual {v5, v0}, Lzh0$p;->g(Lai0;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, v1, Lzh0$b0;->r:Lzh0$p;

    invoke-virtual {v5, v0}, Lzh0$p;->h(Lai0;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, v1, Lzh0$b0;->o:Lzh0$p;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Lzh0$p;->g(Lai0;)F

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v1, Lzh0$b0;->p:Lzh0$p;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Lzh0$p;->h(Lai0;)F

    move-result v6

    move v13, v6

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    iget-object v6, v1, Lzh0$b0;->q:Lzh0$p;

    invoke-virtual {v6, v0}, Lzh0$p;->g(Lai0;)F

    move-result v6

    iget-object v7, v1, Lzh0$b0;->r:Lzh0$p;

    invoke-virtual {v7, v0}, Lzh0$p;->h(Lai0;)F

    move-result v7

    iget-object v8, v1, Lzh0$k0;->h:Lzh0$b;

    if-nez v8, :cond_5

    new-instance v8, Lzh0$b;

    invoke-direct {v8, v5, v13, v6, v7}, Lzh0$b;-><init>(FFFF)V

    iput-object v8, v1, Lzh0$k0;->h:Lzh0$b;

    :cond_5
    add-float v15, v5, v6

    add-float v1, v13, v7

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_7

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const v3, 0x3f0d6289

    mul-float v16, v2, v3

    mul-float v3, v3, v4

    add-float v12, v13, v4

    invoke-virtual {v14, v5, v12}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v17, v12, v3

    add-float v11, v5, v2

    sub-float v21, v11, v16

    move-object v6, v14

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v21

    move v10, v13

    move/from16 p1, v11

    move/from16 v22, v12

    move v12, v13

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v2, v15, v2

    invoke-virtual {v14, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v6, v2, v16

    move-object v7, v14

    move v8, v6

    move v9, v13

    move v10, v15

    move/from16 v11, v17

    move v12, v15

    move/from16 v13, v22

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v12, v1, v4

    invoke-virtual {v14, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v10, v12, v3

    move-object v3, v14

    move/from16 v16, v10

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v2, p1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v6, v3

    move/from16 v7, v21

    move v8, v1

    move v9, v5

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v3, v14

    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v15, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method public final h(Lzh0$l;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    instance-of v0, p1, Lzh0$b0;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lzh0$b0;

    invoke-virtual {p0, v0}, Lai0;->g0(Lzh0$b0;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lzh0$d;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lzh0$d;

    invoke-virtual {p0, v0}, Lai0;->c0(Lzh0$d;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lzh0$i;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lzh0$i;

    invoke-virtual {p0, v0}, Lai0;->d0(Lzh0$i;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lzh0$z;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lzh0$z;

    invoke-virtual {p0, v0}, Lai0;->f0(Lzh0$z;)Landroid/graphics/Path;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_6
    return-void
.end method

.method public final h0(ZLzh0$b;Lzh0$q0;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lzh0$j;->l:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Lai0;->L(Lzh0$j;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lzh0$j;->i:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lai0;->f:Lai0$h;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lai0$h;->d:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lai0$h;->f:Landroid/graphics/Paint;

    :goto_1
    if-eqz v3, :cond_6

    new-instance v7, Lzh0$p;

    const/high16 v8, 0x42480000    # 50.0f

    sget-object v9, Lzh0$d1;->k:Lzh0$d1;

    invoke-direct {v7, v8, v9}, Lzh0$p;-><init>(FLzh0$d1;)V

    iget-object v8, v2, Lzh0$q0;->m:Lzh0$p;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v0}, Lzh0$p;->g(Lai0;)F

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Lzh0$p;->g(Lai0;)F

    move-result v8

    :goto_2
    iget-object v9, v2, Lzh0$q0;->n:Lzh0$p;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v0}, Lzh0$p;->h(Lai0;)F

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v0}, Lzh0$p;->h(Lai0;)F

    move-result v9

    :goto_3
    iget-object v10, v2, Lzh0$q0;->o:Lzh0$p;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v0}, Lzh0$p;->d(Lai0;)F

    move-result v7

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v0}, Lzh0$p;->d(Lai0;)F

    move-result v7

    :goto_4
    move v14, v7

    move v12, v8

    move v13, v9

    goto :goto_8

    :cond_6
    iget-object v7, v2, Lzh0$q0;->m:Lzh0$p;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v7, :cond_7

    invoke-virtual {v7, v0, v8}, Lzh0$p;->f(Lai0;F)F

    move-result v7

    goto :goto_5

    :cond_7
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_5
    iget-object v10, v2, Lzh0$q0;->n:Lzh0$p;

    if-eqz v10, :cond_8

    invoke-virtual {v10, v0, v8}, Lzh0$p;->f(Lai0;F)F

    move-result v10

    goto :goto_6

    :cond_8
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_6
    iget-object v11, v2, Lzh0$q0;->o:Lzh0$p;

    if-eqz v11, :cond_9

    invoke-virtual {v11, v0, v8}, Lzh0$p;->f(Lai0;F)F

    move-result v8

    goto :goto_7

    :cond_9
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_7
    move v12, v7

    move v14, v8

    move v13, v10

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lai0;->S0()V

    invoke-virtual {v0, v2}, Lai0;->Q(Lzh0$n0;)Lai0$h;

    move-result-object v7

    iput-object v7, v0, Lai0;->f:Lai0$h;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_a

    iget v3, v1, Lzh0$b;->a:F

    iget v8, v1, Lzh0$b;->b:F

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, v1, Lzh0$b;->c:F

    iget v1, v1, Lzh0$b;->d:F

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_a
    iget-object v1, v2, Lzh0$j;->j:Landroid/graphics/Matrix;

    if-eqz v1, :cond_b

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_b
    iget-object v1, v2, Lzh0$j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    iget-object v1, v0, Lai0;->f:Lai0$h;

    if-eqz p1, :cond_c

    iput-boolean v5, v1, Lai0$h;->b:Z

    goto :goto_9

    :cond_c
    iput-boolean v5, v1, Lai0$h;->c:Z

    :goto_9
    return-void

    :cond_d
    new-array v15, v1, [I

    new-array v3, v1, [F

    const/high16 v8, -0x40800000    # -1.0f

    iget-object v9, v2, Lzh0$j;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lzh0$n0;

    check-cast v10, Lzh0$d0;

    if-eqz v5, :cond_f

    iget-object v11, v10, Lzh0$d0;->h:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v8

    if-ltz v11, :cond_e

    goto :goto_b

    :cond_e
    aput v8, v3, v5

    goto :goto_c

    :cond_f
    :goto_b
    iget-object v8, v10, Lzh0$d0;->h:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v3, v5

    iget-object v8, v10, Lzh0$d0;->h:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lai0;->S0()V

    iget-object v11, v0, Lai0;->f:Lai0$h;

    invoke-virtual {v0, v11, v10}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    iget-object v10, v0, Lai0;->f:Lai0$h;

    iget-object v10, v10, Lai0$h;->a:Lzh0$e0;

    iget-object v11, v10, Lzh0$e0;->E:Lzh0$o0;

    check-cast v11, Lzh0$f;

    if-nez v11, :cond_10

    sget-object v11, Lzh0$f;->b:Lzh0$f;

    :cond_10
    iget v10, v10, Lzh0$e0;->F:F

    invoke-virtual {v0, v10}, Lai0;->z(F)I

    move-result v10

    shl-int/lit8 v10, v10, 0x18

    iget v11, v11, Lzh0$f;->a:I

    or-int/2addr v10, v11

    aput v10, v15, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    cmpl-float v5, v14, v5

    if-eqz v5, :cond_15

    if-ne v1, v4, :cond_12

    goto :goto_e

    :cond_12
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v2, v2, Lzh0$j;->k:Lzh0$k;

    if-eqz v2, :cond_14

    sget-object v4, Lzh0$k;->b:Lzh0$k;

    if-ne v2, v4, :cond_13

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_d

    :cond_13
    sget-object v4, Lzh0$k;->c:Lzh0$k;

    if-ne v2, v4, :cond_14

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_14
    :goto_d
    move-object/from16 v17, v1

    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    new-instance v1, Landroid/graphics/RadialGradient;

    move-object v11, v1

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_15
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lai0;->R0()V

    sub-int/2addr v1, v4

    aget v1, v15, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final i(Lzh0$v;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    new-instance v0, Lai0$d;

    iget-object v1, p1, Lzh0$v;->o:Lzh0$w;

    invoke-direct {v0, p0, v1}, Lai0$d;-><init>(Lai0;Lzh0$w;)V

    invoke-virtual {v0}, Lai0$d;->f()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lai0;->q(Landroid/graphics/Path;)Lzh0$b;

    move-result-object v1

    iput-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    :cond_3
    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->T()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final i0()V
    .locals 1

    iget-object v0, p0, Lai0;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lai0;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final j(Lzh0$n0;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->B()V

    instance-of v0, p1, Lzh0$e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    check-cast p1, Lzh0$e1;

    invoke-virtual {p0, p1, p3, p4}, Lai0;->l(Lzh0$e1;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lzh0$v;

    if-eqz p2, :cond_3

    check-cast p1, Lzh0$v;

    invoke-virtual {p0, p1, p3, p4}, Lai0;->i(Lzh0$v;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lzh0$w0;

    if-eqz p2, :cond_4

    check-cast p1, Lzh0$w0;

    invoke-virtual {p0, p1, p3, p4}, Lai0;->k(Lzh0$w0;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lzh0$l;

    if-eqz p2, :cond_5

    check-cast p1, Lzh0$l;

    invoke-virtual {p0, p1, p3, p4}, Lai0;->h(Lzh0$l;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Invalid %s element found in clipPath definition"

    invoke-static {p1, p2}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lai0;->A()V

    return-void
.end method

.method public final j0(Lzh0$j0;)V
    .locals 1

    iget-object v0, p0, Lai0;->h:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lai0;->i:Ljava/util/Stack;

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Lzh0$w0;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 9

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lzh0$w0;->r:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object v0, p1, Lzh0$a1;->n:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lzh0$a1;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$p;

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lzh0$a1;->o:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lzh0$a1;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzh0$p;

    invoke-virtual {v3, p0}, Lzh0$p;->h(Lai0;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p1, Lzh0$a1;->p:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lzh0$a1;->p:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzh0$p;

    invoke-virtual {v4, p0}, Lzh0$p;->g(Lai0;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x0

    :goto_5
    iget-object v5, p1, Lzh0$a1;->q:Ljava/util/List;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lzh0$a1;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0$p;

    invoke-virtual {v1, p0}, Lzh0$p;->h(Lai0;)F

    move-result v2

    :cond_9
    :goto_6
    iget-object v1, p0, Lai0;->f:Lai0$h;

    iget-object v1, v1, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v1, Lzh0$e0;->w:Lzh0$e0$e;

    sget-object v5, Lzh0$e0$e;->a:Lzh0$e0$e;

    if-eq v1, v5, :cond_b

    invoke-virtual {p0, p1}, Lai0;->r(Lzh0$y0;)F

    move-result v1

    iget-object v5, p0, Lai0;->f:Lai0$h;

    iget-object v5, v5, Lai0$h;->a:Lzh0$e0;

    iget-object v5, v5, Lzh0$e0;->w:Lzh0$e0$e;

    sget-object v6, Lzh0$e0$e;->b:Lzh0$e0$e;

    if-ne v5, v6, :cond_a

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    :cond_a
    sub-float/2addr v0, v1

    :cond_b
    iget-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v1, :cond_c

    new-instance v1, Lai0$i;

    invoke-direct {v1, p0, v0, v3}, Lai0$i;-><init>(Lai0;FF)V

    invoke-virtual {p0, p1, v1}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    new-instance v5, Lzh0$b;

    iget-object v6, v1, Lai0$i;->c:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v1, v1, Lai0$i;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v5, v7, v8, v6, v1}, Lzh0$b;-><init>(FFFF)V

    iput-object v5, p1, Lzh0$k0;->h:Lzh0$b;

    :cond_c
    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lai0$g;

    add-float/2addr v0, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v0, v3, v1}, Lai0$g;-><init>(Lai0;FFLandroid/graphics/Path;)V

    invoke-virtual {p0, p1, v5}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    invoke-virtual {p0}, Lai0;->T()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final k0(Lzh0$k0;)V
    .locals 3

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v1, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v1, v1, Lzh0$e0;->I:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lai0$h;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai0;->e:Lzh0;

    invoke-virtual {v0, v1}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    invoke-virtual {p0}, Lai0;->H()V

    check-cast v0, Lzh0$s;

    invoke-virtual {p0, v0, p1}, Lai0;->J0(Lzh0$s;Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->l0()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lai0;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lai0;->f:Lai0$h;

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p0}, Lai0;->R0()V

    return-void
.end method

.method public final l(Lzh0$e1;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lzh0$m;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    iget-object v0, p1, Lzh0$n0;->a:Lzh0;

    iget-object v1, p1, Lzh0$e1;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p1, p1, Lzh0$e1;->o:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, p2}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0, v0, v1, p2, p3}, Lai0;->j(Lzh0$n0;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final l0()Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lai0;->k:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, v0, Lai0;->k:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    new-array v14, v12, [I

    new-array v15, v12, [I

    const/16 v16, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v13, :cond_2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    move-object v3, v14

    move v5, v12

    move v7, v10

    move v8, v12

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object v3, v11

    move-object v4, v15

    move v6, v12

    move v8, v10

    move v9, v12

    move/from16 v17, v10

    move v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v12, :cond_1

    aget v3, v14, v2

    and-int/lit16 v4, v3, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_0

    aput v16, v15, v2

    goto :goto_2

    :cond_0
    mul-int/lit16 v6, v6, 0x1b33

    mul-int/lit16 v5, v5, 0x5b92

    add-int/2addr v6, v5

    mul-int/lit16 v4, v4, 0x93a

    add-int/2addr v6, v4

    mul-int v6, v6, v3

    const v3, 0x7f8000

    div-int/2addr v6, v3

    aget v3, v15, v2

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    mul-int v4, v4, v6

    div-int/lit16 v4, v4, 0xff

    const v5, 0xffffff

    and-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v15, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object v3, v11

    move-object v4, v15

    move v6, v12

    move/from16 v8, v17

    move v9, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v10, v17, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v11
.end method

.method public final m0(Lzh0$n0;Lai0$j;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lzh0$y0;

    invoke-virtual {p2, v0}, Lai0$j;->a(Lzh0$y0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lzh0$z0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lai0;->S0()V

    check-cast p1, Lzh0$z0;

    invoke-virtual {p0, p1}, Lai0;->L0(Lzh0$z0;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lai0;->R0()V

    goto/16 :goto_9

    :cond_2
    instance-of v0, p1, Lzh0$v0;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "TSpan render"

    invoke-static {v2, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lai0;->S0()V

    check-cast p1, Lzh0$v0;

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lai0$f;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v3, p1, Lzh0$a1;->n:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lzh0$a1;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzh0$p;

    invoke-virtual {v3, p0}, Lzh0$p;->g(Lai0;)F

    move-result v3

    goto :goto_2

    :cond_4
    :goto_1
    move-object v3, p2

    check-cast v3, Lai0$f;

    iget v3, v3, Lai0$f;->a:F

    :goto_2
    iget-object v4, p1, Lzh0$a1;->o:Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, p1, Lzh0$a1;->o:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzh0$p;

    invoke-virtual {v4, p0}, Lzh0$p;->h(Lai0;)F

    move-result v4

    goto :goto_4

    :cond_6
    :goto_3
    move-object v4, p2

    check-cast v4, Lai0$f;

    iget v4, v4, Lai0$f;->b:F

    :goto_4
    iget-object v5, p1, Lzh0$a1;->p:Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, p1, Lzh0$a1;->p:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzh0$p;

    invoke-virtual {v5, p0}, Lzh0$p;->g(Lai0;)F

    move-result v5

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v5, 0x0

    :goto_6
    iget-object v6, p1, Lzh0$a1;->q:Ljava/util/List;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_7

    :cond_9
    iget-object v2, p1, Lzh0$a1;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0$p;

    invoke-virtual {v1, p0}, Lzh0$p;->h(Lai0;)F

    move-result v1

    move v2, v1

    :cond_a
    :goto_7
    move v1, v2

    move v2, v3

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    invoke-virtual {p1}, Lzh0$v0;->c()Lzh0$b1;

    move-result-object v3

    check-cast v3, Lzh0$k0;

    invoke-virtual {p0, v3}, Lai0;->v(Lzh0$k0;)V

    if-eqz v0, :cond_c

    move-object v0, p2

    check-cast v0, Lai0$f;

    add-float/2addr v2, v5

    iput v2, v0, Lai0$f;->a:F

    add-float/2addr v4, v1

    iput v4, v0, Lai0$f;->b:F

    :cond_c
    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Lzh0$u0;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lai0;->S0()V

    move-object v0, p1

    check-cast v0, Lzh0$u0;

    iget-object v2, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v2, v0}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lzh0$u0;->c()Lzh0$b1;

    move-result-object v2

    check-cast v2, Lzh0$k0;

    invoke-virtual {p0, v2}, Lai0;->v(Lzh0$k0;)V

    iget-object p1, p1, Lzh0$n0;->a:Lzh0;

    iget-object v2, v0, Lzh0$u0;->n:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object p1

    if-eqz p1, :cond_e

    instance-of v2, p1, Lzh0$y0;

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lzh0$y0;

    invoke-virtual {p0, p1, v0}, Lai0;->K(Lzh0$y0;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lai0$j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, v0, Lzh0$u0;->n:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "Tref reference \'%s\' not found"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    :goto_9
    return-void
.end method

.method public final n0()Z
    .locals 5

    invoke-virtual {p0}, Lai0;->M0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-object v2, v2, Lai0$h;->a:Lzh0$e0;

    iget v2, v2, Lzh0$e0;->o:F

    invoke-virtual {p0, v2}, Lai0;->z(F)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lai0;->g:Ljava/util/Stack;

    iget-object v2, p0, Lai0;->f:Lai0$h;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {v0}, Lai0$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai0$h;

    iput-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v2, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v2, v2, Lzh0$e0;->I:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lai0$h;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lai0;->e:Lzh0;

    invoke-virtual {v0, v2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, v0, Lzh0$s;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lai0;->j:Ljava/util/Stack;

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lai0;->H()V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-object v2, v2, Lai0$h;->a:Lzh0$e0;

    iget-object v2, v2, Lzh0$e0;->I:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Mask reference \'%s\' not found"

    invoke-static {v1, v0}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iput-object v4, v0, Lzh0$e0;->I:Ljava/lang/String;

    :cond_3
    :goto_1
    return v3
.end method

.method public final o(Lzh0$q;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzh0$q;",
            ")",
            "Ljava/util/List<",
            "Lai0$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lzh0$q;->o:Lzh0$p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p1, Lzh0$q;->p:Lzh0$p;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lzh0$p;->h(Lai0;)F

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v0, p1, Lzh0$q;->q:Lzh0$p;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    move v8, v0

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    iget-object p1, p1, Lzh0$q;->r:Lzh0$p;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lzh0$p;->h(Lai0;)F

    move-result v1

    move v9, v1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lai0$c;

    sub-float v10, v8, v4

    sub-float v11, v9, v5

    move-object v2, v0

    move-object v3, p0

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lai0$c;-><init>(Lai0;FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lai0$c;

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lai0$c;-><init>(Lai0;FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final o0(Lzh0$d;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Circle render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lzh0$d;->q:Lzh0$p;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lzh0$p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lai0;->c0(Lzh0$d;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lai0;->F(Lzh0$k0;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final p(Lzh0$z;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzh0$z;",
            ")",
            "Ljava/util/List<",
            "Lai0$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v1, v0, Lzh0$z;->o:[F

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lai0$c;

    iget-object v4, v0, Lzh0$z;->o:[F

    const/4 v11, 0x0

    aget v6, v4, v11

    const/4 v12, 0x1

    aget v7, v4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lai0$c;-><init>(Lai0;FFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, v0, Lzh0$z;->o:[F

    aget v5, v4, v2

    add-int/lit8 v6, v2, 0x1

    aget v4, v4, v6

    invoke-virtual {v10, v5, v4}, Lai0$c;->a(FF)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lai0$c;

    iget v7, v10, Lai0$c;->a:F

    sub-float v17, v5, v7

    iget v7, v10, Lai0$c;->b:F

    sub-float v18, v4, v7

    move-object v13, v6

    move-object/from16 v14, p0

    move v15, v5

    move/from16 v16, v4

    invoke-direct/range {v13 .. v18}, Lai0$c;-><init>(Lai0;FFFF)V

    add-int/lit8 v2, v2, 0x2

    move-object v10, v6

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lzh0$a0;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lzh0$z;->o:[F

    aget v1, v0, v11

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_3

    aget v1, v0, v12

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_3

    aget v6, v0, v11

    aget v7, v0, v12

    invoke-virtual {v10, v6, v7}, Lai0$c;->a(FF)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lai0$c;

    iget v1, v10, Lai0$c;->a:F

    sub-float v8, v6, v1

    iget v1, v10, Lai0$c;->b:F

    sub-float v9, v7, v1

    move-object v4, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lai0$c;-><init>(Lai0;FFFF)V

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai0$c;

    invoke-virtual {v0, v1}, Lai0$c;->b(Lai0$c;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v3
.end method

.method public final p0(Lzh0$i;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ellipse render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lzh0$i;->q:Lzh0$p;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lzh0$i;->r:Lzh0$p;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lzh0$p;->j()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lzh0$i;->r:Lzh0$p;

    invoke-virtual {v0}, Lzh0$p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lai0;->d0(Lzh0$i;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lai0;->F(Lzh0$k0;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final q(Landroid/graphics/Path;)Lzh0$b;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance p1, Lzh0$b;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lzh0$b;-><init>(FFFF)V

    return-object p1
.end method

.method public final q0(Lzh0$m;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Group render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lzh0$m;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lai0;->F0(Lzh0$j0;Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_2
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    return-void
.end method

.method public final r(Lzh0$y0;)F
    .locals 2

    new-instance v0, Lai0$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lai0$k;-><init>(Lai0;Lai0$a;)V

    invoke-virtual {p0, p1, v0}, Lai0;->I(Lzh0$y0;Lai0$j;)V

    iget p1, v0, Lai0$k;->a:F

    return p1
.end method

.method public final r0(Lzh0$o;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Image render"

    invoke-static {v2, v1}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lzh0$o;->r:Lzh0$p;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lzh0$p;->j()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p1, Lzh0$o;->s:Lzh0$p;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lzh0$p;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p1, Lzh0$o;->o:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Lzh0$p0;->n:Lyh0;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lyh0;->d:Lyh0;

    :goto_0
    invoke-virtual {p0, v1}, Lai0;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lai0;->e:Lzh0;

    invoke-virtual {v1}, Lzh0;->e()Lbi0;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v3, p1, Lzh0$o;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lbi0;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lzh0$o;->o:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "Could not locate image \'%s\'"

    invoke-static {p1, v1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p1, Lzh0$o;->t:Landroid/graphics/Matrix;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_8
    iget-object v0, p1, Lzh0$o;->p:Lzh0$p;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p1, Lzh0$o;->q:Lzh0$p;

    if-eqz v4, :cond_a

    invoke-virtual {v4, p0}, Lzh0$p;->h(Lai0;)F

    move-result v4

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p1, Lzh0$o;->r:Lzh0$p;

    invoke-virtual {v5, p0}, Lzh0$p;->g(Lai0;)F

    move-result v5

    iget-object v6, p1, Lzh0$o;->s:Lzh0$p;

    invoke-virtual {v6, p0}, Lzh0$p;->g(Lai0;)F

    move-result v6

    iget-object v7, p0, Lai0;->f:Lai0$h;

    new-instance v8, Lzh0$b;

    invoke-direct {v8, v0, v4, v5, v6}, Lzh0$b;-><init>(FFFF)V

    iput-object v8, v7, Lai0$h;->g:Lzh0$b;

    iget-object v0, v7, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->g:Lzh0$b;

    iget v4, v0, Lzh0$b;->a:F

    iget v5, v0, Lzh0$b;->b:F

    iget v6, v0, Lzh0$b;->c:F

    iget v0, v0, Lzh0$b;->d:F

    invoke-virtual {p0, v4, v5, v6, v0}, Lai0;->O0(FFFF)V

    :cond_b
    new-instance v0, Lzh0$b;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v3, v3, v4, v5}, Lzh0$b;-><init>(FFFF)V

    iput-object v0, p1, Lzh0$k0;->h:Lzh0$b;

    iget-object v4, p0, Lai0;->a:Landroid/graphics/Canvas;

    iget-object v5, p0, Lai0;->f:Lai0$h;

    iget-object v5, v5, Lai0$h;->g:Lzh0$b;

    invoke-virtual {p0, v5, v0, v2}, Lai0;->s(Lzh0$b;Lzh0$b;Lyh0;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v0

    invoke-virtual {p0}, Lai0;->X0()V

    iget-object v2, p0, Lai0;->a:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final s(Lzh0$b;Lzh0$b;Lyh0;)Landroid/graphics/Matrix;
    .locals 9

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lyh0;->a()Lyh0$a;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v1, p1, Lzh0$b;->c:F

    iget v2, p2, Lzh0$b;->c:F

    div-float/2addr v1, v2

    iget v2, p1, Lzh0$b;->d:F

    iget v3, p2, Lzh0$b;->d:F

    div-float/2addr v2, v3

    iget v3, p2, Lzh0$b;->a:F

    neg-float v3, v3

    iget v4, p2, Lzh0$b;->b:F

    neg-float v4, v4

    sget-object v5, Lyh0;->c:Lyh0;

    invoke-virtual {p3, v5}, Lyh0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget p2, p1, Lzh0$b;->a:F

    iget p1, p1, Lzh0$b;->b:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

    :cond_1
    invoke-virtual {p3}, Lyh0;->b()Lyh0$b;

    move-result-object v5

    sget-object v6, Lyh0$b;->b:Lyh0$b;

    if-ne v5, v6, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_1
    iget v2, p1, Lzh0$b;->c:F

    div-float/2addr v2, v1

    iget v5, p1, Lzh0$b;->d:F

    div-float/2addr v5, v1

    sget-object v6, Lai0$a;->a:[I

    invoke-virtual {p3}, Lyh0;->a()Lyh0$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v6, v7

    const/high16 v8, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget v7, p2, Lzh0$b;->c:F

    sub-float/2addr v7, v2

    goto :goto_2

    :pswitch_1
    iget v7, p2, Lzh0$b;->c:F

    sub-float/2addr v7, v2

    div-float/2addr v7, v8

    :goto_2
    sub-float/2addr v3, v7

    :goto_3
    invoke-virtual {p3}, Lyh0;->a()Lyh0$a;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v6, p3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/4 v2, 0x3

    if-eq p3, v2, :cond_3

    const/4 v2, 0x5

    if-eq p3, v2, :cond_4

    const/4 v2, 0x6

    if-eq p3, v2, :cond_3

    const/4 v2, 0x7

    if-eq p3, v2, :cond_4

    const/16 v2, 0x8

    if-eq p3, v2, :cond_3

    goto :goto_5

    :cond_3
    iget p2, p2, Lzh0$b;->d:F

    sub-float/2addr p2, v5

    goto :goto_4

    :cond_4
    iget p2, p2, Lzh0$b;->d:F

    sub-float/2addr p2, v5

    div-float/2addr p2, v8

    :goto_4
    sub-float/2addr v4, p2

    :goto_5
    iget p2, p1, Lzh0$b;->a:F

    iget p1, p1, Lzh0$b;->b:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_5
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final s0(Lzh0$q;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Line render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-boolean v0, v0, Lai0$h;->c:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lai0;->e0(Lzh0$q;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1}, Lai0;->I0(Lzh0$l;)V

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_4
    return-void
.end method

.method public final t(Lzh0$k0;)V
    .locals 1

    iget-object v0, p1, Lzh0$k0;->h:Lzh0$b;

    invoke-virtual {p0, p1, v0}, Lai0;->u(Lzh0$k0;Lzh0$b;)V

    return-void
.end method

.method public final t0(Lzh0$v;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Path render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lzh0$v;->o:Lzh0$w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-boolean v1, v0, Lai0$h;->c:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lai0$h;->b:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_4
    new-instance v0, Lai0$d;

    iget-object v1, p1, Lzh0$v;->o:Lzh0$w;

    invoke-direct {v0, p0, v1}, Lai0$d;-><init>(Lai0;Lzh0$w;)V

    invoke-virtual {v0}, Lai0$d;->f()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lai0;->q(Landroid/graphics/Path;)Lzh0$b;

    move-result-object v1

    iput-object v1, p1, Lzh0$k0;->h:Lzh0$b;

    :cond_5
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->b:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lai0;->Y()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p0, p1, v0}, Lai0;->F(Lzh0$k0;Landroid/graphics/Path;)V

    :cond_6
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->c:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    :cond_7
    invoke-virtual {p0, p1}, Lai0;->I0(Lzh0$l;)V

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_8
    return-void
.end method

.method public final u(Lzh0$k0;Lzh0$b;)V
    .locals 5

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lzh0$n0;->a:Lzh0;

    invoke-virtual {v1, v0}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->a:Lzh0$e0;

    iget-object p2, p2, Lzh0$e0;->G:Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "ClipPath reference \'%s\' not found"

    invoke-static {p2, p1}, Lai0;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast v0, Lzh0$e;

    iget-object v3, v0, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void

    :cond_2
    iget-object v3, v0, Lzh0$e;->o:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    instance-of v4, p1, Lzh0$m;

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    invoke-static {p1, p2}, Lai0;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lai0;->B()V

    if-nez v3, :cond_6

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p2, Lzh0$b;->a:F

    iget v3, p2, Lzh0$b;->b:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v2, p2, Lzh0$b;->c:F

    iget p2, p2, Lzh0$b;->d:F

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_6
    iget-object p1, v0, Lzh0$m;->n:Landroid/graphics/Matrix;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_7
    invoke-virtual {p0, v0}, Lai0;->Q(Lzh0$n0;)Lai0$h;

    move-result-object p1

    iput-object p1, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0}, Lai0;->t(Lzh0$k0;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iget-object p2, v0, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$n0;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0, v1, p1, v2}, Lai0;->j(Lzh0$n0;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Lai0;->A()V

    return-void
.end method

.method public final u0(Lzh0$z;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PolyLine render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-boolean v1, v0, Lai0$h;->c:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lai0$h;->b:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p1, Lzh0$z;->o:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lai0;->f0(Lzh0$z;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->b:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v0}, Lai0;->F(Lzh0$k0;Landroid/graphics/Path;)V

    :cond_5
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->c:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    :cond_6
    invoke-virtual {p0, p1}, Lai0;->I0(Lzh0$l;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_7
    return-void
.end method

.method public final v(Lzh0$k0;)V
    .locals 3

    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->b:Lzh0$o0;

    instance-of v1, v0, Lzh0$u;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p1, Lzh0$k0;->h:Lzh0$b;

    check-cast v0, Lzh0$u;

    invoke-virtual {p0, v1, v2, v0}, Lai0;->D(ZLzh0$b;Lzh0$u;)V

    :cond_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-object v0, v0, Lai0$h;->a:Lzh0$e0;

    iget-object v0, v0, Lzh0$e0;->f:Lzh0$o0;

    instance-of v1, v0, Lzh0$u;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object p1, p1, Lzh0$k0;->h:Lzh0$b;

    check-cast v0, Lzh0$u;

    invoke-virtual {p0, v1, p1, v0}, Lai0;->D(ZLzh0$b;Lzh0$u;)V

    :cond_1
    return-void
.end method

.method public final v0(Lzh0$a0;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Polygon render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lai0;->f:Lai0$h;

    iget-boolean v1, v0, Lai0$h;->c:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lai0$h;->b:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p1, Lzh0$z;->o:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lai0;->f0(Lzh0$z;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->b:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v0}, Lai0;->F(Lzh0$k0;Landroid/graphics/Path;)V

    :cond_5
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->c:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    :cond_6
    invoke-virtual {p0, p1}, Lai0;->I0(Lzh0$l;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_7
    return-void
.end method

.method public final w(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, -0x7

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final w0(Lzh0$b0;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Rect render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lzh0$b0;->q:Lzh0$p;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lzh0$b0;->r:Lzh0$p;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lzh0$p;->j()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lzh0$b0;->r:Lzh0$p;

    invoke-virtual {v0}, Lzh0$p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lai0;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lai0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lai0;->g0(Lzh0$b0;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->v(Lzh0$k0;)V

    invoke-virtual {p0, p1}, Lai0;->t(Lzh0$k0;)V

    invoke-virtual {p0}, Lai0;->n0()Z

    move-result v1

    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lai0;->F(Lzh0$k0;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lai0;->f:Lai0$h;

    iget-boolean v2, v2, Lai0$h;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lai0;->G(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/Integer;Lzh0$e0$b;)Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Lzh0$e0$b;->b:Lzh0$e0$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x1f4

    if-le p2, v0, :cond_1

    if-eqz p3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    const-string p2, "serif"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    :goto_2
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_4

    :cond_4
    const-string p2, "sans-serif"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_5
    const-string p2, "monospace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_6
    const-string p2, "cursive"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p2, "fantasy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method public final x0(Lzh0$f0;)V
    .locals 2

    iget-object v0, p1, Lzh0$f0;->r:Lzh0$p;

    iget-object v1, p1, Lzh0$f0;->s:Lzh0$p;

    invoke-virtual {p0, p1, v0, v1}, Lai0;->y0(Lzh0$f0;Lzh0$p;Lzh0$p;)V

    return-void
.end method

.method public final y(Lzh0$n0;)V
    .locals 1

    instance-of v0, p1, Lzh0$l0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lzh0$l0;

    iget-object p1, p1, Lzh0$l0;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lai0$h;->j:Z

    :cond_1
    return-void
.end method

.method public final y0(Lzh0$f0;Lzh0$p;Lzh0$p;)V
    .locals 6

    iget-object v4, p1, Lzh0$r0;->o:Lzh0$b;

    iget-object v5, p1, Lzh0$p0;->n:Lyh0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lai0;->z0(Lzh0$f0;Lzh0$p;Lzh0$p;Lzh0$b;Lyh0;)V

    return-void
.end method

.method public final z(F)I
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0xff

    :cond_1
    :goto_0
    return p1
.end method

.method public final z0(Lzh0$f0;Lzh0$p;Lzh0$p;Lzh0$b;Lyh0;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Svg render"

    invoke-static {v1, v0}, Lai0;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lzh0$p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lzh0$p;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p5, :cond_4

    iget-object p5, p1, Lzh0$p0;->n:Lyh0;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    sget-object p5, Lyh0;->d:Lyh0;

    :cond_4
    :goto_0
    iget-object v0, p0, Lai0;->f:Lai0$h;

    invoke-virtual {p0, v0, p1}, Lai0;->W0(Lai0$h;Lzh0$l0;)V

    invoke-virtual {p0}, Lai0;->E()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lzh0$n0;->b:Lzh0$j0;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lzh0$f0;->p:Lzh0$p;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lzh0$p;->g(Lai0;)F

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lzh0$f0;->q:Lzh0$p;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p0}, Lzh0$p;->h(Lai0;)F

    move-result v1

    :cond_7
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lai0;->W()Lzh0$b;

    move-result-object v2

    if-eqz p2, :cond_9

    invoke-virtual {p2, p0}, Lzh0$p;->g(Lai0;)F

    move-result p2

    goto :goto_3

    :cond_9
    iget p2, v2, Lzh0$b;->c:F

    :goto_3
    if-eqz p3, :cond_a

    invoke-virtual {p3, p0}, Lzh0$p;->h(Lai0;)F

    move-result p3

    goto :goto_4

    :cond_a
    iget p3, v2, Lzh0$b;->d:F

    :goto_4
    iget-object v2, p0, Lai0;->f:Lai0$h;

    new-instance v3, Lzh0$b;

    invoke-direct {v3, v1, v0, p2, p3}, Lzh0$b;-><init>(FFFF)V

    iput-object v3, v2, Lai0$h;->g:Lzh0$b;

    iget-object p2, v2, Lai0$h;->a:Lzh0$e0;

    iget-object p2, p2, Lzh0$e0;->x:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->g:Lzh0$b;

    iget p3, p2, Lzh0$b;->a:F

    iget v2, p2, Lzh0$b;->b:F

    iget v3, p2, Lzh0$b;->c:F

    iget p2, p2, Lzh0$b;->d:F

    invoke-virtual {p0, p3, v2, v3, p2}, Lai0;->O0(FFFF)V

    :cond_b
    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p2, p2, Lai0$h;->g:Lzh0$b;

    invoke-virtual {p0, p1, p2}, Lai0;->u(Lzh0$k0;Lzh0$b;)V

    iget-object p2, p0, Lai0;->a:Landroid/graphics/Canvas;

    if-eqz p4, :cond_c

    iget-object p3, p0, Lai0;->f:Lai0$h;

    iget-object p3, p3, Lai0$h;->g:Lzh0$b;

    invoke-virtual {p0, p3, p4, p5}, Lai0;->s(Lzh0$b;Lzh0$b;Lyh0;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lai0;->f:Lai0$h;

    iget-object p3, p1, Lzh0$r0;->o:Lzh0$b;

    iput-object p3, p2, Lai0$h;->h:Lzh0$b;

    goto :goto_5

    :cond_c
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_5
    invoke-virtual {p0}, Lai0;->n0()Z

    move-result p2

    invoke-virtual {p0}, Lai0;->X0()V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lai0;->F0(Lzh0$j0;Z)V

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Lai0;->k0(Lzh0$k0;)V

    :cond_d
    invoke-virtual {p0, p1}, Lai0;->U0(Lzh0$k0;)V

    return-void
.end method
