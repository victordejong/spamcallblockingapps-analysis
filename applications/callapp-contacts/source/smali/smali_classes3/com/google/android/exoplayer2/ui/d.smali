.class final Lcom/google/android/exoplayer2/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/d$c;,
        Lcom/google/android/exoplayer2/ui/d$b;,
        Lcom/google/android/exoplayer2/ui/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(&#13;)?&#10;"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ui/d;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/ui/d$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 133
    invoke-interface/range {p0 .. p0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_23

    aget-object v6, v2, v5

    .line 5151
    instance-of v7, v6, Landroid/text/style/StrikethroughSpan;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v7, :cond_0

    const-string v12, "<span style=\'text-decoration:line-through;\'>"

    :goto_1
    move-object/from16 v16, v12

    goto/16 :goto_7

    .line 5153
    :cond_0
    instance-of v12, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v12, :cond_1

    .line 5154
    move-object v12, v6

    check-cast v12, Landroid/text/style/ForegroundColorSpan;

    new-array v13, v11, [Ljava/lang/Object;

    .line 5156
    invoke-virtual {v12}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/ui/b;->a(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v13, v4

    const-string v12, "<span style=\'color:%s;\'>"

    .line 5155
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 5157
    :cond_1
    instance-of v12, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v12, :cond_2

    .line 5158
    move-object v12, v6

    check-cast v12, Landroid/text/style/BackgroundColorSpan;

    new-array v13, v11, [Ljava/lang/Object;

    .line 5159
    invoke-virtual {v12}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v4

    const-string v12, "<span class=\'bg_%s\'>"

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 5160
    :cond_2
    instance-of v12, v6, Lcom/google/android/exoplayer2/text/d/a;

    if-eqz v12, :cond_3

    const-string v12, "<span style=\'text-combine-upright:all;\'>"

    goto :goto_1

    .line 5162
    :cond_3
    instance-of v12, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v12, :cond_5

    .line 5163
    move-object v12, v6

    check-cast v12, Landroid/text/style/AbsoluteSizeSpan;

    .line 5165
    invoke-virtual {v12}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 5166
    invoke-virtual {v12}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v12

    int-to-float v12, v12

    goto :goto_2

    .line 5167
    :cond_4
    invoke-virtual {v12}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, p1

    :goto_2
    new-array v13, v11, [Ljava/lang/Object;

    .line 5168
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v13, v4

    const-string v12, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 5169
    :cond_5
    instance-of v12, v6, Landroid/text/style/RelativeSizeSpan;

    if-eqz v12, :cond_6

    new-array v12, v11, [Ljava/lang/Object;

    .line 5170
    move-object v13, v6

    check-cast v13, Landroid/text/style/RelativeSizeSpan;

    .line 5171
    invoke-virtual {v13}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v4

    const-string v13, "<span style=\'font-size:%.2f%%;\'>"

    .line 5170
    invoke-static {v13, v12}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 5172
    :cond_6
    instance-of v12, v6, Landroid/text/style/TypefaceSpan;

    if-eqz v12, :cond_8

    .line 5173
    move-object v12, v6

    check-cast v12, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v12}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v12, v13, v4

    const-string v12, "<span style=\'font-family:\"%s\";\'>"

    .line 5175
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_7
    :goto_3
    move-object/from16 v16, v9

    goto/16 :goto_7

    .line 5177
    :cond_8
    instance-of v12, v6, Landroid/text/style/StyleSpan;

    if-eqz v12, :cond_c

    .line 5178
    move-object v12, v6

    check-cast v12, Landroid/text/style/StyleSpan;

    invoke-virtual {v12}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v12

    if-eq v12, v11, :cond_b

    if-eq v12, v10, :cond_a

    if-eq v12, v8, :cond_9

    goto :goto_3

    :cond_9
    const-string v12, "<b><i>"

    goto/16 :goto_1

    :cond_a
    const-string v12, "<i>"

    goto/16 :goto_1

    :cond_b
    const-string v12, "<b>"

    goto/16 :goto_1

    .line 5188
    :cond_c
    instance-of v12, v6, Lcom/google/android/exoplayer2/text/d/b;

    if-eqz v12, :cond_10

    .line 5189
    move-object v12, v6

    check-cast v12, Lcom/google/android/exoplayer2/text/d/b;

    .line 5190
    iget v12, v12, Lcom/google/android/exoplayer2/text/d/b;->b:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_f

    if-eq v12, v11, :cond_e

    if-eq v12, v10, :cond_d

    goto :goto_3

    :cond_d
    const-string v12, "<ruby style=\'ruby-position:under;\'>"

    goto/16 :goto_1

    :cond_e
    const-string v12, "<ruby style=\'ruby-position:over;\'>"

    goto/16 :goto_1

    :cond_f
    const-string v12, "<ruby style=\'ruby-position:unset;\'>"

    goto/16 :goto_1

    .line 5200
    :cond_10
    instance-of v12, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v12, :cond_11

    const-string v12, "<u>"

    goto/16 :goto_1

    .line 5202
    :cond_11
    instance-of v12, v6, Lcom/google/android/exoplayer2/text/d/d;

    if-eqz v12, :cond_7

    .line 5203
    move-object v12, v6

    check-cast v12, Lcom/google/android/exoplayer2/text/d/d;

    .line 5204
    iget v13, v12, Lcom/google/android/exoplayer2/text/d/d;->a:I

    iget v14, v12, Lcom/google/android/exoplayer2/text/d/d;->b:I

    .line 5249
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eq v14, v11, :cond_13

    if-eq v14, v10, :cond_12

    goto :goto_4

    :cond_12
    const-string v14, "open "

    .line 5255
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    const-string v14, "filled "

    .line 5252
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz v13, :cond_17

    if-eq v13, v11, :cond_16

    if-eq v13, v10, :cond_15

    if-eq v13, v8, :cond_14

    const-string v13, "unset"

    .line 5276
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_14
    const-string v13, "sesame"

    .line 5270
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_15
    const-string v13, "dot"

    .line 5267
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_16
    const-string v13, "circle"

    .line 5264
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_17
    const-string v13, "none"

    .line 5273
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5279
    :goto_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 5205
    iget v12, v12, Lcom/google/android/exoplayer2/text/d/d;->c:I

    if-eq v12, v10, :cond_18

    const-string v12, "over right"

    goto :goto_6

    :cond_18
    const-string v12, "under left"

    :goto_6
    new-array v14, v10, [Ljava/lang/Object;

    aput-object v13, v14, v4

    aput-object v12, v14, v11

    const-string v12, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 5206
    invoke-static {v12, v14}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :goto_7
    const-string v12, "</span>"

    if-nez v7, :cond_21

    .line 6218
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_21

    instance-of v7, v6, Landroid/text/style/BackgroundColorSpan;

    if-nez v7, :cond_21

    instance-of v7, v6, Lcom/google/android/exoplayer2/text/d/a;

    if-nez v7, :cond_21

    instance-of v7, v6, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v7, :cond_21

    instance-of v7, v6, Landroid/text/style/RelativeSizeSpan;

    if-nez v7, :cond_21

    instance-of v7, v6, Lcom/google/android/exoplayer2/text/d/d;

    if-eqz v7, :cond_19

    goto :goto_9

    .line 6226
    :cond_19
    instance-of v7, v6, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_1b

    .line 6227
    move-object v7, v6

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    goto :goto_9

    :cond_1a
    :goto_8
    move-object/from16 v17, v9

    goto :goto_a

    .line 6229
    :cond_1b
    instance-of v7, v6, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_1f

    .line 6230
    move-object v7, v6

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    if-eq v7, v11, :cond_1e

    if-eq v7, v10, :cond_1d

    if-eq v7, v8, :cond_1c

    goto :goto_8

    :cond_1c
    const-string v9, "</i></b>"

    goto :goto_8

    :cond_1d
    const-string v9, "</i>"

    goto :goto_8

    :cond_1e
    const-string v9, "</b>"

    goto :goto_8

    .line 6238
    :cond_1f
    instance-of v7, v6, Lcom/google/android/exoplayer2/text/d/b;

    if-eqz v7, :cond_20

    .line 6239
    move-object v7, v6

    check-cast v7, Lcom/google/android/exoplayer2/text/d/b;

    .line 6240
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<rt>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/google/android/exoplayer2/text/d/b;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/d;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</rt></ruby>"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 6241
    :cond_20
    instance-of v7, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_1a

    const-string v9, "</u>"

    goto :goto_8

    :cond_21
    :goto_9
    move-object/from16 v17, v12

    .line 136
    :goto_a
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 137
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-eqz v16, :cond_22

    .line 139
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v8, Lcom/google/android/exoplayer2/ui/d$b;

    const/16 v18, 0x0

    move-object v13, v8

    move v14, v7

    move v15, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/exoplayer2/ui/d$b;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/d$1;)V

    .line 141
    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/ui/d;->a(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/d$c;

    move-result-object v7

    .line 6375
    iget-object v7, v7, Lcom/google/android/exoplayer2/ui/d$c;->a:Ljava/util/List;

    .line 141
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ui/d;->a(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/d$c;

    move-result-object v6

    .line 7375
    iget-object v6, v6, Lcom/google/android/exoplayer2/ui/d$c;->b:Ljava/util/List;

    .line 142
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_23
    return-object v1
.end method

.method public static a(Ljava/lang/CharSequence;F)Lcom/google/android/exoplayer2/ui/d$a;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 85
    new-instance p0, Lcom/google/android/exoplayer2/ui/d$a;

    invoke-static {}, Lcom/google/common/collect/x;->a()Lcom/google/common/collect/x;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/ui/d$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/d$1;)V

    return-object p0

    .line 87
    :cond_0
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_1

    .line 88
    new-instance p1, Lcom/google/android/exoplayer2/ui/d$a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/d;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/x;->a()Lcom/google/common/collect/x;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/exoplayer2/ui/d$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/d$1;)V

    return-object p1

    .line 90
    :cond_1
    check-cast p0, Landroid/text/Spanned;

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 96
    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bg_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 102
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/b;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "background-color:%s;"

    invoke-static {v3, v6}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/d;->a(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    move-result-object p1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    .line 108
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 109
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 110
    invoke-interface {p0, v3, v5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/d;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/d$c;

    .line 1375
    iget-object v6, v3, Lcom/google/android/exoplayer2/ui/d$c;->b:Ljava/util/List;

    .line 113
    invoke-static {}, Lcom/google/android/exoplayer2/ui/d$b;->a()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2375
    iget-object v6, v3, Lcom/google/android/exoplayer2/ui/d$c;->b:Ljava/util/List;

    .line 114
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/ui/d$b;

    .line 115
    iget-object v7, v7, Lcom/google/android/exoplayer2/ui/d$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3375
    :cond_4
    iget-object v6, v3, Lcom/google/android/exoplayer2/ui/d$c;->a:Ljava/util/List;

    .line 117
    invoke-static {}, Lcom/google/android/exoplayer2/ui/d$b;->b()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4375
    iget-object v3, v3, Lcom/google/android/exoplayer2/ui/d$c;->a:Ljava/util/List;

    .line 118
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/ui/d$b;

    .line 119
    iget-object v6, v6, Lcom/google/android/exoplayer2/ui/d$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_2

    .line 124
    :cond_6
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/d;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance p0, Lcom/google/android/exoplayer2/ui/d$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/exoplayer2/ui/d$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/d$1;)V

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/ui/d$c;",
            ">;I)",
            "Lcom/google/android/exoplayer2/ui/d$c;"
        }
    .end annotation

    .line 294
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/d$c;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/google/android/exoplayer2/ui/d$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/d$c;-><init>()V

    .line 297
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 303
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 304
    sget-object v0, Lcom/google/android/exoplayer2/ui/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<br>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
