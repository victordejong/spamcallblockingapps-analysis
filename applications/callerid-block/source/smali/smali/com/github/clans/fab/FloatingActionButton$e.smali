.class Lcom/github/clans/fab/FloatingActionButton$e;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field final synthetic d:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->b:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton$e;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$e;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->h(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->b:Landroid/graphics/Paint;

    invoke-static {}, Lcom/github/clans/fab/FloatingActionButton;->i()Landroid/graphics/Xfermode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    iget v2, v1, Lcom/github/clans/fab/FloatingActionButton;->e:I

    int-to-float v2, v2

    iget v3, v1, Lcom/github/clans/fab/FloatingActionButton;->f:I

    int-to-float v3, v3

    iget v4, v1, Lcom/github/clans/fab/FloatingActionButton;->g:I

    int-to-float v4, v4

    iget v1, v1, Lcom/github/clans/fab/FloatingActionButton;->d:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->j(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->d(Lcom/github/clans/fab/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->k(Lcom/github/clans/fab/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->e(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->a(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->b(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->a(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$e;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionButton;->b(Lcom/github/clans/fab/FloatingActionButton;)F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton$e;->c:F

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$e;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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
