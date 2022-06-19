.class public final Le0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Le0/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {p0, p1, v0, p2}, Le0/b;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "selector"

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x14

    new-array v6, v5, [[I

    new-array v5, v5, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_22

    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v3, :cond_0

    if-eq v9, v11, :cond_22

    :cond_0
    const/4 v12, 0x2

    if-ne v9, v12, :cond_21

    if-gt v10, v3, :cond_21

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_19

    .line 7
    :cond_1
    sget-object v9, Li4/d;->b:[I

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    :goto_1
    const/4 v10, -0x1

    .line 10
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v14, -0xff01

    if-eq v13, v10, :cond_5

    .line 11
    sget-object v10, Le0/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/TypedValue;

    if-nez v15, :cond_3

    .line 12
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 13
    invoke-virtual {v10, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    :cond_3
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 15
    iget v10, v15, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1c

    if-lt v10, v15, :cond_4

    const/16 v15, 0x1f

    if-gt v10, v15, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_5

    .line 16
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v0, v10, v2}, Le0/b;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 17
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 19
    :goto_3
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v10, :cond_6

    .line 20
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 22
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_4

    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    :goto_4
    invoke-static {}, Li0/a;->a()Z

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, 0x4

    if-eqz v10, :cond_8

    .line 24
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 25
    invoke-virtual {v9, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    goto :goto_5

    .line 26
    :cond_8
    invoke-virtual {v9, v13, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 27
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 29
    new-array v11, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v12, v9, :cond_b

    .line 30
    invoke-interface {v1, v12}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v14

    const v15, 0x10101a5

    if-eq v14, v15, :cond_a

    const v15, 0x101031f

    if-eq v14, v15, :cond_a

    const v15, 0x7f040030

    if-eq v14, v15, :cond_a

    const v15, 0x7f04024b

    if-eq v14, v15, :cond_a

    add-int/lit8 v15, v13, 0x1

    const/4 v0, 0x0

    .line 31
    invoke-interface {v1, v12, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    neg-int v14, v14

    .line 32
    :goto_7
    aput v14, v11, v13

    move v13, v15

    :cond_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 33
    :cond_b
    invoke-static {v11, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-ltz v12, :cond_c

    cmpg-float v9, v10, v9

    if-gtz v9, :cond_c

    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    :goto_8
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v4, v12

    if-nez v12, :cond_d

    if-nez v9, :cond_d

    move-object/from16 v18, v0

    move/from16 v21, v3

    move-object v9, v5

    move-object v11, v6

    goto/16 :goto_14

    .line 34
    :cond_d
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v12, v4

    float-to-int v4, v12

    const/16 v12, 0xff

    const/4 v13, 0x0

    .line 35
    invoke-static {v4, v13, v12}, Lb0/a;->d(III)I

    move-result v4

    if-eqz v9, :cond_1c

    .line 36
    invoke-static {v7}, Le0/a;->a(I)Le0/a;

    move-result-object v7

    .line 37
    iget v9, v7, Le0/a;->a:F

    .line 38
    iget v7, v7, Le0/a;->b:F

    .line 39
    sget-object v12, Le0/i;->k:Le0/i;

    float-to-double v13, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v17, v13, v15

    if-ltz v17, :cond_1b

    .line 40
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-double v13, v13

    const-wide/16 v15, 0x0

    cmpg-double v17, v13, v15

    if-lez v17, :cond_1b

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-double v13, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    cmpl-double v17, v13, v15

    if-ltz v17, :cond_e

    goto/16 :goto_12

    :cond_e
    cmpg-float v11, v9, v11

    if-gez v11, :cond_f

    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    const/high16 v11, 0x43b40000    # 360.0f

    .line 41
    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_9
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v13, v11

    const/4 v14, 0x1

    const/4 v15, 0x0

    move v11, v7

    :goto_a
    sub-float v16, v15, v7

    .line 42
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const v17, 0x3ecccccd    # 0.4f

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_19

    const/high16 v16, 0x447a0000    # 1000.0f

    const/high16 v17, 0x447a0000    # 1000.0f

    const/16 v18, 0x0

    const/high16 v19, 0x42c80000    # 100.0f

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    :goto_b
    sub-float v18, v1, v2

    .line 43
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3c23d70a    # 0.01f

    move/from16 v21, v3

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_15

    move-object/from16 v18, v0

    invoke-static {v2, v1, v3, v1}, Landroidx/recyclerview/widget/b;->g(FFFF)F

    move-result v0

    .line 44
    invoke-static {v0, v11, v9}, Le0/a;->b(FFF)Le0/a;

    move-result-object v3

    move/from16 v22, v0

    .line 45
    sget-object v0, Le0/i;->k:Le0/i;

    invoke-virtual {v3, v0}, Le0/a;->c(Le0/i;)I

    move-result v0

    .line 46
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Li4/d;->C(I)F

    move-result v3

    .line 47
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Li4/d;->C(I)F

    move-result v23

    .line 48
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Li4/d;->C(I)F

    move-result v24

    .line 49
    sget-object v25, Li4/d;->k:[[F

    const/16 v26, 0x1

    .line 50
    aget-object v27, v25, v26

    const/16 v28, 0x0

    aget v27, v27, v28

    mul-float v3, v3, v27

    aget-object v27, v25, v26

    aget v27, v27, v26

    mul-float v23, v23, v27

    add-float v23, v23, v3

    aget-object v3, v25, v26

    const/16 v25, 0x2

    aget v3, v3, v25

    mul-float v24, v24, v3

    add-float v24, v24, v23

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v24, v3

    const v23, 0x3c111aa7

    cmpg-float v23, v3, v23

    if-gtz v23, :cond_10

    const v23, 0x4461d2f7

    mul-float v3, v3, v23

    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_c

    :cond_10
    move/from16 v23, v1

    move/from16 v24, v2

    float-to-double v1, v3

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42e80000    # 116.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    sub-float v3, v1, v2

    :goto_c
    sub-float v1, v10, v3

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_11

    .line 53
    invoke-static {v0}, Le0/a;->a(I)Le0/a;

    move-result-object v0

    .line 54
    iget v2, v0, Le0/a;->c:F

    move/from16 v25, v1

    .line 55
    iget v1, v0, Le0/a;->b:F

    .line 56
    invoke-static {v2, v1, v9}, Le0/a;->b(FFF)Le0/a;

    move-result-object v1

    .line 57
    iget v2, v0, Le0/a;->d:F

    move/from16 v26, v9

    iget v9, v1, Le0/a;->d:F

    sub-float/2addr v2, v9

    .line 58
    iget v9, v0, Le0/a;->e:F

    move/from16 v27, v11

    iget v11, v1, Le0/a;->e:F

    sub-float/2addr v9, v11

    .line 59
    iget v11, v0, Le0/a;->f:F

    iget v1, v1, Le0/a;->f:F

    sub-float/2addr v11, v1

    mul-float v2, v2, v2

    mul-float v9, v9, v9

    add-float/2addr v9, v2

    mul-float v11, v11, v11

    add-float/2addr v11, v9

    float-to-double v1, v11

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v28, 0x3ff68f5c28f5c28fL    # 1.41

    move-object v9, v5

    move-object v11, v6

    const-wide v5, 0x3fe428f5c28f5c29L    # 0.63

    .line 61
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v28

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_12

    move-object/from16 v20, v0

    move/from16 v17, v1

    move/from16 v16, v25

    goto :goto_d

    :cond_11
    move/from16 v26, v9

    move/from16 v27, v11

    move-object v9, v5

    move-object v11, v6

    :cond_12
    :goto_d
    const/4 v0, 0x0

    cmpl-float v1, v16, v0

    if-nez v1, :cond_13

    cmpl-float v0, v17, v0

    if-nez v0, :cond_13

    goto :goto_f

    :cond_13
    cmpg-float v0, v3, v10

    if-gez v0, :cond_14

    move/from16 v1, v22

    move/from16 v2, v24

    goto :goto_e

    :cond_14
    move/from16 v2, v22

    move/from16 v1, v23

    :goto_e
    move-object v5, v9

    move-object v6, v11

    move-object/from16 v0, v18

    move/from16 v3, v21

    move/from16 v9, v26

    move/from16 v11, v27

    goto/16 :goto_b

    :cond_15
    move-object/from16 v18, v0

    move/from16 v26, v9

    move/from16 v27, v11

    move-object v9, v5

    move-object v11, v6

    :goto_f
    move-object/from16 v0, v20

    if-eqz v14, :cond_17

    if-eqz v0, :cond_16

    .line 62
    invoke-virtual {v0, v12}, Le0/a;->c(Le0/i;)I

    move-result v7

    goto :goto_13

    :cond_16
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v7, v15, v1, v15}, Landroidx/recyclerview/widget/b;->g(FFFF)F

    move-result v0

    const/4 v14, 0x0

    :goto_10
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v5, v9

    move-object v6, v11

    move/from16 v3, v21

    move/from16 v9, v26

    move v11, v0

    move-object/from16 v0, v18

    goto/16 :goto_a

    :cond_17
    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_18

    move/from16 v7, v27

    goto :goto_11

    :cond_18
    move-object v13, v0

    move/from16 v15, v27

    :goto_11
    invoke-static {v7, v15, v1, v15}, Landroidx/recyclerview/widget/b;->g(FFFF)F

    move-result v0

    goto :goto_10

    :cond_19
    move-object/from16 v18, v0

    move/from16 v21, v3

    move-object v9, v5

    move-object v11, v6

    if-nez v13, :cond_1a

    .line 63
    invoke-static {v10}, Li4/d;->y(F)I

    move-result v7

    goto :goto_13

    .line 64
    :cond_1a
    invoke-virtual {v13, v12}, Le0/a;->c(Le0/i;)I

    move-result v7

    goto :goto_13

    :cond_1b
    :goto_12
    move-object/from16 v18, v0

    move/from16 v21, v3

    move-object v9, v5

    move-object v11, v6

    .line 65
    invoke-static {v10}, Li4/d;->y(F)I

    move-result v7

    goto :goto_13

    :cond_1c
    move-object/from16 v18, v0

    move/from16 v21, v3

    move-object v9, v5

    move-object v11, v6

    :goto_13
    const v0, 0xffffff

    and-int/2addr v0, v7

    shl-int/lit8 v1, v4, 0x18

    or-int v7, v0, v1

    :goto_14
    add-int/lit8 v0, v8, 0x1

    .line 66
    array-length v1, v9

    const/16 v2, 0x8

    if-le v0, v1, :cond_1e

    const/4 v1, 0x4

    if-gt v8, v1, :cond_1d

    const/16 v1, 0x8

    goto :goto_15

    :cond_1d
    mul-int/lit8 v1, v8, 0x2

    .line 67
    :goto_15
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 68
    invoke-static {v9, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v1

    goto :goto_16

    :cond_1e
    move-object v5, v9

    .line 69
    :goto_16
    aput v7, v5, v8

    .line 70
    array-length v1, v11

    if-le v0, v1, :cond_20

    .line 71
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x4

    if-gt v8, v3, :cond_1f

    goto :goto_17

    :cond_1f
    mul-int/lit8 v2, v8, 0x2

    :goto_17
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 72
    invoke-static {v11, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    goto :goto_18

    :cond_20
    move-object v6, v11

    .line 73
    :goto_18
    aput-object v18, v6, v8

    .line 74
    check-cast v6, [[I

    move v8, v0

    goto :goto_1a

    :cond_21
    :goto_19
    move/from16 v21, v3

    move-object v9, v5

    move-object v11, v6

    move-object v5, v9

    move-object v6, v11

    :goto_1a
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v21

    goto/16 :goto_0

    :cond_22
    move-object v9, v5

    move-object v11, v6

    .line 75
    new-array v0, v8, [I

    .line 76
    new-array v1, v8, [[I

    const/4 v2, 0x0

    .line 77
    invoke-static {v9, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-static {v11, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 80
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid color state list tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
