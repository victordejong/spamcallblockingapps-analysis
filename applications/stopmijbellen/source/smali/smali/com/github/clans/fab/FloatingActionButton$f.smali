.class public Lcom/github/clans/fab/FloatingActionButton$f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public c:F

.field public final synthetic d:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$a;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->b:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->a:Landroid/graphics/Paint;

    .line 7
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->b:Landroid/graphics/Paint;

    .line 10
    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/Xfermode;

    .line 11
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->a:Landroid/graphics/Paint;

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton;->d:I

    int-to-float v0, v0

    iget v1, p1, Lcom/github/clans/fab/FloatingActionButton;->e:I

    int-to-float v1, v1

    iget v2, p1, Lcom/github/clans/fab/FloatingActionButton;->f:I

    int-to-float v2, v2

    iget v3, p1, Lcom/github/clans/fab/FloatingActionButton;->c:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->a(Lcom/github/clans/fab/FloatingActionButton;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->c:F

    .line 15
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-eqz v0, :cond_1

    .line 16
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    if-eqz v0, :cond_1

    .line 17
    iget p1, p1, Lcom/github/clans/fab/FloatingActionButton;->u:I

    int-to-float p1, p1

    add-float/2addr p2, p1

    .line 18
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->c:F

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    sget-object v1, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/Xfermode;

    .line 2
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->b()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->c()F

    move-result v1

    .line 5
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->c:F

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$f;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    .line 7
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->b()F

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    .line 9
    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->c()F

    move-result v1

    .line 10
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton$f;->c:F

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionButton$f;->b:Landroid/graphics/Paint;

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
