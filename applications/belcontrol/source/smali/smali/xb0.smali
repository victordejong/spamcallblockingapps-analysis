.class public Lxb0;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lob0;
.implements Le9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb0$a;
    }
.end annotation


# static fields
.field public static c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lzh0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lxb0$a;

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lxb0;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lxb0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0;

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lzh0;->g(Landroid/content/res/Resources;I)Lzh0;

    move-result-object v0

    sget-object v1, Lxb0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Lzh0;->c()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {v0}, Lzh0;->c()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float p2, p2, p1

    float-to-int p2, p2

    mul-float v1, v1, p1

    float-to-int p1, v1

    new-instance v1, Lxb0$a;

    invoke-direct {v1, p0, v0, p2, p1}, Lxb0$a;-><init>(Lxb0;Lzh0;II)V

    iput-object v1, p0, Lxb0;->a:Lxb0$a;

    iget p1, v1, Lxb0$a;->c:I

    iget p2, v1, Lxb0$a;->d:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lxb0;->setBounds(IIII)V
    :try_end_0
    .catch Lci0; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lzh0;II)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lxb0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lxb0$a;-><init>(Lxb0;Lzh0;II)V

    iput-object v0, p0, Lxb0;->a:Lxb0$a;

    iget p1, v0, Lxb0$a;->c:I

    iget p2, v0, Lxb0$a;->d:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Lxb0;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    iget-object v1, v0, Lxb0$a;->e:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lxb0$a;->a(Lxb0$a;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lxb0;->a:Lxb0$a;

    iget-object v1, v1, Lxb0$a;->e:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lxb0$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lxb0$a;->g:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lxb0$a;->a(Lxb0$a;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lxb0;->a:Lxb0$a;

    iget-object v2, v2, Lxb0$a;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iget-object v4, p0, Lxb0;->a:Lxb0$a;

    iget-object v4, v4, Lxb0$a;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v3, p0, Lxb0;->a:Lxb0$a;

    iget-object v3, v3, Lxb0$a;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lxb0$a;->a(Lxb0$a;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    iget-object v0, v0, Lxb0$a;->a:Lzh0;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lzh0;->k(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p0}, Lxb0;->d()V

    iget-object v0, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lxb0;->a:Lxb0$a;

    invoke-static {v3}, Lxb0$a;->a(Lxb0$a;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    invoke-static {v0}, Lxb0$a;->a(Lxb0$a;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    iget v0, v0, Lxb0$a;->d:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    iget v0, v0, Lxb0$a;->c:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Lxb0;

    iget-object v1, p0, Lxb0;->a:Lxb0$a;

    iget-object v2, v1, Lxb0$a;->a:Lzh0;

    iget v3, v1, Lxb0$a;->c:I

    iget v1, v1, Lxb0$a;->d:I

    invoke-direct {v0, v2, v3, v1}, Lxb0;-><init>(Lzh0;II)V

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    invoke-static {v0}, Lxb0$a;->a(Lxb0$a;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    sub-int v0, p3, p1

    sub-int v1, p4, p2

    iget-object v2, p0, Lxb0;->a:Lxb0$a;

    iget-object v2, v2, Lxb0$a;->a:Lzh0;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lxb0;->a:Lxb0$a;

    iget-object v2, v2, Lxb0$a;->a:Lzh0;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lzh0;->p(F)V

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    iget-object v0, v0, Lxb0$a;->a:Lzh0;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lzh0;->o(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lxb0;->b:Landroid/graphics/Bitmap;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    iput-object p1, v0, Lxb0$a;->e:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    iput-object p1, v0, Lxb0$a;->f:Landroid/content/res/ColorStateList;

    iput-object p1, v0, Lxb0$a;->g:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    invoke-virtual {p0}, Lxb0;->d()V

    return p1
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxb0;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lxb0$a;->e:Landroid/graphics/ColorFilter;

    iput-object p1, v0, Lxb0$a;->f:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lxb0;->a:Lxb0$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lxb0$a;->e:Landroid/graphics/ColorFilter;

    iput-object p1, v0, Lxb0$a;->g:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method
