.class final Landroidx/media2/widget/d$a$b;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/media2/widget/d$a;

.field private i:F


# direct methods
.method constructor <init>(Landroidx/media2/widget/d$a;Landroid/content/Context;)V
    .locals 1

    .line 152
    iput-object p1, p0, Landroidx/media2/widget/d$a$b;->h:Landroidx/media2/widget/d$a;

    .line 153
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 147
    iput p1, p0, Landroidx/media2/widget/d$a$b;->c:I

    const/high16 p2, -0x1000000

    .line 148
    iput p2, p0, Landroidx/media2/widget/d$a$b;->e:I

    const/4 p2, 0x0

    .line 149
    iput p2, p0, Landroidx/media2/widget/d$a$b;->f:I

    .line 150
    iput p2, p0, Landroidx/media2/widget/d$a$b;->g:I

    const/16 v0, 0x11

    .line 154
    invoke-virtual {p0, v0}, Landroidx/media2/widget/d$a$b;->setGravity(I)V

    .line 155
    invoke-virtual {p0, p2}, Landroidx/media2/widget/d$a$b;->setBackgroundColor(I)V

    .line 156
    invoke-virtual {p0, p1}, Landroidx/media2/widget/d$a$b;->setTextColor(I)V

    .line 157
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroidx/media2/widget/d$a$b;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x4

    .line 158
    invoke-virtual {p0, p1}, Landroidx/media2/widget/d$a$b;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 163
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_outline_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/d$a$b;->i:F

    .line 165
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_shadow_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/d$a$b;->a:F

    .line 167
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_shadow_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/media2/widget/d$a$b;->b:F

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 288
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$b;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 289
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Landroid/text/Spannable;

    .line 292
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroidx/media2/widget/c$e;

    const/4 v3, 0x0

    .line 291
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/widget/c$e;

    .line 293
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 294
    aget-object v1, v0, v3

    .line 1417
    iput p1, v1, Landroidx/media2/widget/c$e;->a:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 211
    iget v0, p0, Landroidx/media2/widget/d$a$b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1229
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$b;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1232
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    .line 1233
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    .line 1235
    iget v5, p0, Landroidx/media2/widget/d$a$b;->g:I

    invoke-virtual {p0, v5}, Landroidx/media2/widget/d$a$b;->setTextColor(I)V

    .line 1236
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1237
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1238
    iget v5, p0, Landroidx/media2/widget/d$a$b;->i:F

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1241
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1244
    iget v5, p0, Landroidx/media2/widget/d$a$b;->c:I

    invoke-virtual {p0, v5}, Landroidx/media2/widget/d$a$b;->setTextColor(I)V

    .line 1245
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1246
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1247
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1250
    invoke-direct {p0, v3}, Landroidx/media2/widget/d$a$b;->a(I)V

    .line 1252
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1254
    iget p1, p0, Landroidx/media2/widget/d$a$b;->e:I

    invoke-direct {p0, p1}, Landroidx/media2/widget/d$a$b;->a(I)V

    return-void

    .line 1259
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$b;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 1262
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1264
    iget v5, p0, Landroidx/media2/widget/d$a$b;->f:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const/4 v5, -0x1

    goto :goto_1

    .line 1265
    :cond_3
    iget v5, p0, Landroidx/media2/widget/d$a$b;->g:I

    :goto_1
    if-eqz v2, :cond_4

    .line 1266
    iget v1, p0, Landroidx/media2/widget/d$a$b;->g:I

    .line 1267
    :cond_4
    iget v2, p0, Landroidx/media2/widget/d$a$b;->a:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    neg-float v7, v6

    .line 1270
    invoke-virtual {p0, v2, v7, v7, v5}, Landroidx/media2/widget/d$a$b;->setShadowLayer(FFFI)V

    .line 1271
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1274
    invoke-direct {p0, v3}, Landroidx/media2/widget/d$a$b;->a(I)V

    .line 1277
    iget v2, p0, Landroidx/media2/widget/d$a$b;->a:F

    invoke-virtual {p0, v2, v6, v6, v1}, Landroidx/media2/widget/d$a$b;->setShadowLayer(FFFI)V

    .line 1278
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1281
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1284
    iget p1, p0, Landroidx/media2/widget/d$a$b;->e:I

    invoke-direct {p0, p1}, Landroidx/media2/widget/d$a$b;->a(I)V

    return-void

    .line 215
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 188
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0, v1, v0}, Landroidx/media2/widget/d$a$b;->setTextSize(IF)V

    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 191
    iput v2, p0, Landroidx/media2/widget/d$a$b;->i:F

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    .line 192
    iput v0, p0, Landroidx/media2/widget/d$a$b;->a:F

    .line 193
    iput v0, p0, Landroidx/media2/widget/d$a$b;->b:F

    .line 196
    invoke-virtual {p0, v3}, Landroidx/media2/widget/d$a$b;->setScaleX(F)V

    .line 197
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$b;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/widget/d$a$b;->h:Landroidx/media2/widget/d$a;

    iget-object v2, v2, Landroidx/media2/widget/d$a;->a:Landroid/graphics/Rect;

    const-string v3, "1234567890123456789012345678901234"

    const/16 v4, 0x22

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 199
    iget-object v0, p0, Landroidx/media2/widget/d$a$b;->h:Landroidx/media2/widget/d$a;

    iget-object v0, v0, Landroidx/media2/widget/d$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    div-float/2addr v1, v0

    .line 202
    invoke-virtual {p0, v1}, Landroidx/media2/widget/d$a$b;->setScaleX(F)V

    goto :goto_0

    :cond_0
    const-string v0, "Cea608CaptionRenderer"

    const-string v1, "onMeasure(): Paint#getTextBounds() returned zero width. Ignored."

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method
