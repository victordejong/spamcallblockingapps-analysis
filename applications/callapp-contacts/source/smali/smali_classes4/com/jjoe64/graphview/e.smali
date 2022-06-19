.class public final Lcom/jjoe64/graphview/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/e$a;,
        Lcom/jjoe64/graphview/e$b;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Lcom/jjoe64/graphview/e$b;

.field private final c:Lcom/jjoe64/graphview/GraphView;

.field private d:Landroid/graphics/Paint;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/jjoe64/graphview/e;->a:Z

    .line 111
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    .line 112
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 113
    new-instance v1, Lcom/jjoe64/graphview/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jjoe64/graphview/e$b;-><init>(Lcom/jjoe64/graphview/e;Lcom/jjoe64/graphview/e$1;)V

    iput-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    .line 114
    iput v0, p0, Lcom/jjoe64/graphview/e;->e:I

    .line 1123
    sget v2, Lcom/jjoe64/graphview/e$a;->b:I

    iput v2, v1, Lcom/jjoe64/graphview/e$b;->h:I

    .line 1124
    iget-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    .line 1236
    iget-object v2, p1, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 1124
    invoke-virtual {v2}, Lcom/jjoe64/graphview/c;->a()F

    move-result v2

    iput v2, v1, Lcom/jjoe64/graphview/e$b;->a:F

    .line 1125
    iget-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v2, v1, Lcom/jjoe64/graphview/e$b;->a:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/jjoe64/graphview/e$b;->b:I

    .line 1126
    iget-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v2, v1, Lcom/jjoe64/graphview/e$b;->a:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/jjoe64/graphview/e$b;->c:I

    .line 1127
    iget-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iput v0, v1, Lcom/jjoe64/graphview/e$b;->d:I

    .line 1128
    iget-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    const/16 v2, 0xb4

    const/16 v4, 0x64

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v1, Lcom/jjoe64/graphview/e$b;->e:I

    .line 1129
    iget-object v1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v2, v1, Lcom/jjoe64/graphview/e$b;->a:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/jjoe64/graphview/e$b;->g:I

    .line 1132
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1133
    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010042

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/high16 v2, -0x1000000

    .line 1138
    :try_start_0
    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, v1, Landroid/util/TypedValue;->data:I

    new-array v3, v4, [I

    const v4, 0x1010036

    aput v4, v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1140
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1141
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 1146
    :catch_0
    iget-object p1, p0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iput v2, p1, Lcom/jjoe64/graphview/e$b;->f:I

    .line 1148
    iput v0, p0, Lcom/jjoe64/graphview/e;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 167
    iget-boolean v2, v0, Lcom/jjoe64/graphview/e;->a:Z

    if-nez v2, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v2, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v3, v3, Lcom/jjoe64/graphview/e$b;->a:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v2, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v2, v2, Lcom/jjoe64/graphview/e$b;->a:F

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 2152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2153
    iget-object v4, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    .line 2259
    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    .line 2153
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2154
    iget-object v4, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v4, :cond_1

    .line 2155
    iget-object v4, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/h;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_1
    iget-object v4, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v4, v4, Lcom/jjoe64/graphview/e$b;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez v4, :cond_5

    .line 179
    iget v4, v0, Lcom/jjoe64/graphview/e;->e:I

    if-nez v4, :cond_5

    .line 182
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 183
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jjoe64/graphview/a/h;

    .line 184
    invoke-interface {v10}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 185
    iget-object v11, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    invoke-interface {v10}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v11, v12, v5, v10, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 186
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 192
    :cond_4
    iget-object v8, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v8, v8, Lcom/jjoe64/graphview/e$b;->c:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    iget-object v9, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v9, v9, Lcom/jjoe64/graphview/e$b;->b:I

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 193
    iput v4, v0, Lcom/jjoe64/graphview/e;->e:I

    .line 198
    :cond_5
    iget-object v8, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v8, v8, Lcom/jjoe64/graphview/e$b;->a:F

    iget-object v9, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v9, v9, Lcom/jjoe64/graphview/e$b;->b:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget-object v9, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v9, v9, Lcom/jjoe64/graphview/e$b;->b:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 201
    iget-object v9, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget-object v9, v9, Lcom/jjoe64/graphview/e$b;->i:Landroid/graphics/Point;

    if-eqz v9, :cond_6

    .line 203
    iget-object v6, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v6

    iget-object v9, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v9, v9, Lcom/jjoe64/graphview/e$b;->g:I

    add-int/2addr v6, v9

    iget-object v9, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget-object v9, v9, Lcom/jjoe64/graphview/e$b;->i:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    .line 204
    iget-object v9, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v9

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->g:I

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget-object v10, v10, Lcom/jjoe64/graphview/e$b;->i:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    goto :goto_3

    .line 206
    :cond_6
    iget-object v9, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v9}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v9

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->g:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 207
    sget-object v10, Lcom/jjoe64/graphview/e$1;->a:[I

    iget-object v11, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v11, v11, Lcom/jjoe64/graphview/e$b;->h:I

    sub-int/2addr v11, v6

    aget v10, v10, v11

    if-eq v10, v6, :cond_8

    if-eq v10, v7, :cond_7

    .line 215
    iget-object v6, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v6

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->g:I

    sub-int/2addr v6, v10

    int-to-float v6, v6

    sub-float/2addr v6, v8

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->c:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    goto :goto_1

    .line 212
    :cond_7
    iget-object v6, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->getHeight()I

    move-result v6

    div-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v8, v10

    :goto_1
    sub-float/2addr v6, v10

    goto :goto_2

    .line 209
    :cond_8
    iget-object v6, v0, Lcom/jjoe64/graphview/e;->c:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v6

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->g:I

    add-int/2addr v6, v10

    int-to-float v6, v6

    :goto_2
    move/from16 v17, v9

    move v9, v6

    move/from16 v6, v17

    :goto_3
    int-to-float v4, v4

    add-float/2addr v4, v6

    add-float/2addr v8, v9

    .line 219
    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->c:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v7, v10

    add-float/2addr v8, v7

    .line 220
    iget-object v7, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->e:I

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v6, v9, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v1, v7, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/a/h;

    .line 225
    iget-object v7, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    invoke-interface {v4}, Lcom/jjoe64/graphview/a/h;->g()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v8, v8, Lcom/jjoe64/graphview/e$b;->c:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->c:I

    int-to-float v10, v10

    add-float/2addr v10, v9

    int-to-float v11, v5

    iget-object v12, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v12, v12, Lcom/jjoe64/graphview/e$b;->a:F

    iget-object v13, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v13, v13, Lcom/jjoe64/graphview/e$b;->b:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    mul-float v12, v12, v11

    add-float/2addr v10, v12

    iget-object v12, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v12, v12, Lcom/jjoe64/graphview/e$b;->c:I

    int-to-float v12, v12

    add-float/2addr v12, v6

    int-to-float v13, v2

    add-float/2addr v12, v13

    iget-object v14, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v14, v14, Lcom/jjoe64/graphview/e$b;->c:I

    int-to-float v14, v14

    add-float/2addr v14, v9

    iget-object v15, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v15, v15, Lcom/jjoe64/graphview/e$b;->a:F

    move/from16 v16, v2

    iget-object v2, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v2, v2, Lcom/jjoe64/graphview/e$b;->b:I

    int-to-float v2, v2

    add-float/2addr v15, v2

    mul-float v15, v15, v11

    add-float/2addr v14, v15

    add-float/2addr v14, v13

    invoke-direct {v7, v8, v10, v12, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 227
    invoke-interface {v4}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 228
    iget-object v2, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v7, v7, Lcom/jjoe64/graphview/e$b;->f:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    invoke-interface {v4}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v4, v4, Lcom/jjoe64/graphview/e$b;->c:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    add-float/2addr v4, v13

    iget-object v7, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v7, v7, Lcom/jjoe64/graphview/e$b;->b:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget-object v7, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v7, v7, Lcom/jjoe64/graphview/e$b;->c:I

    int-to-float v7, v7

    add-float/2addr v7, v9

    iget-object v8, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v8, v8, Lcom/jjoe64/graphview/e$b;->a:F

    add-float/2addr v7, v8

    iget-object v8, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v8, v8, Lcom/jjoe64/graphview/e$b;->a:F

    iget-object v10, v0, Lcom/jjoe64/graphview/e;->b:Lcom/jjoe64/graphview/e$b;

    iget v10, v10, Lcom/jjoe64/graphview/e$b;->b:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    mul-float v11, v11, v8

    add-float/2addr v7, v11

    iget-object v8, v0, Lcom/jjoe64/graphview/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    goto/16 :goto_4

    :cond_a
    return-void
.end method
