.class final Landroidx/core/a/a/d;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/a/a/d$a;
    }
.end annotation


# direct methods
.method private static a(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 202
    packed-switch p0, :pswitch_data_0

    .line 209
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 206
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 19

    .prologue
    .line 90
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string/jumbo v4, "gradient"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": invalid gradient color tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_0
    sget-object v3, Landroidx/core/a$d;->GradientColor:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 98
    const-string/jumbo v4, "startX"

    sget v5, Landroidx/core/a$d;->GradientColor_android_startX:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4, v5, v6}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    .line 100
    const-string/jumbo v4, "startY"

    sget v5, Landroidx/core/a$d;->GradientColor_android_startY:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4, v5, v6}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    .line 102
    const-string/jumbo v4, "endX"

    sget v5, Landroidx/core/a$d;->GradientColor_android_endX:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4, v5, v6}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    .line 104
    const-string/jumbo v4, "endY"

    sget v5, Landroidx/core/a$d;->GradientColor_android_endY:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4, v5, v6}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 106
    const-string/jumbo v4, "centerX"

    sget v5, Landroidx/core/a$d;->GradientColor_android_centerX:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4, v5, v6}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v4

    .line 108
    const-string/jumbo v5, "centerY"

    sget v6, Landroidx/core/a$d;->GradientColor_android_centerY:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v5, v6, v8}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    .line 110
    const-string/jumbo v6, "type"

    sget v8, Landroidx/core/a$d;->GradientColor_android_type:I

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v6, v8, v9}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 112
    const-string/jumbo v6, "startColor"

    sget v9, Landroidx/core/a$d;->GradientColor_android_startColor:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v6, v9, v10}, Landroidx/core/a/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    .line 114
    const-string/jumbo v6, "centerColor"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroidx/core/a/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 115
    const-string/jumbo v6, "centerColor"

    sget v14, Landroidx/core/a$d;->GradientColor_android_centerColor:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0, v6, v14, v15}, Landroidx/core/a/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v14

    .line 117
    const-string/jumbo v6, "endColor"

    sget v15, Landroidx/core/a$d;->GradientColor_android_endColor:I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v3, v0, v6, v15, v1}, Landroidx/core/a/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v15

    .line 119
    const-string/jumbo v6, "tileMode"

    sget v16, Landroidx/core/a$d;->GradientColor_android_tileMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v3, v0, v6, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v16

    .line 121
    const-string/jumbo v6, "gradientRadius"

    sget v17, Landroidx/core/a$d;->GradientColor_android_gradientRadius:I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v3, v0, v6, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 123
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Landroidx/core/a/a/d;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/a/a/d$a;

    move-result-object v3

    .line 126
    invoke-static {v3, v9, v15, v10, v14}, Landroidx/core/a/a/d;->a(Landroidx/core/a/a/d$a;IIZI)Landroidx/core/a/a/d$a;

    move-result-object v9

    .line 128
    packed-switch v8, :pswitch_data_0

    .line 141
    new-instance v3, Landroid/graphics/LinearGradient;

    iget-object v8, v9, Landroidx/core/a/a/d$a;->a:[I

    iget-object v9, v9, Landroidx/core/a/a/d$a;->b:[F

    .line 142
    invoke-static/range {v16 .. v16}, Landroidx/core/a/a/d;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object v10

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 141
    :goto_0
    return-object v3

    .line 130
    :pswitch_0
    const/4 v3, 0x0

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_1

    .line 131
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_1
    new-instance v3, Landroid/graphics/RadialGradient;

    iget-object v7, v9, Landroidx/core/a/a/d$a;->a:[I

    iget-object v8, v9, Landroidx/core/a/a/d$a;->b:[F

    .line 135
    invoke-static/range {v16 .. v16}, Landroidx/core/a/a/d;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v6, v9, Landroidx/core/a/a/d$a;->a:[I

    iget-object v7, v9, Landroidx/core/a/a/d$a;->b:[F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroidx/core/a/a/d$a;IIZI)Landroidx/core/a/a/d$a;
    .locals 0

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 197
    :goto_0
    return-object p0

    .line 194
    :cond_0
    if-eqz p3, :cond_1

    .line 195
    new-instance p0, Landroidx/core/a/a/d$a;

    invoke-direct {p0, p1, p4, p2}, Landroidx/core/a/a/d$a;-><init>(III)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance p0, Landroidx/core/a/a/d$a;

    invoke-direct {p0, p1, p2}, Landroidx/core/a/a/d$a;-><init>(II)V

    goto :goto_0
.end method

.method private static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/a/a/d$a;
    .locals 7

    .prologue
    const/16 v3, 0x14

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v0, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    .line 160
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 163
    if-gt v4, v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    sget-object v3, Landroidx/core/a$d;->GradientColorItem:[I

    invoke-static {p0, p3, p2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 169
    sget v4, Landroidx/core/a$d;->GradientColorItem_android_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 170
    sget v5, Landroidx/core/a$d;->GradientColorItem_android_offset:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    .line 171
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 172
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3
    sget v4, Landroidx/core/a$d;->GradientColorItem_android_color:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 179
    sget v5, Landroidx/core/a$d;->GradientColorItem_android_offset:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 180
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Landroidx/core/a/a/d$a;

    invoke-direct {v0, v2, v1}, Landroidx/core/a/a/d$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 186
    :goto_1
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method
