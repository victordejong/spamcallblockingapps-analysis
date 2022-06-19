.class public Lic0;
.super Lbc0;
.source ""

# interfaces
.implements Lhc0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic0$b;
    }
.end annotation


# instance fields
.field public A:Llc0;

.field public B:Z

.field public C:F

.field public D:F

.field public E:Z

.field public F:[Llc0;

.field public G:I

.field public H:Landroid/graphics/Paint;

.field public I:F

.field public J:Z

.field public K:Landroid/graphics/drawable/Drawable;

.field public L:Lhc0$a;

.field public final m:Landroid/graphics/Rect;

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Rect;

.field public final p:Landroid/graphics/Rect;

.field public q:Lic0$b;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Lec0;

.field public t:Landroid/graphics/Bitmap;

.field public u:Landroid/graphics/BitmapShader;

.field public v:Landroid/graphics/Canvas;

.field public w:Landroid/graphics/Matrix;

.field public x:Landroid/graphics/PorterDuffColorFilter;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lic0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lic0$b;-><init>(Lbc0$b;Lic0;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lic0;-><init>(Lic0$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    new-instance v0, Lic0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lic0$b;-><init>(Lbc0$b;Lic0;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lic0;-><init>(Lic0$b;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lbc0;->e(Landroid/graphics/drawable/Drawable;[IIIIII)Lbc0$a;

    :cond_0
    if-eqz p3, :cond_1

    const/4 v2, 0x0

    sget v3, Ll80;->carbon_mask:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lbc0;->e(Landroid/graphics/drawable/Drawable;[IIIIII)Lbc0$a;

    :cond_1
    iput-object p2, p0, Lic0;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lic0;->I(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lbc0;->j()V

    invoke-virtual {p0}, Lbc0;->p()V

    invoke-virtual {p0}, Lic0;->P()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Lhc0$a;)V
    .locals 2

    sget-object v0, Lhc0$a;->c:Lhc0$a;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lic0;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lic0;->L:Lhc0$a;

    return-void
.end method

.method public constructor <init>(Lic0$b;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lbc0;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lic0;->m:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lic0;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lic0;->o:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lic0;->p:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lic0;->G:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lic0;->I:F

    new-instance v0, Lic0$b;

    invoke-direct {v0, p1, p0, p2}, Lic0$b;-><init>(Lbc0$b;Lic0;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lic0;->q:Lic0$b;

    iput-object v0, p0, Lbc0;->b:Lbc0$b;

    iget p1, v0, Lbc0$b;->a:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lbc0;->j()V

    invoke-virtual {p0}, Lbc0;->p()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lic0;->I:F

    :cond_1
    invoke-virtual {p0}, Lic0;->P()V

    return-void
.end method

.method public synthetic constructor <init>(Lic0$b;Landroid/content/res/Resources;Lic0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lic0;-><init>(Lic0$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method private u(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Lic0;->q:Lic0$b;

    iget v1, v0, Lbc0$b;->k:I

    invoke-static {p1}, Lnc0;->b(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lbc0$b;->k:I

    invoke-static {p1}, Lnc0;->a(Landroid/content/res/TypedArray;)[I

    move-result-object v1

    iput-object v1, v0, Lic0$b;->s:[I

    sget v0, Lp80;->RippleDrawable_android_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lic0;->q:Lic0$b;

    iput-object v0, v1, Lic0$b;->t:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lic0;->q:Lic0$b;

    sget v1, Lp80;->RippleDrawable_android_radius:I

    iget v2, v0, Lic0$b;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lic0$b;->u:I

    invoke-virtual {p0, p1}, Lic0;->R(Landroid/content/res/TypedArray;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lic0;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final B()I
    .locals 6

    iget-object v0, p0, Lic0;->A:Llc0;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lic0;->G:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lic0;->s:Lec0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lec0;->t()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lic0;->r:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v3, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v5, v3, v4

    iget-object v5, v5, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public final C()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lic0;->H:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lic0;->H:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lic0;->H:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Lic0;->H:Landroid/graphics/Paint;

    return-object v0
.end method

.method public D(Z)V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lic0;->y:Z

    :cond_0
    return-void
.end method

.method public final E()Z
    .locals 1

    invoke-virtual {p0}, Lbc0;->l()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F()V
    .locals 4

    iget v0, p0, Lic0;->G:I

    iget-object v1, p0, Lic0;->F:[Llc0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lfc0;->o()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lic0;->A:Llc0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfc0;->o()V

    :cond_1
    iget-object v0, p0, Lic0;->s:Lec0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfc0;->o()V

    :cond_2
    return-void
.end method

.method public final G()V
    .locals 6

    iget-object v0, p0, Lic0;->F:[Llc0;

    iget v1, p0, Lic0;->G:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Llc0;->G()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-object v5, v0, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_2

    const/4 v4, 0x0

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lic0;->G:I

    return-void
.end method

.method public final H(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lic0;->z:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lic0;->z:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lic0;->L(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lic0;->M()V

    :cond_1
    :goto_0
    return-void
.end method

.method public I(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lic0;->q:Lic0$b;

    iput-object p1, v0, Lic0$b;->t:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lic0;->D(Z)V

    return-void
.end method

.method public final J(Z)V
    .locals 1

    iget-boolean v0, p0, Lic0;->B:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lic0;->B:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lic0;->N()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lic0;->O()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final K(Landroid/util/DisplayMetrics;)V
    .locals 1

    iget v0, p0, Lic0;->I:F

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lic0;->I:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lic0;->D(Z)V

    :cond_0
    return-void
.end method

.method public final L(Z)V
    .locals 3

    iget-object v0, p0, Lic0;->s:Lec0;

    if-nez v0, :cond_0

    new-instance v0, Lec0;

    iget-object v1, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lec0;-><init>(Lic0;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lic0;->s:Lec0;

    :cond_0
    iget-object v0, p0, Lic0;->s:Lec0;

    iget-object v1, p0, Lic0;->q:Lic0$b;

    iget v1, v1, Lic0$b;->u:I

    int-to-float v1, v1

    iget v2, p0, Lic0;->I:F

    invoke-virtual {v0, v1, v2}, Lfc0;->q(FF)V

    iget-object v0, p0, Lic0;->s:Lec0;

    invoke-virtual {v0, p1}, Lfc0;->i(Z)V

    return-void
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Lic0;->s:Lec0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfc0;->j()V

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 9

    iget v0, p0, Lic0;->G:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lic0;->A:Llc0;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lic0;->E:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lic0;->E:Z

    iget v0, p0, Lic0;->C:F

    iget v2, p0, Lic0;->D:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v2, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    :goto_0
    move v6, v0

    move v7, v2

    invoke-virtual {p0}, Lic0;->E()Z

    move-result v8

    new-instance v0, Llc0;

    iget-object v5, p0, Lic0;->n:Landroid/graphics/Rect;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Llc0;-><init>(Lic0;Landroid/graphics/Rect;FFZ)V

    iput-object v0, p0, Lic0;->A:Llc0;

    :cond_2
    iget-object v0, p0, Lic0;->A:Llc0;

    iget-object v2, p0, Lic0;->q:Lic0$b;

    iget v2, v2, Lic0$b;->u:I

    int-to-float v2, v2

    iget v3, p0, Lic0;->I:F

    invoke-virtual {v0, v2, v3}, Lfc0;->q(FF)V

    iget-object v0, p0, Lic0;->A:Llc0;

    invoke-virtual {v0, v1}, Lfc0;->i(Z)V

    return-void
.end method

.method public final O()V
    .locals 4

    iget-object v0, p0, Lic0;->A:Llc0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lic0;->F:[Llc0;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [Llc0;

    iput-object v1, p0, Lic0;->F:[Llc0;

    :cond_0
    iget-object v1, p0, Lic0;->F:[Llc0;

    iget v2, p0, Lic0;->G:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lic0;->G:I

    aput-object v0, v1, v2

    invoke-virtual {v0}, Lfc0;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lic0;->A:Llc0;

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 1

    sget v0, Ll80;->carbon_mask:I

    invoke-virtual {p0, v0}, Lbc0;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lic0;->r:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final Q()V
    .locals 7

    iget-boolean v0, p0, Lic0;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lic0;->B()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lic0;->y:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, Lic0;->t:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lic0;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lic0;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Lic0;->t:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lic0;->t:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lic0;->t:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lic0;->u:Landroid/graphics/BitmapShader;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lic0;->t:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lic0;->v:Landroid/graphics/Canvas;

    :goto_1
    iget-object v3, p0, Lic0;->w:Landroid/graphics/Matrix;

    if-nez v3, :cond_6

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lic0;->w:Landroid/graphics/Matrix;

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    :goto_2
    iget-object v3, p0, Lic0;->x:Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_7

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lic0;->x:Landroid/graphics/PorterDuffColorFilter;

    :cond_7
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lic0;->v:Landroid/graphics/Canvas;

    neg-int v5, v3

    int-to-float v5, v5

    neg-int v6, v2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lic0;->v:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lic0;->A(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_8
    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lic0;->v:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lic0;->z(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lic0;->v:Landroid/graphics/Canvas;

    int-to-float v1, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_a
    :goto_4
    iget-object v0, p0, Lic0;->t:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lic0;->t:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lic0;->u:Landroid/graphics/BitmapShader;

    iput-object v1, p0, Lic0;->v:Landroid/graphics/Canvas;

    :cond_b
    iput-object v1, p0, Lic0;->w:Landroid/graphics/Matrix;

    iput-object v1, p0, Lic0;->x:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public final R(Landroid/content/res/TypedArray;)V
    .locals 2

    iget-object v0, p0, Lic0;->q:Lic0$b;

    iget-object v1, v0, Lic0$b;->t:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    iget-object v0, v0, Lic0$b;->s:[I

    if-eqz v0, :cond_0

    sget v1, Lp80;->RippleDrawable_android_color:I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Lhc0$a;
    .locals 1

    iget-object v0, p0, Lic0;->L:Lhc0$a;

    return-object v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Lbc0;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, Lic0;->q:Lic0$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lic0;->P()V

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lic0;->K:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lic0;->q:Lic0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbc0$b;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lbc0;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lic0;->G()V

    invoke-virtual {p0}, Lic0;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Lic0;->z(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lic0;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lic0;->K:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ld80;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lic0;->q:Lic0$b;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 9

    invoke-virtual {p0}, Lic0;->E()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lic0;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lic0;->p:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lic0;->m:Landroid/graphics/Rect;

    iget-object v5, p0, Lic0;->F:[Llc0;

    iget v6, p0, Lic0;->G:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Llc0;->k(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lic0;->s:Lec0;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lfc0;->k(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v3, v3, Lbc0$a;->l:I

    sget v4, Ll80;->carbon_mask:I

    if-eq v3, v4, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getRadius()I
    .locals 1

    iget-object v0, p0, Lic0;->q:Lic0$b;

    iget v0, v0, Lic0$b;->u:I

    return v0
.end method

.method public bridge synthetic h(Lbc0$b;Landroid/content/res/Resources;)Lbc0$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lic0;->x(Lbc0$b;Landroid/content/res/Resources;)Lic0$b;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    sget-object v0, Lp80;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lbc0;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lic0;->u(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lic0;->r(I)V

    invoke-super {p0, p1, p2, p3, p4}, Lbc0;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lic0;->K(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lic0;->P()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lic0;->D(Z)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v0, p0, Lic0;->A:Llc0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfc0;->g()V

    :cond_0
    iget-object v0, p0, Lic0;->s:Lec0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfc0;->g()V

    :cond_1
    invoke-virtual {p0}, Lic0;->v()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Lbc0;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    check-cast v0, Lic0$b;

    iput-object v0, p0, Lic0;->q:Lic0$b;

    sget v0, Ll80;->carbon_mask:I

    invoke-virtual {p0, v0}, Lbc0;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lic0;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lbc0;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lic0;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lic0;->F()V

    :cond_0
    iget-object p1, p0, Lic0;->s:Lec0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfc0;->n()V

    :cond_1
    iget-object p1, p0, Lic0;->A:Llc0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lfc0;->n()V

    :cond_2
    invoke-virtual {p0}, Lic0;->invalidateSelf()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 10

    invoke-super {p0, p1}, Lbc0;->onStateChange([I)Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_3

    aget v8, p1, v3

    const v9, 0x101009e

    if-ne v8, v9, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const v9, 0x101009c

    if-ne v8, v9, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const v9, 0x10100a7

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Lic0;->J(Z)V

    if-nez v6, :cond_5

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    invoke-virtual {p0, v2, v6}, Lic0;->H(ZZ)V

    return v0
.end method

.method public r(I)V
    .locals 0

    invoke-super {p0, p1}, Lbc0;->r(I)V

    return-void
.end method

.method public setHotspot(FF)V
    .locals 2

    iget-object v0, p0, Lic0;->A:Llc0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lic0;->s:Lec0;

    if-nez v1, :cond_1

    :cond_0
    iput p1, p0, Lic0;->C:F

    iput p2, p0, Lic0;->D:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lic0;->E:Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Llc0;->H(FF)V

    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lic0;->J:Z

    iget-object v0, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lic0;->F()V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    iget-object v0, p0, Lic0;->q:Lic0$b;

    iput p1, v0, Lic0$b;->u:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lic0;->D(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lbc0;->setVisible(ZZ)Z

    move-result p2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lic0;->w()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lic0;->B:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lic0;->N()V

    :cond_1
    iget-boolean p1, p0, Lic0;->z:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lic0;->L(Z)V

    :cond_2
    invoke-virtual {p0}, Lic0;->jumpToCurrentState()V

    :cond_3
    :goto_0
    return p2
.end method

.method public final v()V
    .locals 5

    iget v0, p0, Lic0;->G:I

    iget-object v1, p0, Lic0;->F:[Llc0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lfc0;->g()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v2, p0, Lic0;->G:I

    invoke-virtual {p0, v2}, Lic0;->D(Z)V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lic0;->A:Llc0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfc0;->g()V

    iput-object v2, p0, Lic0;->A:Llc0;

    iput-boolean v1, p0, Lic0;->B:Z

    :cond_0
    iget-object v0, p0, Lic0;->s:Lec0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfc0;->g()V

    iput-object v2, p0, Lic0;->s:Lec0;

    iput-boolean v1, p0, Lic0;->z:Z

    :cond_1
    invoke-virtual {p0}, Lic0;->v()V

    return-void
.end method

.method public x(Lbc0$b;Landroid/content/res/Resources;)Lic0$b;
    .locals 1

    new-instance v0, Lic0$b;

    invoke-direct {v0, p1, p0, p2}, Lic0$b;-><init>(Lbc0$b;Lic0;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final y(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lic0;->A:Llc0;

    iget-object v1, p0, Lic0;->s:Lec0;

    iget v2, p0, Lic0;->G:I

    if-nez v0, :cond_1

    if-gtz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lec0;->t()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Lic0;->n:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lic0;->Q()V

    iget-object v5, p0, Lic0;->u:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lic0;->w:Landroid/graphics/Matrix;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v5, p0, Lic0;->u:Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lic0;->w:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    iget-object v5, p0, Lic0;->q:Lic0$b;

    iget-object v5, v5, Lic0$b;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v6

    const/high16 v7, -0x1000000

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {p0}, Lic0;->C()Landroid/graphics/Paint;

    move-result-object v8

    iget-object v9, p0, Lic0;->x:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v9, :cond_3

    or-int/2addr v5, v7

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v9, v5, v7}, Lzb0;->a(Landroid/graphics/PorterDuffColorFilter;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lic0;->x:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lic0;->u:Landroid/graphics/BitmapShader;

    goto :goto_0

    :cond_3
    const v7, 0xffffff

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lec0;->t()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, p1, v8}, Lfc0;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_4
    if-lez v2, :cond_5

    iget-object v1, p0, Lic0;->F:[Llc0;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {v6, p1, v8}, Lfc0;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, v8}, Lfc0;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_6
    neg-float v0, v3

    neg-float v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final z(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v3, v3, Lbc0$a;->l:I

    sget v4, Ll80;->carbon_mask:I

    if-eq v3, v4, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
