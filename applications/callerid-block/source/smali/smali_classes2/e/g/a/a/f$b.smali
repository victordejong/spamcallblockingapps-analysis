.class public Le/g/a/a/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/animation/Interpolator;

.field private j:Landroid/view/animation/Interpolator;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Le/g/a/a/f$b;->b:I

    const/16 v0, 0x190

    iput v0, p0, Le/g/a/a/f$b;->f:I

    sget-object v0, Lcom/callerid/block/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/f$b;->b(I)Le/g/a/a/f$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0001

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/f$b;->a(I)Le/g/a/a/f$b;

    const/16 p3, 0x10

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Le/g/a/a/f$b;->s(I)Le/g/a/a/f$b;

    const/4 v1, 0x6

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Le/g/a/a/f$b;->i(I)Le/g/a/a/f$b;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Le/g/a/b/b;->g(Landroid/content/res/TypedArray;I)I

    move-result v2

    if-lt v2, p3, :cond_0

    const/16 p3, 0x1f

    if-gt v2, p3, :cond_0

    const/4 p3, -0x1

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    goto :goto_0

    :cond_0
    const/16 p3, 0x30

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    :goto_0
    invoke-virtual {p0, p3}, Le/g/a/a/f$b;->m(I)Le/g/a/a/f$b;

    const/16 p3, 0xf

    invoke-static {p1, p4}, Le/g/a/b/b;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/f$b;->r(I)Le/g/a/a/f$b;

    const/16 p3, 0xe

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/f$b;->q(I)Le/g/a/a/f$b;

    const/4 p3, 0x7

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p0, p3}, Le/g/a/a/f$b;->j(Landroid/view/animation/Interpolator;)Le/g/a/a/f$b;

    :cond_1
    const/16 p3, 0xb

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->n(Landroid/view/animation/Interpolator;)Le/g/a/a/f$b;

    :cond_2
    const/16 p1, 0x9

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->l(I)Le/g/a/a/f$b;

    const/4 p1, 0x5

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->h(I)Le/g/a/a/f$b;

    const/16 p1, 0x11

    iget p3, p0, Le/g/a/a/f$b;->l:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->u(I)Le/g/a/a/f$b;

    const/16 p1, 0x13

    iget p3, p0, Le/g/a/a/f$b;->m:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->v(I)Le/g/a/a/f$b;

    const/4 p1, 0x4

    iget p3, p0, Le/g/a/a/f$b;->o:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->f(I)Le/g/a/a/f$b;

    const/4 p1, 0x2

    iget p3, p0, Le/g/a/a/f$b;->n:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->e(I)Le/g/a/a/f$b;

    const/16 p1, 0xc

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->o(I)Le/g/a/a/f$b;

    const/16 p1, 0x8

    iget p3, p0, Le/g/a/a/f$b;->p:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->k(I)Le/g/a/a/f$b;

    const/16 p1, 0xd

    iget p3, p0, Le/g/a/a/f$b;->r:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->p(I)Le/g/a/a/f$b;

    const/16 p1, 0x12

    iget p3, p0, Le/g/a/a/f$b;->q:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->t(I)Le/g/a/a/f$b;

    const/4 p1, 0x3

    iget p3, p0, Le/g/a/a/f$b;->s:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/f$b;->d(I)Le/g/a/a/f$b;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->b:I

    return-object p0
.end method

.method public b(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->c:I

    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Le/g/a/a/f$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/f$b;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public d(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->s:I

    return-object p0
.end method

.method public e(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->n:I

    return-object p0
.end method

.method public f(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->o:I

    return-object p0
.end method

.method public g()Le/g/a/a/f;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Le/g/a/a/f$b;->i:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, v0, Le/g/a/a/f$b;->i:Landroid/view/animation/Interpolator;

    :cond_0
    iget-object v1, v0, Le/g/a/a/f$b;->j:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Le/g/a/a/f$b;->j:Landroid/view/animation/Interpolator;

    :cond_1
    new-instance v1, Le/g/a/a/f;

    move-object v2, v1

    iget-object v3, v0, Le/g/a/a/f$b;->a:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Le/g/a/a/f$b;->b:I

    iget v5, v0, Le/g/a/a/f$b;->c:I

    iget v6, v0, Le/g/a/a/f$b;->d:I

    iget v7, v0, Le/g/a/a/f$b;->h:I

    iget v8, v0, Le/g/a/a/f$b;->e:I

    iget v9, v0, Le/g/a/a/f$b;->f:I

    iget v10, v0, Le/g/a/a/f$b;->g:I

    iget-object v11, v0, Le/g/a/a/f$b;->i:Landroid/view/animation/Interpolator;

    iget-object v12, v0, Le/g/a/a/f$b;->j:Landroid/view/animation/Interpolator;

    iget v13, v0, Le/g/a/a/f$b;->k:I

    iget v14, v0, Le/g/a/a/f$b;->l:I

    iget v15, v0, Le/g/a/a/f$b;->m:I

    move-object/from16 v23, v1

    iget v1, v0, Le/g/a/a/f$b;->o:I

    move/from16 v16, v1

    iget v1, v0, Le/g/a/a/f$b;->n:I

    move/from16 v17, v1

    iget v1, v0, Le/g/a/a/f$b;->p:I

    move/from16 v18, v1

    iget v1, v0, Le/g/a/a/f$b;->q:I

    move/from16 v19, v1

    iget v1, v0, Le/g/a/a/f$b;->r:I

    move/from16 v20, v1

    iget v1, v0, Le/g/a/a/f$b;->s:I

    move/from16 v21, v1

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Le/g/a/a/f;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIIILe/g/a/a/f$a;)V

    return-object v23
.end method

.method public h(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->l:I

    iput p1, p0, Le/g/a/a/f$b;->m:I

    iput p1, p0, Le/g/a/a/f$b;->n:I

    iput p1, p0, Le/g/a/a/f$b;->o:I

    return-object p0
.end method

.method public i(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->h:I

    return-object p0
.end method

.method public j(Landroid/view/animation/Interpolator;)Le/g/a/a/f$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/f$b;->i:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public k(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->p:I

    return-object p0
.end method

.method public l(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->k:I

    return-object p0
.end method

.method public m(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->e:I

    return-object p0
.end method

.method public n(Landroid/view/animation/Interpolator;)Le/g/a/a/f$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/f$b;->j:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public o(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->p:I

    iput p1, p0, Le/g/a/a/f$b;->q:I

    iput p1, p0, Le/g/a/a/f$b;->r:I

    iput p1, p0, Le/g/a/a/f$b;->s:I

    return-object p0
.end method

.method public p(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->r:I

    return-object p0
.end method

.method public q(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->f:I

    return-object p0
.end method

.method public r(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->g:I

    return-object p0
.end method

.method public s(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->d:I

    return-object p0
.end method

.method public t(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->q:I

    return-object p0
.end method

.method public u(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->l:I

    return-object p0
.end method

.method public v(I)Le/g/a/a/f$b;
    .locals 0

    iput p1, p0, Le/g/a/a/f$b;->m:I

    return-object p0
.end method
