.class Landroidx/k/a/a/i$c;
.super Landroidx/k/a/a/i$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/k/a/a/i$d;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field final d:Landroid/graphics/Matrix;

.field e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1506
    invoke-direct {p0, v3}, Landroidx/k/a/a/i$d;-><init>(Landroidx/k/a/a/i$1;)V

    .line 1445
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$c;->a:Landroid/graphics/Matrix;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    .line 1451
    iput v1, p0, Landroidx/k/a/a/i$c;->c:F

    .line 1452
    iput v1, p0, Landroidx/k/a/a/i$c;->f:F

    .line 1453
    iput v1, p0, Landroidx/k/a/a/i$c;->g:F

    .line 1454
    iput v2, p0, Landroidx/k/a/a/i$c;->h:F

    .line 1455
    iput v2, p0, Landroidx/k/a/a/i$c;->i:F

    .line 1456
    iput v1, p0, Landroidx/k/a/a/i$c;->j:F

    .line 1457
    iput v1, p0, Landroidx/k/a/a/i$c;->k:F

    .line 1461
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    .line 1464
    iput-object v3, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    .line 1507
    return-void
.end method

.method public constructor <init>(Landroidx/k/a/a/i$c;Landroidx/b/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/k/a/a/i$c;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1466
    invoke-direct {p0, v3}, Landroidx/k/a/a/i$d;-><init>(Landroidx/k/a/a/i$1;)V

    .line 1445
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$c;->a:Landroid/graphics/Matrix;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    .line 1451
    iput v1, p0, Landroidx/k/a/a/i$c;->c:F

    .line 1452
    iput v1, p0, Landroidx/k/a/a/i$c;->f:F

    .line 1453
    iput v1, p0, Landroidx/k/a/a/i$c;->g:F

    .line 1454
    iput v2, p0, Landroidx/k/a/a/i$c;->h:F

    .line 1455
    iput v2, p0, Landroidx/k/a/a/i$c;->i:F

    .line 1456
    iput v1, p0, Landroidx/k/a/a/i$c;->j:F

    .line 1457
    iput v1, p0, Landroidx/k/a/a/i$c;->k:F

    .line 1461
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    .line 1464
    iput-object v3, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    .line 1467
    iget v0, p1, Landroidx/k/a/a/i$c;->c:F

    iput v0, p0, Landroidx/k/a/a/i$c;->c:F

    .line 1468
    iget v0, p1, Landroidx/k/a/a/i$c;->f:F

    iput v0, p0, Landroidx/k/a/a/i$c;->f:F

    .line 1469
    iget v0, p1, Landroidx/k/a/a/i$c;->g:F

    iput v0, p0, Landroidx/k/a/a/i$c;->g:F

    .line 1470
    iget v0, p1, Landroidx/k/a/a/i$c;->h:F

    iput v0, p0, Landroidx/k/a/a/i$c;->h:F

    .line 1471
    iget v0, p1, Landroidx/k/a/a/i$c;->i:F

    iput v0, p0, Landroidx/k/a/a/i$c;->i:F

    .line 1472
    iget v0, p1, Landroidx/k/a/a/i$c;->j:F

    iput v0, p0, Landroidx/k/a/a/i$c;->j:F

    .line 1473
    iget v0, p1, Landroidx/k/a/a/i$c;->k:F

    iput v0, p0, Landroidx/k/a/a/i$c;->k:F

    .line 1474
    iget-object v0, p1, Landroidx/k/a/a/i$c;->l:[I

    iput-object v0, p0, Landroidx/k/a/a/i$c;->l:[I

    .line 1475
    iget-object v0, p1, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    .line 1476
    iget v0, p1, Landroidx/k/a/a/i$c;->e:I

    iput v0, p0, Landroidx/k/a/a/i$c;->e:I

    .line 1477
    iget-object v0, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1483
    iget-object v3, p1, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    .line 1484
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1485
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1486
    instance-of v2, v0, Landroidx/k/a/a/i$c;

    if-eqz v2, :cond_2

    .line 1487
    check-cast v0, Landroidx/k/a/a/i$c;

    .line 1488
    iget-object v2, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    new-instance v4, Landroidx/k/a/a/i$c;

    invoke-direct {v4, v0, p2}, Landroidx/k/a/a/i$c;-><init>(Landroidx/k/a/a/i$c;Landroidx/b/a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1491
    :cond_2
    instance-of v2, v0, Landroidx/k/a/a/i$b;

    if-eqz v2, :cond_3

    .line 1492
    new-instance v2, Landroidx/k/a/a/i$b;

    check-cast v0, Landroidx/k/a/a/i$b;

    invoke-direct {v2, v0}, Landroidx/k/a/a/i$b;-><init>(Landroidx/k/a/a/i$b;)V

    move-object v0, v2

    .line 1498
    :goto_2
    iget-object v2, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    iget-object v2, v0, Landroidx/k/a/a/i$e;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1500
    iget-object v2, v0, Landroidx/k/a/a/i$e;->m:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1493
    :cond_3
    instance-of v2, v0, Landroidx/k/a/a/i$a;

    if-eqz v2, :cond_4

    .line 1494
    new-instance v2, Landroidx/k/a/a/i$a;

    check-cast v0, Landroidx/k/a/a/i$a;

    invoke-direct {v2, v0}, Landroidx/k/a/a/i$a;-><init>(Landroidx/k/a/a/i$a;)V

    move-object v0, v2

    goto :goto_2

    .line 1496
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_5
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1563
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1564
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/k/a/a/i$c;->f:F

    neg-float v1, v1

    iget v2, p0, Landroidx/k/a/a/i$c;->g:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1565
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/k/a/a/i$c;->h:F

    iget v2, p0, Landroidx/k/a/a/i$c;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1566
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/k/a/a/i$c;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1567
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/k/a/a/i$c;->j:F

    iget v2, p0, Landroidx/k/a/a/i$c;->f:F

    add-float/2addr v1, v2

    iget v2, p0, Landroidx/k/a/a/i$c;->k:F

    iget v3, p0, Landroidx/k/a/a/i$c;->g:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1568
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 1529
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/k/a/a/i$c;->l:[I

    .line 1532
    const-string/jumbo v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroidx/k/a/a/i$c;->c:F

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->c:F

    .line 1535
    const/4 v0, 0x1

    iget v1, p0, Landroidx/k/a/a/i$c;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->f:F

    .line 1536
    const/4 v0, 0x2

    iget v1, p0, Landroidx/k/a/a/i$c;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->g:F

    .line 1539
    const-string/jumbo v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroidx/k/a/a/i$c;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->h:F

    .line 1543
    const-string/jumbo v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroidx/k/a/a/i$c;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->i:F

    .line 1546
    const-string/jumbo v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroidx/k/a/a/i$c;->j:F

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->j:F

    .line 1548
    const-string/jumbo v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroidx/k/a/a/i$c;->k:F

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$c;->k:F

    .line 1551
    const/4 v0, 0x0

    .line 1552
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1553
    if-eqz v0, :cond_0

    .line 1554
    iput-object v0, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    .line 1557
    :cond_0
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1558
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1518
    sget-object v0, Landroidx/k/a/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1520
    invoke-direct {p0, v0, p4}, Landroidx/k/a/a/i$c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1521
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1522
    return-void
.end method

.method public a([I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1674
    move v1, v0

    move v2, v0

    .line 1675
    :goto_0
    iget-object v0, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1676
    iget-object v0, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i$d;

    invoke-virtual {v0, p1}, Landroidx/k/a/a/i$d;->a([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1675
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1678
    :cond_0
    return v2
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1664
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1665
    iget-object v0, p0, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i$d;

    invoke-virtual {v0}, Landroidx/k/a/a/i$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    const/4 v2, 0x1

    .line 1669
    :cond_0
    return v2

    .line 1664
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Landroidx/k/a/a/i$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 1586
    iget v0, p0, Landroidx/k/a/a/i$c;->f:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 1599
    iget v0, p0, Landroidx/k/a/a/i$c;->g:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1573
    iget v0, p0, Landroidx/k/a/a/i$c;->c:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1612
    iget v0, p0, Landroidx/k/a/a/i$c;->h:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1625
    iget v0, p0, Landroidx/k/a/a/i$c;->i:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1638
    iget v0, p0, Landroidx/k/a/a/i$c;->j:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1651
    iget v0, p0, Landroidx/k/a/a/i$c;->k:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .prologue
    .line 1591
    iget v0, p0, Landroidx/k/a/a/i$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1592
    iput p1, p0, Landroidx/k/a/a/i$c;->f:F

    .line 1593
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1595
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .prologue
    .line 1604
    iget v0, p0, Landroidx/k/a/a/i$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1605
    iput p1, p0, Landroidx/k/a/a/i$c;->g:F

    .line 1606
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1608
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .prologue
    .line 1578
    iget v0, p0, Landroidx/k/a/a/i$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1579
    iput p1, p0, Landroidx/k/a/a/i$c;->c:F

    .line 1580
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1582
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Landroidx/k/a/a/i$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1618
    iput p1, p0, Landroidx/k/a/a/i$c;->h:F

    .line 1619
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1621
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .prologue
    .line 1630
    iget v0, p0, Landroidx/k/a/a/i$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1631
    iput p1, p0, Landroidx/k/a/a/i$c;->i:F

    .line 1632
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1634
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .prologue
    .line 1643
    iget v0, p0, Landroidx/k/a/a/i$c;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1644
    iput p1, p0, Landroidx/k/a/a/i$c;->j:F

    .line 1645
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1647
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Landroidx/k/a/a/i$c;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1657
    iput p1, p0, Landroidx/k/a/a/i$c;->k:F

    .line 1658
    invoke-direct {p0}, Landroidx/k/a/a/i$c;->a()V

    .line 1660
    :cond_0
    return-void
.end method
