.class public Lcom/kedlin/cca/ui/OverlayWithHoleImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Canvas;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->f:Z

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->f:Z

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->f:Z

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->d:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->b:Landroid/graphics/Canvas;

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->b(II)V

    :cond_1
    iget-object v2, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v2, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->b:Landroid/graphics/Canvas;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->b:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->b(II)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->g:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method public setReadyForDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/OverlayWithHoleImageView;->f:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method
