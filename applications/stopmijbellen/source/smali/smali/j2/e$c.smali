.class public Lj2/e$c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public final synthetic c:Lj2/e;


# direct methods
.method public constructor <init>(Lj2/e;Lj2/e$a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lj2/e$c;->c:Lj2/e;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lj2/e$c;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lj2/e$c;->b:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5
    iget-object p2, p0, Lj2/e$c;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object p2, p0, Lj2/e$c;->a:Landroid/graphics/Paint;

    .line 7
    iget v0, p1, Lj2/e;->i:I

    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p2, p0, Lj2/e$c;->b:Landroid/graphics/Paint;

    .line 10
    sget-object v0, Lj2/e;->s:Landroid/graphics/Xfermode;

    .line 11
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p0, Lj2/e$c;->a:Landroid/graphics/Paint;

    .line 14
    iget v0, p1, Lj2/e;->a:I

    int-to-float v0, v0

    .line 15
    iget v1, p1, Lj2/e;->b:I

    int-to-float v1, v1

    .line 16
    iget v2, p1, Lj2/e;->c:I

    int-to-float v2, v2

    .line 17
    iget p1, p1, Lj2/e;->d:I

    .line 18
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lj2/e$c;->c:Lj2/e;

    .line 2
    iget v2, v1, Lj2/e;->a:I

    .line 3
    iget v1, v1, Lj2/e;->b:I

    .line 4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lj2/e$c;->c:Lj2/e;

    .line 5
    iget v3, v2, Lj2/e;->a:I

    .line 6
    iget v2, v2, Lj2/e;->c:I

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lj2/e$c;->c:Lj2/e;

    .line 8
    iget v4, v3, Lj2/e;->g:I

    int-to-float v4, v4

    .line 9
    iget v3, v3, Lj2/e;->h:I

    int-to-float v3, v3

    .line 10
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 11
    iget-object v1, p0, Lj2/e$c;->c:Lj2/e;

    .line 12
    iget v1, v1, Lj2/e;->l:I

    int-to-float v1, v1

    .line 13
    iget-object v2, p0, Lj2/e$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14
    iget-object v1, p0, Lj2/e$c;->c:Lj2/e;

    .line 15
    iget v1, v1, Lj2/e;->l:I

    int-to-float v1, v1

    .line 16
    iget-object v2, p0, Lj2/e$c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
