.class public Lqd0;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Le9;


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd0$b;
    }
.end annotation


# instance fields
.field public a:Lqd0$b;

.field public final b:[Lxd0$g;

.field public final c:[Lxd0$g;

.field public d:Z

.field public final f:Landroid/graphics/Path;

.field public final g:Landroid/graphics/RectF;

.field public final h:Landroid/graphics/Region;

.field public final j:Landroid/graphics/Region;

.field public final k:Landroid/graphics/Paint;

.field public final l:Ltd0;

.field public final m:Lwd0$a;

.field public final n:Lwd0;

.field public o:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Lqd0$b;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lxd0$g;

    iput-object v1, p0, Lqd0;->b:[Lxd0$g;

    new-array v0, v0, [Lxd0$g;

    iput-object v0, p0, Lqd0;->c:[Lxd0$g;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lqd0;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lqd0;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lqd0;->h:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lqd0;->j:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lqd0;->k:Landroid/graphics/Paint;

    new-instance v1, Ltd0;

    invoke-direct {v1}, Ltd0;-><init>()V

    iput-object v1, p0, Lqd0;->l:Ltd0;

    new-instance v1, Lwd0;

    invoke-direct {v1}, Lwd0;-><init>()V

    iput-object v1, p0, Lqd0;->n:Lwd0;

    iput-object p1, p0, Lqd0;->a:Lqd0$b;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lqd0;->q()V

    new-instance p1, Lqd0$a;

    invoke-direct {p1, p0}, Lqd0$a;-><init>(Lqd0;)V

    iput-object p1, p0, Lqd0;->m:Lwd0$a;

    return-void
.end method

.method public synthetic constructor <init>(Lqd0$b;Lqd0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lqd0;-><init>(Lqd0$b;)V

    return-void
.end method

.method public constructor <init>(Lvd0;)V
    .locals 1

    new-instance v0, Lqd0$b;

    invoke-direct {v0, p1}, Lqd0$b;-><init>(Lvd0;)V

    invoke-direct {p0, v0}, Lqd0;-><init>(Lqd0$b;)V

    return-void
.end method

.method public static synthetic d(Lqd0;)[Lxd0$g;
    .locals 0

    iget-object p0, p0, Lqd0;->b:[Lxd0$g;

    return-object p0
.end method

.method public static synthetic e(Lqd0;)[Lxd0$g;
    .locals 0

    iget-object p0, p0, Lqd0;->c:[Lxd0$g;

    return-object p0
.end method

.method public static o(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lqd0;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lqd0;->o:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lqd0;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lqd0;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lqd0;->a:Lqd0$b;

    iget v2, v2, Lqd0$b;->f:I

    invoke-static {v0, v2}, Lqd0;->o(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v1, p0, Lqd0;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lqd0;->l()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lqd0;->f:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v2}, Lqd0;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lqd0;->d:Z

    :cond_0
    invoke-virtual {p0, p1}, Lqd0;->i(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lqd0;->j(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lqd0;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final f(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lqd0;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public final g(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lqd0;->n:Lwd0;

    iget-object v1, p0, Lqd0;->a:Lqd0$b;

    iget-object v2, v1, Lqd0$b;->a:Lvd0;

    iget v3, v1, Lqd0$b;->e:F

    iget-object v4, p0, Lqd0;->m:Lwd0$a;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lwd0;->d(Lvd0;FLandroid/graphics/RectF;Lwd0$a;Landroid/graphics/Path;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget-object v0, v0, Lqd0$b;->a:Lvd0;

    invoke-virtual {v0}, Lvd0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget-object v0, v0, Lqd0$b;->a:Lvd0;

    invoke-virtual {v0}, Lvd0;->g()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->d()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lqd0;->l()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lqd0;->f:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lqd0;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lqd0;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqd0;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lqd0;->h:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lqd0;->l()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lqd0;->f:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lqd0;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lqd0;->j:Landroid/graphics/Region;

    iget-object v1, p0, Lqd0;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lqd0;->h:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lqd0;->h:Landroid/graphics/Region;

    iget-object v1, p0, Lqd0;->j:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lqd0;->h:Landroid/graphics/Region;

    return-object v0
.end method

.method public final h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqd0;->b:[Lxd0$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lqd0;->l:Ltd0;

    iget-object v3, p0, Lqd0;->a:Lqd0$b;

    iget v3, v3, Lqd0$b;->h:I

    invoke-virtual {v1, v2, v3, p1}, Lxd0$g;->b(Ltd0;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, Lqd0;->c:[Lxd0$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lqd0;->l:Ltd0;

    iget-object v3, p0, Lqd0;->a:Lqd0$b;

    iget v3, v3, Lqd0$b;->h:I

    invoke-virtual {v1, v2, v3, p1}, Lxd0$g;->b(Ltd0;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqd0;->d:Z

    invoke-virtual {p0}, Lqd0;->n()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget-object v0, v0, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lqd0;->k:Landroid/graphics/Paint;

    iget-object v3, p0, Lqd0;->f:Landroid/graphics/Path;

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget-object v4, v0, Lqd0$b;->a:Lvd0;

    invoke-virtual {p0}, Lqd0;->l()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lqd0;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lvd0;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lvd0;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4}, Lvd0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lvd0;->h()Lnd0;

    move-result-object p3

    invoke-virtual {p3}, Lnd0;->d()F

    move-result p3

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public l()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lqd0;->g:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lqd0;->g:Landroid/graphics/RectF;

    return-object v0
.end method

.method public m(Landroid/graphics/Rect;Landroid/graphics/Path;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p2}, Lqd0;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lqd0$b;

    iget-object v1, p0, Lqd0;->a:Lqd0$b;

    invoke-direct {v0, v1}, Lqd0$b;-><init>(Lqd0$b;)V

    iput-object v0, p0, Lqd0;->a:Lqd0$b;

    return-object p0
.end method

.method public final n()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqd0;->d:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    invoke-virtual {p0}, Lqd0;->q()V

    return p1
.end method

.method public p(F)V
    .locals 2

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget v1, v0, Lqd0$b;->g:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lqd0$b;->h:I

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iput p1, v0, Lqd0$b;->g:F

    invoke-virtual {p0}, Lqd0;->n()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget-object v1, v0, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v0}, Lqd0;->h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lqd0;->o:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqd0;->l:Ltd0;

    iget-object v1, p0, Lqd0;->a:Lqd0$b;

    iget-object v1, v1, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Ltd0;->c(I)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget v1, v0, Lqd0$b;->f:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lqd0$b;->f:I

    invoke-virtual {p0}, Lqd0;->n()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iput-object p1, v0, Lqd0$b;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lqd0;->n()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqd0;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iput-object p1, v0, Lqd0$b;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lqd0;->q()V

    invoke-virtual {p0}, Lqd0;->n()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lqd0;->a:Lqd0$b;

    iget-object v1, v0, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lqd0$b;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lqd0;->q()V

    invoke-virtual {p0}, Lqd0;->n()V

    :cond_0
    return-void
.end method
