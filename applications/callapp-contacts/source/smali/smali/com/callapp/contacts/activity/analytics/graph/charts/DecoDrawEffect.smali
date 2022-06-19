.class public Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;
    }
.end annotation


# instance fields
.field final a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Ljava/lang/String;

.field private final f:Landroid/graphics/RectF;

.field private g:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;Landroid/graphics/Paint;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->f:Landroid/graphics/RectF;

    const/4 v0, 0x6

    .line 69
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->g:I

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 91
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->setPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->f:Landroid/graphics/RectF;

    const/4 v0, 0x6

    .line 69
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->g:I

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 84
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->setPaint(Landroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1135
    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->e:Ljava/lang/String;

    .line 1136
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    .line 1137
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1138
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1139
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private static a(F)F
    .locals 7

    float-to-double v0, p0

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x41ef3333    # 29.9f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    mul-float p0, p0, v2

    mul-float p0, p0, v3

    add-float/2addr p0, v0

    return p0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    mul-float p0, p0, v2

    mul-float p0, p0, v3

    sub-float/2addr v0, p0

    return v0
.end method

.method private static a(Landroid/graphics/Paint;F)F
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 123
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    .line 124
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p0, p0, p1

    return p0
.end method

.method private setPaint(Landroid/graphics/Paint;)V
    .locals 2

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    .line 106
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(Landroid/graphics/Paint;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->c:Landroid/graphics/Paint;

    .line 116
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->c:Landroid/graphics/Paint;

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(Landroid/graphics/Paint;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x3f333333    # 0.7f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    sub-float/2addr p3, v0

    const v0, 0x3e99999a    # 0.3f

    div-float/2addr p3, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p3, p3, v0

    sub-float/2addr v0, p3

    float-to-int p3, v0

    .line 283
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 287
    :cond_0
    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    .line 288
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v1

    add-float/2addr v0, p2

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr p2, v2

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    .line 289
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 16

    move-object/from16 v0, p0

    .line 200
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 204
    :goto_1
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_IN:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_EXPLODE:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-eq v2, v5, :cond_2

    const/4 v3, 0x1

    .line 208
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr v2, v5

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v4

    sub-float/2addr v6, v5

    .line 210
    iget v4, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->g:I

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v4, v4, v5

    .line 212
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v8, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-ne v7, v8, :cond_3

    add-float v7, v4, v5

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    mul-float v8, v7, p3

    if-eqz v3, :cond_4

    move v3, v8

    goto :goto_3

    :cond_4
    neg-float v3, v8

    :goto_3
    add-float v3, p4, v3

    rem-float/2addr v3, v5

    .line 215
    invoke-static/range {p3 .. p3}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(F)F

    move-result v9

    .line 217
    iget-object v10, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->f:Landroid/graphics/RectF;

    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    sub-float v1, v10, p3

    goto :goto_4

    :cond_5
    move/from16 v1, p3

    .line 226
    :goto_4
    iget-object v11, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v12, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-ne v11, v12, :cond_9

    sub-float v11, v7, v5

    cmpl-float v11, v8, v11

    if-lez v11, :cond_8

    .line 228
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    rem-float/2addr v8, v5

    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_6

    goto :goto_5

    :cond_6
    move v5, v8

    :goto_5
    cmpl-float v1, v5, p5

    if-lez v1, :cond_7

    move/from16 v5, p5

    :cond_7
    move/from16 v12, p4

    move v13, v5

    goto :goto_7

    :cond_8
    div-float/2addr v4, v7

    sub-float v4, v10, v4

    cmpl-float v5, v1, v4

    if-lez v5, :cond_a

    sub-float/2addr v1, v4

    sub-float/2addr v10, v4

    div-float/2addr v1, v10

    .line 243
    iget-object v4, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->f:Landroid/graphics/RectF;

    mul-float v2, v2, v1

    mul-float v6, v6, v1

    invoke-virtual {v4, v2, v6}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_6

    .line 249
    :cond_9
    iget-object v4, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->f:Landroid/graphics/RectF;

    mul-float v2, v2, v1

    mul-float v6, v6, v1

    invoke-virtual {v4, v2, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_a
    :goto_6
    move v12, v3

    move v13, v9

    .line 252
    :goto_7
    iget-object v11, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->f:Landroid/graphics/RectF;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 21

    move-object/from16 v0, p0

    .line 302
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    mul-float v5, v5, v6

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v7, v7, v4

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x40000000    # 2.0f

    const/16 v11, 0xff

    cmpl-float v12, p3, v9

    if-lez v12, :cond_1

    sub-float v9, p3, v9

    mul-float v9, v9, v10

    sub-float v5, v3, v5

    mul-float v5, v5, v9

    sub-float/2addr v3, v5

    mul-float v9, v9, v8

    float-to-int v5, v9

    rsub-int v5, v5, 0xff

    goto :goto_1

    :cond_1
    mul-float v9, p3, v10

    sub-float/2addr v3, v5

    mul-float v9, v9, v3

    add-float v3, v5, v9

    const/16 v5, 0xff

    .line 317
    :goto_1
    iget-object v9, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    if-ge v5, v11, :cond_2

    .line 319
    iget-object v12, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->c:Landroid/graphics/Paint;

    int-to-float v13, v9

    int-to-float v14, v5

    div-float/2addr v14, v8

    mul-float v13, v13, v14

    float-to-int v8, v13

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v10

    sub-float/2addr v8, v7

    mul-float v8, v8, p3

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    sub-float v3, v7, v3

    const/4 v8, 0x0

    :goto_2
    const/16 v10, 0x9

    if-ge v2, v10, :cond_4

    float-to-double v12, v8

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double v12, v12, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    div-double/2addr v12, v14

    .line 1339
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v10, v14

    mul-float v10, v10, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    add-float v16, v10, v14

    .line 1340
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v10, v14

    mul-float v10, v10, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    add-float v17, v10, v14

    .line 1341
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v10, v14

    mul-float v10, v10, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    add-float/2addr v10, v14

    .line 1342
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    add-float/2addr v12, v13

    if-nez v1, :cond_3

    .line 1345
    iget-object v13, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->c:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v18, v10

    move/from16 v19, v12

    move-object/from16 v20, v13

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1350
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float v13, v13, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v14

    mul-float v14, v14, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float v15, v15, v6

    sub-float/2addr v14, v15

    mul-float v14, v14, p3

    add-float/2addr v13, v14

    .line 1351
    iget-object v14, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->c:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v10, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    const/high16 v10, 0x42200000    # 40.0f

    add-float/2addr v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-ge v5, v11, :cond_5

    .line 332
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    return-void
.end method

.method public setRotationCount(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->g:I

    return-void
.end method
