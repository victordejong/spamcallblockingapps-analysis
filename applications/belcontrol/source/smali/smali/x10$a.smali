.class public Lx10$a;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/RadialGradient;

.field public b:Landroid/graphics/Paint;

.field public final synthetic c:Lx10;


# direct methods
.method public constructor <init>(Lx10;I)V
    .locals 1

    iput-object p1, p0, Lx10$a;->c:Lx10;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lx10$a;->b:Landroid/graphics/Paint;

    iput p2, p1, Lx10;->b:I

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lx10$a;->b(I)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 8

    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v2, p1

    iget-object p1, p0, Lx10$a;->c:Lx10;

    iget p1, p1, Lx10;->b:I

    int-to-float v3, p1

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lx10$a;->a:Landroid/graphics/RadialGradient;

    iget-object p1, p0, Lx10$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    iget-object v0, p0, Lx10$a;->c:Lx10;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lx10$a;->c:Lx10;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lx10$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lx10$a;->c:Lx10;

    iget v3, v3, Lx10;->b:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onResize(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lx10$a;->b(I)V

    return-void
.end method
