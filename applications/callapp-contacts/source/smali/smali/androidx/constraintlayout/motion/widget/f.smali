.class public abstract Landroidx/constraintlayout/motion/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/f$c;,
        Landroidx/constraintlayout/motion/widget/f$f;,
        Landroidx/constraintlayout/motion/widget/f$b;,
        Landroidx/constraintlayout/motion/widget/f$n;,
        Landroidx/constraintlayout/motion/widget/f$m;,
        Landroidx/constraintlayout/motion/widget/f$l;,
        Landroidx/constraintlayout/motion/widget/f$k;,
        Landroidx/constraintlayout/motion/widget/f$j;,
        Landroidx/constraintlayout/motion/widget/f$e;,
        Landroidx/constraintlayout/motion/widget/f$i;,
        Landroidx/constraintlayout/motion/widget/f$h;,
        Landroidx/constraintlayout/motion/widget/f$g;,
        Landroidx/constraintlayout/motion/widget/f$a;,
        Landroidx/constraintlayout/motion/widget/f$d;,
        Landroidx/constraintlayout/motion/widget/f$o;
    }
.end annotation


# instance fields
.field protected a:Landroidx/constraintlayout/widget/a;

.field b:Ljava/lang/String;

.field c:I

.field public d:I

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/f$o;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/constraintlayout/motion/a/b;

.field private g:Landroidx/constraintlayout/motion/widget/f$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/f;->c:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/f;->d:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/f;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 7

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f;->g:Landroidx/constraintlayout/motion/widget/f$c;

    .line 1437
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/f$c;->h:Landroidx/constraintlayout/motion/a/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1438
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/f$c;->h:Landroidx/constraintlayout/motion/a/b;

    float-to-double v4, p1

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    invoke-virtual {v1, v4, v5, v6}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    goto :goto_0

    .line 1440
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/f$c;->e:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v1, v3

    .line 1441
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v1, v2

    .line 1443
    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    aget-wide v3, v1, v3

    .line 1444
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    float-to-double v5, p1

    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/motion/a/f;->a(D)D

    move-result-wide v5

    .line 1445
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    aget-wide v0, p1, v2

    mul-double v5, v5, v0

    add-double/2addr v3, v5

    double-to-float p1, v3

    return p1
.end method

.method public final a(IIIFFFLandroidx/constraintlayout/widget/a;)V
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f;->e:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/f$o;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/f$o;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 148
    iput p3, p0, Landroidx/constraintlayout/motion/widget/f;->d:I

    .line 150
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/f;->c:I

    .line 151
    iput-object p7, p0, Landroidx/constraintlayout/motion/widget/f;->a:Landroidx/constraintlayout/widget/a;

    return-void
.end method

.method public abstract a(Landroid/view/View;F)V
.end method

.method public final b(F)F
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f;->g:Landroidx/constraintlayout/motion/widget/f$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/f$c;->a(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final c(F)V
    .locals 23

    move-object/from16 v0, p0

    .line 173
    const-class v1, D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/f;->e:Ljava/util/ArrayList;

    new-instance v4, Landroidx/constraintlayout/motion/widget/f$1;

    invoke-direct {v4, v0}, Landroidx/constraintlayout/motion/widget/f$1;-><init>(Landroidx/constraintlayout/motion/widget/f;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v3, v2, [D

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v7, 0x0

    aput v2, v5, v7

    .line 184
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 185
    new-instance v8, Landroidx/constraintlayout/motion/widget/f$c;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/f;->c:I

    iget v10, v0, Landroidx/constraintlayout/motion/widget/f;->d:I

    invoke-direct {v8, v9, v10, v2}, Landroidx/constraintlayout/motion/widget/f$c;-><init>(III)V

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/f;->g:Landroidx/constraintlayout/motion/widget/f$c;

    .line 187
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/f$o;

    .line 188
    iget v10, v9, Landroidx/constraintlayout/motion/widget/f$o;->d:F

    float-to-double v10, v10

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double v10, v10, v12

    aput-wide v10, v3, v8

    .line 189
    aget-object v10, v5, v8

    iget v11, v9, Landroidx/constraintlayout/motion/widget/f$o;->b:F

    float-to-double v11, v11

    aput-wide v11, v10, v7

    .line 190
    aget-object v10, v5, v8

    iget v11, v9, Landroidx/constraintlayout/motion/widget/f$o;->c:F

    float-to-double v11, v11

    aput-wide v11, v10, v6

    .line 191
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/f;->g:Landroidx/constraintlayout/motion/widget/f$c;

    iget v11, v9, Landroidx/constraintlayout/motion/widget/f$o;->a:I

    iget v12, v9, Landroidx/constraintlayout/motion/widget/f$o;->d:F

    iget v13, v9, Landroidx/constraintlayout/motion/widget/f$o;->c:F

    iget v9, v9, Landroidx/constraintlayout/motion/widget/f$o;->b:F

    .line 1486
    iget-object v14, v10, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    move-object/from16 v16, v5

    int-to-double v4, v11

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v4, v4, v17

    aput-wide v4, v14, v8

    .line 1487
    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/f$c;->d:[F

    aput v12, v4, v8

    .line 1488
    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/f$c;->e:[F

    aput v13, v4, v8

    .line 1489
    iget-object v4, v10, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    aput v9, v4, v8

    add-int/2addr v8, v6

    move-object/from16 v5, v16

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v16, v5

    .line 194
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/f;->g:Landroidx/constraintlayout/motion/widget/f$c;

    move/from16 v4, p1

    .line 1493
    iput v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->k:F

    .line 1494
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    array-length v4, v4

    const/4 v5, 0x2

    new-array v8, v5, [I

    aput v5, v8, v6

    aput v4, v8, v7

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1495
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    array-length v4, v4

    add-int/2addr v4, v6

    new-array v4, v4, [D

    iput-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    .line 1496
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    array-length v4, v4

    add-int/2addr v4, v6

    new-array v4, v4, [D

    iput-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->j:[D

    .line 1497
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    aget-wide v8, v4, v7

    const-wide/16 v4, 0x0

    cmpl-double v10, v8, v4

    if-lez v10, :cond_2

    .line 1498
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/f$c;->d:[F

    aget v9, v9, v7

    invoke-virtual {v8, v4, v5, v9}, Landroidx/constraintlayout/motion/a/f;->a(DF)V

    .line 1500
    :cond_2
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    array-length v8, v8

    sub-int/2addr v8, v6

    .line 1501
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    aget-wide v10, v9, v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_3

    .line 1502
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/f$c;->d:[F

    aget v8, v10, v8

    invoke-virtual {v9, v12, v13, v8}, Landroidx/constraintlayout/motion/a/f;->a(DF)V

    :cond_3
    const/4 v8, 0x0

    .line 1504
    :goto_1
    array-length v9, v1

    if-ge v8, v9, :cond_5

    .line 1505
    aget-object v9, v1, v8

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/f$c;->e:[F

    aget v10, v10, v8

    float-to-double v10, v10

    aput-wide v10, v9, v7

    const/4 v9, 0x0

    .line 1506
    :goto_2
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    array-length v10, v10

    if-ge v9, v10, :cond_4

    .line 1507
    aget-object v10, v1, v9

    iget-object v11, v2, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    aget v11, v11, v9

    float-to-double v11, v11

    aput-wide v11, v10, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1509
    :cond_4
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    aget-wide v11, v10, v8

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/f$c;->d:[F

    aget v10, v10, v8

    invoke-virtual {v9, v11, v12, v10}, Landroidx/constraintlayout/motion/a/f;->a(DF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1512
    :cond_5
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    move-wide v10, v4

    const/4 v9, 0x0

    .line 2074
    :goto_3
    iget-object v12, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    array-length v12, v12

    if-ge v9, v12, :cond_6

    .line 2075
    iget-object v12, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    aget v12, v12, v9

    float-to-double v12, v12

    add-double/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move-wide v12, v4

    const/4 v9, 0x1

    .line 2077
    :goto_4
    iget-object v14, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    array-length v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v9, v14, :cond_7

    .line 2078
    iget-object v14, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    add-int/lit8 v17, v9, -0x1

    aget v14, v14, v17

    iget-object v6, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    aget v6, v6, v9

    add-float/2addr v14, v6

    div-float/2addr v14, v15

    .line 2079
    iget-object v6, v8, Landroidx/constraintlayout/motion/a/f;->c:[D

    aget-wide v19, v6, v9

    iget-object v6, v8, Landroidx/constraintlayout/motion/a/f;->c:[D

    aget-wide v21, v6, v17

    sub-double v19, v19, v21

    float-to-double v14, v14

    mul-double v19, v19, v14

    add-double v12, v12, v19

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 2083
    :goto_5
    iget-object v9, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    array-length v9, v9

    if-ge v6, v9, :cond_8

    .line 2084
    iget-object v9, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    aget v14, v9, v6

    float-to-double v4, v14

    div-double v21, v10, v12

    mul-double v4, v4, v21

    double-to-float v4, v4

    aput v4, v9, v6

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_5

    .line 2086
    :cond_8
    iget-object v4, v8, Landroidx/constraintlayout/motion/a/f;->d:[D

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v7

    const/4 v4, 0x1

    .line 2087
    :goto_6
    iget-object v5, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 2088
    iget-object v5, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    iget-object v9, v8, Landroidx/constraintlayout/motion/a/f;->b:[F

    aget v9, v9, v4

    add-float/2addr v5, v9

    div-float/2addr v5, v15

    .line 2089
    iget-object v9, v8, Landroidx/constraintlayout/motion/a/f;->c:[D

    aget-wide v10, v9, v4

    iget-object v9, v8, Landroidx/constraintlayout/motion/a/f;->c:[D

    aget-wide v12, v9, v6

    sub-double/2addr v10, v12

    .line 2090
    iget-object v9, v8, Landroidx/constraintlayout/motion/a/f;->d:[D

    aget-wide v12, v9, v6

    float-to-double v5, v5

    mul-double v10, v10, v5

    add-double/2addr v12, v10

    aput-wide v12, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    .line 2092
    iput-boolean v4, v8, Landroidx/constraintlayout/motion/a/f;->g:Z

    .line 1513
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    array-length v5, v5

    if-le v5, v4, :cond_a

    .line 1514
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    invoke-static {v7, v4, v1}, Landroidx/constraintlayout/motion/a/b;->a(I[D[[D)Landroidx/constraintlayout/motion/a/b;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/f$c;->h:Landroidx/constraintlayout/motion/a/b;

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    .line 1516
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/f$c;->h:Landroidx/constraintlayout/motion/a/b;

    :goto_7
    move-object/from16 v5, v16

    .line 195
    invoke-static {v7, v3, v5}, Landroidx/constraintlayout/motion/a/b;->a(I[D[[D)Landroidx/constraintlayout/motion/a/b;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/f;->f:Landroidx/constraintlayout/motion/a/b;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f;->b:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/f$o;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroidx/constraintlayout/motion/widget/f$o;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroidx/constraintlayout/motion/widget/f$o;->b:F

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
