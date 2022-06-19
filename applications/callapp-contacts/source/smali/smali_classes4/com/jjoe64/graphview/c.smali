.class public final Lcom/jjoe64/graphview/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/c$a;,
        Lcom/jjoe64/graphview/c$b;,
        Lcom/jjoe64/graphview/c$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/jjoe64/graphview/c$b;

.field protected b:Z

.field public c:Lcom/jjoe64/graphview/d;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field private final h:Lcom/jjoe64/graphview/GraphView;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Ljava/lang/Integer;

.field private p:Z

.field private q:Ljava/lang/Integer;

.field private r:Z

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 10

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 351
    new-instance v0, Lcom/jjoe64/graphview/b;

    invoke-direct {v0}, Lcom/jjoe64/graphview/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/c;->a(Lcom/jjoe64/graphview/d;)V

    .line 352
    new-instance v0, Lcom/jjoe64/graphview/c$b;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/c$b;-><init>(Lcom/jjoe64/graphview/c;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    .line 2367
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2368
    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010042

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const v1, -0x777778

    const/high16 v2, -0x1000000

    const/16 v4, 0x14

    .line 2377
    :try_start_0
    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v5, 0x4

    new-array v5, v5, [I

    const v6, 0x1010036

    const/4 v7, 0x0

    aput v6, v5, v7

    const v6, 0x1010038

    aput v6, v5, v3

    const v6, 0x1010095

    const/4 v8, 0x2

    aput v6, v5, v8

    const v6, 0x101023f

    const/4 v9, 0x3

    aput v6, v5, v9

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2382
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2383
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 2384
    invoke-virtual {p1, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 2385
    invoke-virtual {p1, v9, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 2386
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    move v1, v5

    move v4, v6

    goto :goto_0

    :catch_0
    const/16 v7, 0x14

    .line 2394
    :goto_0
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput v2, p1, Lcom/jjoe64/graphview/c$b;->d:I

    .line 2395
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput v2, p1, Lcom/jjoe64/graphview/c$b;->e:I

    .line 2396
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput v2, p1, Lcom/jjoe64/graphview/c$b;->f:I

    .line 2397
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput v1, p1, Lcom/jjoe64/graphview/c$b;->g:I

    .line 2398
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    int-to-float v0, v4

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->a:F

    .line 2399
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput v7, p1, Lcom/jjoe64/graphview/c$b;->i:I

    .line 2400
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, p1, Lcom/jjoe64/graphview/c$b;->a:F

    float-to-int v0, v0

    const/4 v1, 0x5

    div-int/2addr v0, v1

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->r:I

    .line 2402
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p1, Lcom/jjoe64/graphview/c$b;->b:Landroid/graphics/Paint$Align;

    .line 2403
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p1, Lcom/jjoe64/graphview/c$b;->c:Landroid/graphics/Paint$Align;

    .line 2404
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput-boolean v3, p1, Lcom/jjoe64/graphview/c$b;->h:Z

    .line 2406
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, p1, Lcom/jjoe64/graphview/c$b;->d:I

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->k:I

    .line 2407
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, p1, Lcom/jjoe64/graphview/c$b;->f:I

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->m:I

    .line 2408
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, p1, Lcom/jjoe64/graphview/c$b;->a:F

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->j:F

    .line 2409
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, p1, Lcom/jjoe64/graphview/c$b;->a:F

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->l:F

    .line 2411
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput-boolean v3, p1, Lcom/jjoe64/graphview/c$b;->o:Z

    .line 2412
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput-boolean v3, p1, Lcom/jjoe64/graphview/c$b;->p:Z

    .line 2414
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    const/4 v0, 0x0

    iput v0, p1, Lcom/jjoe64/graphview/c$b;->n:F

    .line 2416
    iget-object p1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    sget-object v0, Lcom/jjoe64/graphview/c$a;->BOTH:Lcom/jjoe64/graphview/c$a;

    iput-object v0, p1, Lcom/jjoe64/graphview/c$b;->q:Lcom/jjoe64/graphview/c$a;

    .line 2417
    invoke-direct {p0}, Lcom/jjoe64/graphview/c;->l()V

    .line 354
    iput v1, p0, Lcom/jjoe64/graphview/c;->d:I

    .line 355
    iput v1, p0, Lcom/jjoe64/graphview/c;->e:I

    .line 356
    iput-boolean v3, p0, Lcom/jjoe64/graphview/c;->g:Z

    .line 357
    iput-boolean v3, p0, Lcom/jjoe64/graphview/c;->f:Z

    return-void
.end method

.method private static a(DZ)D
    .locals 9

    const/4 v0, 0x0

    .line 1399
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    div-double/2addr p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1403
    :cond_0
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v1, v5

    if-gez v7, :cond_1

    mul-double p0, p0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-eqz p2, :cond_4

    cmpl-double p2, p0, v5

    if-eqz p2, :cond_7

    cmpg-double p2, p0, v7

    if-gtz p2, :cond_2

    goto :goto_2

    :cond_2
    cmpg-double p2, p0, v1

    if-gtz p2, :cond_3

    goto :goto_3

    :cond_3
    cmpg-double p2, p0, v3

    if-gez p2, :cond_7

    goto :goto_4

    :cond_4
    cmpl-double p2, p0, v5

    if-eqz p2, :cond_7

    const-wide v5, 0x401399999999999aL    # 4.9

    cmpg-double p2, p0, v5

    if-gtz p2, :cond_5

    :goto_2
    move-wide p0, v7

    goto :goto_5

    :cond_5
    const-wide v5, 0x4023cccccccccccdL    # 9.9

    cmpg-double p2, p0, v5

    if-gtz p2, :cond_6

    :goto_3
    move-wide p0, v1

    goto :goto_5

    :cond_6
    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    cmpg-double p2, p0, v1

    if-gez p2, :cond_7

    :goto_4
    move-wide p0, v3

    :cond_7
    :goto_5
    int-to-double v0, v0

    .line 1426
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private a(Z)Z
    .locals 20

    move-object/from16 v0, p0

    .line 845
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 849
    :cond_0
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 4378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 849
    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v3

    .line 850
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 5378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 850
    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    return v2

    .line 854
    :cond_1
    iget v1, v0, Lcom/jjoe64/graphview/c;->e:I

    sub-double v7, v5, v3

    add-int/lit8 v9, v1, -0x1

    int-to-double v9, v9

    div-double/2addr v7, v9

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double v7, v7, v11

    .line 863
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v11

    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide/16 v13, 0x0

    cmpl-double v15, v7, v13

    if-nez v15, :cond_2

    mul-double v5, v9, v11

    add-double/2addr v5, v3

    move-wide v7, v11

    .line 5448
    :cond_2
    iget-boolean v11, v0, Lcom/jjoe64/graphview/c;->g:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    .line 873
    invoke-static {v7, v8, v2}, Lcom/jjoe64/graphview/c;->a(DZ)D

    move-result-wide v7

    goto/16 :goto_5

    .line 874
    :cond_3
    iget-object v11, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-le v11, v12, :cond_b

    .line 880
    iget-object v11, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v16, v13

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    if-nez v15, :cond_4

    .line 882
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 884
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    goto :goto_1

    :cond_5
    move-wide/from16 v18, v13

    :goto_1
    sub-double v18, v18, v16

    cmpl-double v11, v18, v13

    if-lez v11, :cond_b

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v11, v18, v7

    if-lez v11, :cond_6

    div-double v7, v18, v13

    goto :goto_2

    :cond_6
    cmpg-double v11, v18, v7

    if-gez v11, :cond_7

    mul-double v13, v13, v18

    move-wide v7, v13

    goto :goto_2

    :cond_7
    move-wide v7, v15

    :goto_2
    sub-double/2addr v5, v3

    div-double v13, v5, v18

    double-to-int v11, v13

    div-double/2addr v5, v7

    double-to-int v5, v5

    if-gt v11, v1, :cond_9

    if-gt v5, v1, :cond_9

    if-le v5, v11, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v6, 0x1

    :goto_4
    cmpl-double v11, v7, v15

    if-eqz v11, :cond_a

    if-eqz v6, :cond_a

    if-gt v5, v1, :cond_a

    goto :goto_5

    :cond_a
    move-wide/from16 v7, v18

    .line 929
    :cond_b
    :goto_5
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 6378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 929
    invoke-virtual {v1}, Lcom/jjoe64/graphview/j;->a()D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v3, v7

    .line 931
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    mul-double v3, v3, v7

    add-double/2addr v3, v5

    if-eqz p1, :cond_c

    .line 936
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 7378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 936
    invoke-virtual {v1, v3, v4}, Lcom/jjoe64/graphview/j;->d(D)V

    .line 937
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 8378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    mul-double v9, v9, v7

    add-double/2addr v9, v3

    .line 937
    invoke-virtual {v1, v9, v10}, Lcom/jjoe64/graphview/j;->c(D)V

    .line 938
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 9378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 938
    sget-object v5, Lcom/jjoe64/graphview/j$a;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/j$a;

    iput-object v5, v1, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    .line 942
    :cond_c
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 10378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 942
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->a()D

    move-result-wide v5

    div-double/2addr v5, v7

    double-to-int v1, v5

    add-int/2addr v1, v12

    .line 944
    iget-object v5, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    if-eqz v5, :cond_d

    .line 945
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    goto :goto_6

    .line 947
    :cond_d
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v5, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    .line 950
    :goto_6
    iget-object v5, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v5

    int-to-double v5, v5

    .line 952
    iget-object v9, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 11378
    iget-object v9, v9, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 952
    iget-object v9, v9, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/g;->a()D

    move-result-wide v9

    div-double/2addr v5, v9

    :goto_7
    if-ge v2, v1, :cond_f

    int-to-double v9, v2

    mul-double v9, v9, v7

    add-double/2addr v9, v3

    .line 956
    iget-object v11, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 12378
    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 956
    iget-object v11, v11, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v11, Lcom/jjoe64/graphview/g;->a:D

    cmpg-double v11, v9, v13

    if-ltz v11, :cond_e

    .line 962
    iget-object v11, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 13378
    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 962
    iget-object v11, v11, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v11, Lcom/jjoe64/graphview/g;->a:D

    sub-double v13, v9, v13

    mul-double v13, v13, v5

    .line 965
    iget-object v11, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    double-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v11, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    return v12
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1199
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    .line 39517
    iget-object v2, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->f:I

    .line 1199
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1201
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Map$Entry;

    .line 1203
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/c$b;->h:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 1204
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 1205
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    .line 1207
    :cond_0
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1210
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v1, v1, Lcom/jjoe64/graphview/c$b;->q:Lcom/jjoe64/graphview/c$a;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/c$a;->drawVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1212
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 1213
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v2, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    iget-object v5, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 39706
    :cond_2
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/c$b;->o:Z

    if-eqz v1, :cond_b

    .line 1219
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->n:F

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    cmpl-float v1, v1, v12

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->n:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    .line 1220
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->n:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1221
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 1222
    :cond_3
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->n:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_6

    .line 1223
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2

    .line 1226
    :cond_4
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1227
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v10, v1, :cond_5

    .line 1228
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_5
    if-nez v10, :cond_6

    .line 1230
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1234
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v1, v5, v6, v4}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    const-string v5, "\n"

    .line 1238
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1242
    iget-object v5, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v5, v5, Lcom/jjoe64/graphview/c$b;->n:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v5, v5, Lcom/jjoe64/graphview/c$b;->n:F

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_8

    .line 1243
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1244
    iget-object v6, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    aget-object v13, v1, v9

    aget-object v14, v1, v9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6, v13, v9, v14, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1245
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v5, v5

    iget-object v13, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v13, v13, Lcom/jjoe64/graphview/c$b;->n:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v5, v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v5, v5

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    .line 1247
    :goto_4
    array-length v13, v1

    if-ge v6, v13, :cond_b

    .line 1249
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    iget-object v14, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v14, v14, Lcom/jjoe64/graphview/c$b;->i:I

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/c;->c()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    array-length v14, v1

    sub-int/2addr v14, v6

    sub-int/2addr v14, v4

    int-to-float v14, v14

    .line 40495
    iget-object v15, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v15, v15, Lcom/jjoe64/graphview/c$b;->a:F

    mul-float v14, v14, v15

    const v15, 0x3f8ccccd    # 1.1f

    mul-float v14, v14, v15

    sub-float/2addr v13, v14

    .line 1249
    iget-object v14, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v14, v14, Lcom/jjoe64/graphview/c$b;->r:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    .line 1250
    iget-object v14, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v14

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    .line 1251
    iget-object v15, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v15, v15, Lcom/jjoe64/graphview/c$b;->n:F

    cmpl-float v15, v15, v12

    if-lez v15, :cond_9

    iget-object v15, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v15, v15, Lcom/jjoe64/graphview/c$b;->n:F

    cmpg-float v15, v15, v2

    if-gez v15, :cond_9

    .line 1252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1253
    iget-object v15, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v15, v15, Lcom/jjoe64/graphview/c$b;->n:F

    int-to-float v2, v5

    add-float/2addr v14, v2

    invoke-virtual {v7, v15, v14, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1254
    aget-object v2, v1, v6

    iget-object v15, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v14, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 1256
    :cond_9
    iget-object v2, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->n:F

    cmpl-float v2, v2, v12

    if-lez v2, :cond_a

    iget-object v2, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->n:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    .line 1257
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1258
    iget-object v2, v0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->n:F

    sub-float/2addr v2, v3

    int-to-float v15, v5

    sub-float/2addr v14, v15

    invoke-virtual {v7, v2, v14, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1259
    aget-object v2, v1, v6

    iget-object v15, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v14, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1260
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 1262
    :cond_a
    aget-object v2, v1, v6

    iget-object v15, v0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v14, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/high16 v2, 0x42b40000    # 90.0f

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1277
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-nez v0, :cond_0

    return-void

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1283
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    .line 40683
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->e:I

    .line 1283
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1284
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    .line 41669
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v2, v2, Lcom/jjoe64/graphview/c$b;->c:Landroid/graphics/Paint$Align;

    .line 1284
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1285
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1286
    iget-object v3, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v3

    iget-object v4, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1289
    iget-object v4, p0, Lcom/jjoe64/graphview/c;->s:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    float-to-int v5, v0

    .line 42669
    iget-object v6, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v6, v6, Lcom/jjoe64/graphview/c$b;->c:Landroid/graphics/Paint$Align;

    .line 1291
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v6, v7, :cond_2

    :goto_0
    add-int/2addr v5, v4

    goto :goto_1

    .line 43669
    :cond_2
    iget-object v6, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v6, v6, Lcom/jjoe64/graphview/c$b;->c:Landroid/graphics/Paint$Align;

    .line 1293
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v6, v7, :cond_3

    .line 1294
    div-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 1299
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v4, v4, Lcom/jjoe64/graphview/h;->f:Lcom/jjoe64/graphview/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v2, 0x0

    invoke-interface {v4, v6, v7, v2}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1300
    array-length v6, v4

    int-to-float v6, v6

    .line 44495
    iget-object v7, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v7, v7, Lcom/jjoe64/graphview/c$b;->a:F

    mul-float v6, v6, v7

    const v7, 0x3f8ccccd    # 1.1f

    mul-float v6, v6, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v3, v6

    .line 1301
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 1303
    array-length v6, v4

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    .line 45495
    iget-object v8, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v8, v8, Lcom/jjoe64/graphview/c$b;->a:F

    mul-float v6, v6, v8

    mul-float v6, v6, v7

    sub-float v6, v3, v6

    .line 1304
    aget-object v8, v4, v2

    int-to-float v9, v5

    iget-object v10, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1317
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v0

    int-to-float v0, v0

    .line 1318
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    .line 45502
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->d:I

    .line 1318
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1319
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    .line 45510
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v2, v2, Lcom/jjoe64/graphview/c$b;->b:Landroid/graphics/Paint$Align;

    .line 1319
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1321
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    .line 1324
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Map$Entry;

    .line 1325
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 1328
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/c$b;->h:Z

    const/high16 v13, 0x40a00000    # 5.0f

    if-eqz v1, :cond_1

    .line 1329
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    .line 1332
    :cond_0
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1335
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v1, v1, Lcom/jjoe64/graphview/c$b;->q:Lcom/jjoe64/graphview/c$a;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/c$a;->drawHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1336
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v6, p0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v12

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1341
    :cond_2
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->s:I

    sget v2, Lcom/jjoe64/graphview/c$c;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    if-eq v10, v9, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->s:I

    sget v2, Lcom/jjoe64/graphview/c$c;->c:I

    if-ne v1, v2, :cond_5

    if-ne v10, v7, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    .line 45722
    :goto_2
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v2, v2, Lcom/jjoe64/graphview/c$b;->p:Z

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    .line 1348
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 46510
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v2, v2, Lcom/jjoe64/graphview/c$b;->b:Landroid/graphics/Paint$Align;

    .line 1350
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v2, v4, :cond_6

    .line 1352
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->r:I

    sub-int/2addr v1, v2

    goto :goto_3

    .line 47510
    :cond_6
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-object v2, v2, Lcom/jjoe64/graphview/c$b;->b:Landroid/graphics/Paint$Align;

    .line 1353
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v2, v4, :cond_7

    .line 1354
    div-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 1356
    :goto_3
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->i:I

    invoke-virtual {p0}, Lcom/jjoe64/graphview/c;->d()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 1360
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v2, v4, v5, v3}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    :cond_8
    const-string v4, "\n"

    .line 1364
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1365
    sget-object v4, Lcom/jjoe64/graphview/c$1;->a:[I

    iget-object v5, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v5, v5, Lcom/jjoe64/graphview/c$b;->s:I

    sub-int/2addr v5, v9

    aget v4, v4, v5

    const v5, 0x3f8ccccd    # 1.1f

    if-eq v4, v9, :cond_b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_a

    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    goto :goto_5

    .line 1373
    :cond_9
    array-length v4, v2

    int-to-float v4, v4

    .line 49495
    iget-object v6, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v6, v6, Lcom/jjoe64/graphview/c$b;->a:F

    mul-float v4, v4, v6

    mul-float v4, v4, v5

    add-float/2addr v4, v13

    goto :goto_4

    :cond_a
    sub-float/2addr v12, v13

    goto :goto_5

    .line 1367
    :cond_b
    array-length v4, v2

    int-to-float v4, v4

    .line 48495
    iget-object v6, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v6, v6, Lcom/jjoe64/graphview/c$b;->a:F

    mul-float v4, v4, v6

    mul-float v4, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    :goto_4
    add-float/2addr v12, v4

    .line 1377
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_c

    .line 1379
    array-length v4, v2

    sub-int/2addr v4, v3

    sub-int/2addr v4, v9

    int-to-float v4, v4

    .line 50495
    iget-object v6, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v6, v6, Lcom/jjoe64/graphview/c$b;->a:F

    mul-float v4, v4, v6

    mul-float v4, v4, v5

    sub-float v4, v12, v4

    .line 1380
    aget-object v6, v2, v3

    int-to-float v11, v1

    iget-object v13, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v11, v4, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private l()V
    .locals 2

    .line 425
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    .line 426
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    .line 2495
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->a:F

    .line 430
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 431
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 433
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    .line 3495
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->a:F

    .line 434
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 435
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private m()Z
    .locals 18

    move-object/from16 v0, p0

    .line 569
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 572
    :cond_0
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    .line 576
    :cond_1
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/h;->b()D

    move-result-wide v4

    .line 577
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/h;->c()D

    move-result-wide v6

    .line 580
    iget v1, v0, Lcom/jjoe64/graphview/c;->d:I

    .line 585
    iget-object v8, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v8, v8, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    .line 4167
    iget-boolean v8, v8, Lcom/jjoe64/graphview/h;->c:Z

    if-eqz v8, :cond_d

    sub-double/2addr v6, v4

    add-int/lit8 v8, v1, -0x1

    int-to-double v8, v8

    div-double v8, v6, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double v8, v8, v10

    .line 590
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    .line 596
    iget-object v10, v0, Lcom/jjoe64/graphview/c;->j:Ljava/util/Map;

    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-le v10, v3, :cond_9

    .line 602
    iget-object v10, v0, Lcom/jjoe64/graphview/c;->j:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    move-wide v14, v11

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    if-nez v13, :cond_2

    .line 604
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v11

    :goto_1
    sub-double v16, v16, v14

    cmpl-double v10, v16, v11

    if-lez v10, :cond_9

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v14, v16, v8

    if-lez v14, :cond_4

    div-double v8, v16, v10

    goto :goto_2

    :cond_4
    cmpg-double v14, v16, v8

    if-gez v14, :cond_5

    mul-double v10, v10, v16

    move-wide v8, v10

    goto :goto_2

    :cond_5
    move-wide v8, v12

    :goto_2
    div-double v10, v6, v16

    double-to-int v10, v10

    div-double/2addr v6, v8

    double-to-int v6, v6

    if-gt v10, v1, :cond_7

    if-gt v6, v1, :cond_7

    if-le v6, v10, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v7, 0x1

    :goto_4
    cmpl-double v10, v8, v12

    if-eqz v10, :cond_8

    if-eqz v7, :cond_8

    if-gt v6, v1, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v8, v16

    .line 651
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v1

    iget-wide v6, v1, Lcom/jjoe64/graphview/h;->g:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v8

    .line 653
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double v4, v4, v8

    add-double/2addr v4, v6

    .line 657
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v1

    iget-object v1, v1, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v6

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    mul-double v6, v6, v10

    div-double/2addr v6, v8

    double-to-int v1, v6

    const/4 v6, 0x2

    add-int/2addr v1, v6

    .line 661
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 663
    iget-object v6, v0, Lcom/jjoe64/graphview/c;->j:Ljava/util/Map;

    if-eqz v6, :cond_a

    .line 664
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    goto :goto_6

    .line 666
    :cond_a
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v6, v0, Lcom/jjoe64/graphview/c;->j:Ljava/util/Map;

    .line 669
    :goto_6
    iget-object v6, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v6

    int-to-double v6, v6

    .line 671
    iget-object v12, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v12

    iget-object v12, v12, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    invoke-virtual {v12}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v12

    div-double/2addr v6, v12

    mul-double v6, v6, v10

    :goto_7
    if-ge v2, v1, :cond_c

    int-to-double v10, v2

    mul-double v10, v10, v8

    add-double/2addr v10, v4

    .line 675
    iget-object v12, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v12

    iget-object v12, v12, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v12, v12, Lcom/jjoe64/graphview/g;->c:D

    cmpl-double v14, v10, v12

    if-gtz v14, :cond_b

    .line 679
    iget-object v12, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v12

    iget-object v12, v12, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v12, v12, Lcom/jjoe64/graphview/g;->d:D

    cmpg-double v14, v10, v12

    if-ltz v14, :cond_b

    .line 686
    iget-object v12, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v12}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v12

    iget-object v12, v12, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v12, v12, Lcom/jjoe64/graphview/g;->d:D

    sub-double v12, v10, v12

    mul-double v12, v12, v6

    .line 689
    iget-object v14, v0, Lcom/jjoe64/graphview/c;->j:Ljava/util/Map;

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v14, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    return v3

    .line 593
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private n()V
    .locals 22

    move-object/from16 v0, p0

    .line 978
    sget-object v1, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    iget-object v2, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 14378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 978
    iget-object v2, v2, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/j$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 14703
    iget-object v3, v0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_8

    .line 14707
    :cond_0
    iget-object v3, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 15378
    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14707
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v5

    .line 14708
    iget-object v3, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 16378
    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14708
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v7

    cmpl-double v3, v5, v7

    if-nez v3, :cond_1

    goto/16 :goto_8

    .line 14715
    :cond_1
    iget v3, v0, Lcom/jjoe64/graphview/c;->d:I

    sub-double v9, v7, v5

    add-int/lit8 v11, v3, -0x1

    int-to-double v11, v11

    div-double/2addr v9, v11

    const-wide v13, 0x412e848000000000L    # 1000000.0

    mul-double v9, v9, v13

    .line 14724
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    div-double/2addr v9, v13

    const-wide v13, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide/16 v15, 0x0

    cmpl-double v17, v9, v15

    if-nez v17, :cond_2

    mul-double v7, v11, v13

    add-double/2addr v7, v5

    move-wide v9, v13

    .line 16458
    :cond_2
    iget-boolean v13, v0, Lcom/jjoe64/graphview/c;->f:Z

    if-eqz v13, :cond_4

    .line 14734
    invoke-static {v9, v10, v1}, Lcom/jjoe64/graphview/c;->a(DZ)D

    move-result-wide v9

    :cond_3
    move-wide/from16 v20, v5

    goto/16 :goto_5

    .line 14735
    :cond_4
    iget-object v13, v0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-le v13, v2, :cond_3

    .line 14741
    iget-object v13, v0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide/from16 v17, v15

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Double;

    if-nez v14, :cond_5

    .line 14743
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 14745
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_1

    :cond_6
    move-wide v13, v15

    :goto_1
    sub-double v13, v13, v17

    cmpl-double v17, v13, v15

    if-lez v17, :cond_3

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v19, v13, v9

    if-lez v19, :cond_7

    div-double v9, v13, v15

    goto :goto_2

    :cond_7
    cmpg-double v19, v13, v9

    if-gez v19, :cond_8

    mul-double v15, v15, v13

    move-wide v9, v15

    goto :goto_2

    :cond_8
    move-wide/from16 v9, v17

    :goto_2
    sub-double v15, v7, v5

    move-wide/from16 v20, v5

    div-double v4, v15, v13

    double-to-int v4, v4

    div-double v5, v15, v9

    double-to-int v5, v5

    if-gt v4, v3, :cond_a

    if-gt v5, v3, :cond_a

    if-le v5, v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v4, 0x1

    :goto_4
    cmpl-double v6, v9, v17

    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    if-gt v5, v3, :cond_b

    goto :goto_5

    :cond_b
    move-wide v9, v13

    .line 14790
    :goto_5
    iget-object v3, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 17378
    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14790
    invoke-virtual {v3}, Lcom/jjoe64/graphview/j;->e()D

    move-result-wide v3

    sub-double v5, v20, v3

    div-double/2addr v5, v9

    .line 14792
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    mul-double v5, v5, v9

    add-double/2addr v5, v3

    if-eqz v1, :cond_c

    .line 14797
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 18378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14797
    invoke-virtual {v1, v5, v6}, Lcom/jjoe64/graphview/j;->b(D)V

    .line 14798
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 19378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    mul-double v11, v11, v9

    add-double/2addr v11, v5

    .line 14798
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/jjoe64/graphview/j;->a(D)V

    .line 14799
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 20378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14799
    sget-object v3, Lcom/jjoe64/graphview/j$a;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/j$a;

    iput-object v3, v1, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    .line 14803
    :cond_c
    iget-object v1, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 21378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14803
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    mul-double v3, v3, v7

    div-double/2addr v3, v9

    double-to-int v1, v3

    add-int/lit8 v1, v1, 0x2

    .line 14805
    iget-object v3, v0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    if-eqz v3, :cond_d

    .line 14806
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_6

    .line 14808
    :cond_d
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v3, v0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    .line 14811
    :goto_6
    iget-object v3, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v3

    int-to-double v3, v3

    .line 14813
    iget-object v11, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 22378
    iget-object v11, v11, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14813
    iget-object v11, v11, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v11}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v11

    div-double/2addr v3, v11

    mul-double v3, v3, v7

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v1, :cond_f

    int-to-double v11, v7

    mul-double v11, v11, v9

    add-double/2addr v11, v5

    .line 14817
    iget-object v8, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 23378
    iget-object v8, v8, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14817
    iget-object v8, v8, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v8, Lcom/jjoe64/graphview/g;->c:D

    cmpl-double v8, v11, v13

    if-gtz v8, :cond_e

    .line 14821
    iget-object v8, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 24378
    iget-object v8, v8, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14821
    iget-object v8, v8, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v8, Lcom/jjoe64/graphview/g;->d:D

    cmpg-double v8, v11, v13

    if-ltz v8, :cond_e

    .line 14828
    iget-object v8, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 25378
    iget-object v8, v8, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 14828
    iget-object v8, v8, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v8, Lcom/jjoe64/graphview/g;->d:D

    sub-double v13, v11, v13

    mul-double v13, v13, v3

    .line 14831
    iget-object v8, v0, Lcom/jjoe64/graphview/c;->i:Ljava/util/Map;

    double-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x1

    .line 978
    :goto_8
    iput-boolean v4, v0, Lcom/jjoe64/graphview/c;->b:Z

    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/jjoe64/graphview/c;->m()Z

    move-result v1

    and-int/2addr v1, v4

    iput-boolean v1, v0, Lcom/jjoe64/graphview/c;->b:Z

    .line 980
    sget-object v3, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    iget-object v4, v0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 26378
    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 980
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-direct {v0, v2}, Lcom/jjoe64/graphview/c;->a(Z)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/jjoe64/graphview/c;->b:Z

    return-void
.end method

.method private o()V
    .locals 6

    .line 989
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    iget-object v1, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 27378
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const/4 v2, 0x0

    .line 989
    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v3

    invoke-interface {v0, v3, v4, v2}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 992
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 993
    iget-object v4, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 994
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    .line 995
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->q:Ljava/lang/Integer;

    .line 997
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    iget-object v4, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 28378
    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 997
    invoke-virtual {v4, v2}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v4

    invoke-interface {v0, v4, v5, v2}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1001
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v3, v3, Lcom/jjoe64/graphview/c$b;->r:I

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    .line 1011
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x1

    :goto_1
    if-ge v2, v1, :cond_3

    aget-byte v4, v0, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->q:Ljava/lang/Integer;

    return-void
.end method

.method private p()V
    .locals 6

    .line 1023
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    const/4 v1, 0x0

    .line 1024
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/jjoe64/graphview/c;->s:Ljava/lang/Integer;

    .line 1025
    iput-object v2, p0, Lcom/jjoe64/graphview/c;->t:Ljava/lang/Integer;

    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->c()D

    move-result-wide v2

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->b()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x3fe90e5604189375L    # 0.783

    mul-double v2, v2, v4

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->b()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 1031
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->d()Lcom/jjoe64/graphview/d;

    move-result-object v0

    invoke-interface {v0, v2, v3, v1}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    .line 1032
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1033
    iget-object v3, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1034
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/jjoe64/graphview/c;->s:Ljava/lang/Integer;

    .line 1035
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/jjoe64/graphview/c;->t:Ljava/lang/Integer;

    .line 1039
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-byte v4, v0, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->t:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->a:F

    return v0
.end method

.method public final a(I)V
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput p1, v0, Lcom/jjoe64/graphview/c$b;->d:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1094
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->u:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 29051
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 29378
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 29051
    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v3

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 30378
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 29051
    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide v5, 0x3fe90e5604189375L    # 0.783

    mul-double v3, v3, v5

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 31378
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 29051
    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 29052
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    invoke-interface {v0, v3, v4, v2}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 29056
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 29057
    iget-object v4, p0, Lcom/jjoe64/graphview/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 29058
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/jjoe64/graphview/c;->u:Ljava/lang/Integer;

    .line 29060
    iget-boolean v4, p0, Lcom/jjoe64/graphview/c;->r:Z

    if-nez v4, :cond_3

    .line 29061
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    .line 29065
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x1

    :goto_0
    if-ge v1, v3, :cond_2

    aget-byte v5, v0, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29068
    :cond_2
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    .line 29070
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    .line 29073
    :cond_3
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->n:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 29074
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    iget-object v3, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v3, v3, Lcom/jjoe64/graphview/c$b;->n:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 29075
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v3, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->n:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v0, v3

    .line 29076
    iget-object v3, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v5, v5, Lcom/jjoe64/graphview/c$b;->n:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 29077
    iget-object v3, p0, Lcom/jjoe64/graphview/c;->u:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v5, v3

    iget-object v3, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v3, v3, Lcom/jjoe64/graphview/c$b;->n:F

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    add-int/2addr v1, v0

    .line 29079
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    add-int/2addr v4, v3

    .line 29080
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->u:Ljava/lang/Integer;

    .line 29084
    :cond_4
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->r:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 1098
    :cond_5
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 1099
    invoke-direct {p0}, Lcom/jjoe64/graphview/c;->o()V

    const/4 v1, 0x1

    .line 1102
    :cond_6
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->s:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 1103
    invoke-direct {p0}, Lcom/jjoe64/graphview/c;->p()V

    goto :goto_1

    :cond_7
    move v2, v1

    :goto_1
    if-eqz v2, :cond_8

    .line 1108
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/GraphView;->a(Landroid/graphics/Canvas;)V

    return-void

    .line 1112
    :cond_8
    iget-boolean v0, p0, Lcom/jjoe64/graphview/c;->b:Z

    if-nez v0, :cond_9

    .line 1113
    invoke-direct {p0}, Lcom/jjoe64/graphview/c;->n()V

    .line 1116
    :cond_9
    iget-boolean v0, p0, Lcom/jjoe64/graphview/c;->b:Z

    if-eqz v0, :cond_c

    .line 1117
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/c;->d(Landroid/graphics/Canvas;)V

    .line 1118
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/c;->c(Landroid/graphics/Canvas;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/c;->b(Landroid/graphics/Canvas;)V

    .line 32140
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->w:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 32141
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    .line 32655
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->m:I

    .line 32141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32142
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    .line 33641
    iget-object v1, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->l:F

    .line 32142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 32144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 32145
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34155
    :cond_a
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->x:Ljava/lang/String;

    const/high16 v1, -0x3d4c0000    # -90.0f

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 34156
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    .line 34627
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->k:I

    .line 34156
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34157
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    .line 35613
    iget-object v2, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v2, v2, Lcom/jjoe64/graphview/c$b;->j:F

    .line 34157
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34158
    invoke-virtual {p0}, Lcom/jjoe64/graphview/c;->d()I

    move-result v0

    int-to-float v0, v0

    .line 34159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 34160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34161
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 34162
    iget-object v3, p0, Lcom/jjoe64/graphview/c;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/jjoe64/graphview/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1129
    :cond_b
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v0, :cond_c

    .line 1130
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    .line 36311
    iget-object v2, v0, Lcom/jjoe64/graphview/h;->i:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/jjoe64/graphview/h;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 36312
    iget-object v2, v0, Lcom/jjoe64/graphview/h;->h:Landroid/graphics/Paint;

    .line 37295
    iget v3, v0, Lcom/jjoe64/graphview/h;->k:I

    .line 36312
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36313
    iget-object v2, v0, Lcom/jjoe64/graphview/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->f()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->f()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 36315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 36316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36317
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 36318
    iget-object v1, v0, Lcom/jjoe64/graphview/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/jjoe64/graphview/h;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 36319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/d;)V
    .locals 1

    .line 1577
    iput-object p1, p0, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    .line 1578
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->h:Lcom/jjoe64/graphview/GraphView;

    .line 50498
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 1578
    invoke-interface {p1, v0}, Lcom/jjoe64/graphview/d;->a(Lcom/jjoe64/graphview/j;)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    const/4 p2, 0x0

    .line 546
    iput-boolean p2, p0, Lcom/jjoe64/graphview/c;->b:Z

    if-nez p1, :cond_1

    .line 549
    iget-boolean p1, p0, Lcom/jjoe64/graphview/c;->p:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 550
    iput-object p2, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    .line 552
    :cond_0
    iput-object p2, p0, Lcom/jjoe64/graphview/c;->q:Ljava/lang/Integer;

    .line 553
    iput-object p2, p0, Lcom/jjoe64/graphview/c;->s:Ljava/lang/Integer;

    .line 554
    iput-object p2, p0, Lcom/jjoe64/graphview/c;->t:Ljava/lang/Integer;

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->f:I

    return v0
.end method

.method public final b(I)V
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput p1, v0, Lcom/jjoe64/graphview/c$b;->f:I

    return-void
.end method

.method public final c()I
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 37641
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->l:F

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iput p1, v0, Lcom/jjoe64/graphview/c$b;->g:I

    .line 1546
    invoke-direct {p0}, Lcom/jjoe64/graphview/c;->l()V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 38613
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->j:F

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/jjoe64/graphview/c$b;
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    return-object v0
.end method

.method public final f()I
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->s:I

    sget v1, Lcom/jjoe64/graphview/c$c;->a:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->s:I

    sget v1, Lcom/jjoe64/graphview/c$c;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 50496
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v0, v0, Lcom/jjoe64/graphview/c$b;->p:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public final g()I
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 50497
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v0, v0, Lcom/jjoe64/graphview/c$b;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->g:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget-boolean v0, v0, Lcom/jjoe64/graphview/c$b;->h:Z

    return v0
.end method

.method public final j()V
    .locals 2

    .line 1509
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    const/high16 v1, 0x41e00000    # 28.0f

    iput v1, v0, Lcom/jjoe64/graphview/c$b;->a:F

    .line 1510
    invoke-direct {p0}, Lcom/jjoe64/graphview/c;->l()V

    return-void
.end method

.method public final k()I
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/jjoe64/graphview/c;->s:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
