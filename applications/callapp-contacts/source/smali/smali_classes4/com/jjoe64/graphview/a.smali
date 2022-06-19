.class public final Lcom/jjoe64/graphview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/a$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/graphics/Paint;

.field protected final b:Lcom/jjoe64/graphview/GraphView;

.field protected c:F

.field protected d:F

.field protected e:Z

.field protected final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jjoe64/graphview/a/b;",
            "Lcom/jjoe64/graphview/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Landroid/graphics/Paint;

.field protected final h:Landroid/graphics/Paint;

.field protected i:D

.field protected j:Lcom/jjoe64/graphview/a$a;

.field protected k:I


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/jjoe64/graphview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jjoe64/graphview/a$a;-><init>(Lcom/jjoe64/graphview/a$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    .line 51
    iput-object p1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a;->a:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0xb4

    .line 53
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a;->g:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    .line 2066
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    .line 2236
    iget-object v1, p1, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 2066
    invoke-virtual {v1}, Lcom/jjoe64/graphview/c;->a()F

    move-result v1

    iput v1, v0, Lcom/jjoe64/graphview/a$a;->a:F

    .line 2067
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v1, v0, Lcom/jjoe64/graphview/a$a;->a:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/jjoe64/graphview/a$a;->b:I

    .line 2068
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v1, v0, Lcom/jjoe64/graphview/a$a;->a:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/jjoe64/graphview/a$a;->c:I

    .line 2069
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jjoe64/graphview/a$a;->d:I

    .line 2070
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    const/16 v3, 0x64

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/jjoe64/graphview/a$a;->e:I

    .line 2071
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v2, v0, Lcom/jjoe64/graphview/a$a;->a:F

    float-to-int v2, v2

    iput v2, v0, Lcom/jjoe64/graphview/a$a;->f:I

    .line 2074
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2075
    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010042

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/high16 v2, -0x1000000

    .line 2080
    :try_start_0
    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    new-array v3, v4, [I

    const v4, 0x1010036

    aput v4, v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2082
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2083
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 2088
    :catch_0
    iget-object p1, p0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iput v2, p1, Lcom/jjoe64/graphview/a$a;->g:I

    .line 2090
    iput v1, p0, Lcom/jjoe64/graphview/a;->k:I

    return-void
.end method

.method private a(Lcom/jjoe64/graphview/a/h;Lcom/jjoe64/graphview/a/d;)Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    invoke-interface {p1}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p1}, Lcom/jjoe64/graphview/a/h;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ": "

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    .line 5236
    iget-object p1, p1, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 5569
    iget-object p1, p1, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    .line 134
    invoke-interface {p2}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v1

    const/4 p2, 0x0

    invoke-interface {p1, v1, v2, p2}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    .line 6259
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    .line 213
    instance-of v4, v3, Lcom/jjoe64/graphview/a/b;

    if-eqz v4, :cond_0

    .line 214
    check-cast v3, Lcom/jjoe64/graphview/a/b;

    iget v4, p0, Lcom/jjoe64/graphview/a;->c:F

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/a/b;->a(F)Lcom/jjoe64/graphview/a/d;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 216
    invoke-interface {v4}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v1

    .line 217
    iget-object v5, p0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iput-wide v1, p0, Lcom/jjoe64/graphview/a;->i:D

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 114
    iget-boolean v1, v0, Lcom/jjoe64/graphview/a;->e:Z

    if-eqz v1, :cond_0

    .line 115
    iget v4, v0, Lcom/jjoe64/graphview/a;->c:F

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/jjoe64/graphview/a;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    :cond_0
    iget-object v1, v0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/b;

    iget-object v4, v0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/a/d;

    invoke-virtual {v3, v4, v7, v2}, Lcom/jjoe64/graphview/a/b;->a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Lcom/jjoe64/graphview/a/d;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3139
    iget-object v1, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v2, v2, Lcom/jjoe64/graphview/a$a;->a:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3140
    iget-object v1, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v2, v2, Lcom/jjoe64/graphview/a$a;->g:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3142
    iget-object v1, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v1, v1, Lcom/jjoe64/graphview/a$a;->a:F

    float-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 3145
    iget-object v2, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v2, v2, Lcom/jjoe64/graphview/a$a;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 3148
    iget v2, v0, Lcom/jjoe64/graphview/a;->k:I

    if-nez v2, :cond_4

    .line 3151
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3152
    iget-object v6, v0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3153
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jjoe64/graphview/a/d;

    invoke-direct {v0, v9, v8}, Lcom/jjoe64/graphview/a;->a(Lcom/jjoe64/graphview/a/h;Lcom/jjoe64/graphview/a/d;)Ljava/lang/String;

    move-result-object v8

    .line 3154
    iget-object v9, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v8, v3, v10, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3155
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 3160
    :cond_3
    iget-object v5, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v5, v5, Lcom/jjoe64/graphview/a$a;->c:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget-object v6, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v6, v6, Lcom/jjoe64/graphview/a$a;->b:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 3161
    iput v2, v0, Lcom/jjoe64/graphview/a;->k:I

    .line 3165
    :cond_4
    iget v5, v0, Lcom/jjoe64/graphview/a;->c:F

    iget-object v6, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v6, v6, Lcom/jjoe64/graphview/a$a;->f:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v2, v2

    sub-float/2addr v5, v2

    const/4 v6, 0x0

    cmpg-float v8, v5, v6

    if-gez v8, :cond_5

    const/4 v5, 0x0

    .line 3171
    :cond_5
    iget-object v8, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v8, v8, Lcom/jjoe64/graphview/a$a;->a:F

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v9, v9, Lcom/jjoe64/graphview/a$a;->b:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    add-int/2addr v9, v4

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v9, v9, Lcom/jjoe64/graphview/a$a;->b:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 3173
    iget v9, v0, Lcom/jjoe64/graphview/a;->d:F

    sub-float/2addr v9, v8

    const/high16 v10, 0x40900000    # 4.5f

    iget-object v11, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v11, v11, Lcom/jjoe64/graphview/a$a;->a:F

    mul-float v11, v11, v10

    sub-float/2addr v9, v11

    cmpg-float v10, v9, v6

    if-gez v10, :cond_6

    goto :goto_2

    :cond_6
    move v6, v9

    :goto_2
    add-float/2addr v2, v5

    add-float/2addr v8, v6

    .line 3184
    iget-object v9, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v9, v9, Lcom/jjoe64/graphview/a$a;->c:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 3185
    iget-object v9, v0, Lcom/jjoe64/graphview/a;->g:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v10, v10, Lcom/jjoe64/graphview/a$a;->e:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 3186
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v5, v6, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/jjoe64/graphview/a;->g:Landroid/graphics/Paint;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v7, v9, v8, v8, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3188
    iget-object v2, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 3189
    iget-object v2, v0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    .line 3236
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 3569
    iget-object v2, v2, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    .line 3189
    iget-wide v8, v0, Lcom/jjoe64/graphview/a;->i:D

    invoke-interface {v2, v8, v9, v4}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v8, v8, Lcom/jjoe64/graphview/a$a;->c:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v9, v9, Lcom/jjoe64/graphview/a$a;->c:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v6

    iget-object v10, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v10, v10, Lcom/jjoe64/graphview/a$a;->a:F

    add-float/2addr v9, v10

    iget-object v10, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3191
    iget-object v2, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 3194
    iget-object v2, v0, Lcom/jjoe64/graphview/a;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3195
    iget-object v9, v0, Lcom/jjoe64/graphview/a;->g:Landroid/graphics/Paint;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jjoe64/graphview/a/b;

    .line 4274
    iget v10, v10, Lcom/jjoe64/graphview/a/b;->c:I

    .line 3195
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 3196
    new-instance v9, Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v10, v10, Lcom/jjoe64/graphview/a$a;->c:I

    int-to-float v10, v10

    add-float/2addr v10, v5

    iget-object v11, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v11, v11, Lcom/jjoe64/graphview/a$a;->c:I

    int-to-float v11, v11

    add-float/2addr v11, v6

    int-to-float v12, v3

    iget-object v13, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v13, v13, Lcom/jjoe64/graphview/a$a;->a:F

    iget-object v14, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v14, v14, Lcom/jjoe64/graphview/a$a;->b:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    mul-float v13, v13, v12

    add-float/2addr v11, v13

    iget-object v13, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v13, v13, Lcom/jjoe64/graphview/a$a;->c:I

    int-to-float v13, v13

    add-float/2addr v13, v5

    int-to-float v14, v1

    add-float/2addr v13, v14

    iget-object v15, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v15, v15, Lcom/jjoe64/graphview/a$a;->c:I

    int-to-float v15, v15

    add-float/2addr v15, v6

    iget-object v4, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v4, v4, Lcom/jjoe64/graphview/a$a;->a:F

    move/from16 v16, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v1, v1, Lcom/jjoe64/graphview/a$a;->b:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    mul-float v4, v4, v12

    add-float/2addr v15, v4

    add-float/2addr v15, v14

    invoke-direct {v9, v10, v11, v13, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v0, Lcom/jjoe64/graphview/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3197
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/a/d;

    invoke-direct {v0, v1, v4}, Lcom/jjoe64/graphview/a;->a(Lcom/jjoe64/graphview/a/h;Lcom/jjoe64/graphview/a/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v4, v4, Lcom/jjoe64/graphview/a$a;->c:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    add-float/2addr v4, v14

    iget-object v8, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v8, v8, Lcom/jjoe64/graphview/a$a;->b:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v8, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v8, v8, Lcom/jjoe64/graphview/a$a;->c:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v9, v9, Lcom/jjoe64/graphview/a$a;->a:F

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v9, v9, Lcom/jjoe64/graphview/a$a;->a:F

    iget-object v10, v0, Lcom/jjoe64/graphview/a;->j:Lcom/jjoe64/graphview/a$a;

    iget v10, v10, Lcom/jjoe64/graphview/a$a;->b:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v12, v12, v9

    add-float/2addr v8, v12

    iget-object v9, v0, Lcom/jjoe64/graphview/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    add-int/2addr v3, v1

    move/from16 v1, v16

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_7
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jjoe64/graphview/a;->c:F

    .line 96
    iget-object v1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jjoe64/graphview/a;->c:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/jjoe64/graphview/a;->d:F

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/jjoe64/graphview/a;->e:Z

    .line 99
    invoke-direct {p0}, Lcom/jjoe64/graphview/a;->b()V

    .line 100
    iget-object p1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->invalidate()V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/jjoe64/graphview/a;->e:Z

    .line 204
    invoke-direct {p0}, Lcom/jjoe64/graphview/a;->b()V

    .line 205
    iget-object v0, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/jjoe64/graphview/a;->e:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jjoe64/graphview/a;->c:F

    .line 106
    iget-object v1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jjoe64/graphview/a;->c:F

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/jjoe64/graphview/a;->d:F

    .line 108
    invoke-direct {p0}, Lcom/jjoe64/graphview/a;->b()V

    .line 109
    iget-object p1, p0, Lcom/jjoe64/graphview/a;->b:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->invalidate()V

    :cond_0
    return-void
.end method
