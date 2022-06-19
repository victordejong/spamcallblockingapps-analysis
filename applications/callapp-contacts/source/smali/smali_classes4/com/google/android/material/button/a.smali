.class final Lcom/google/android/material/button/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Z


# instance fields
.field final b:Lcom/google/android/material/button/MaterialButton;

.field c:Lcom/google/android/material/k/m;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Landroid/graphics/PorterDuff$Mode;

.field k:Landroid/content/res/ColorStateList;

.field l:Landroid/content/res/ColorStateList;

.field m:Landroid/content/res/ColorStateList;

.field n:Landroid/graphics/drawable/Drawable;

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field private t:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/a;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/k/m;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 78
    iput-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 79
    iput-object p2, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7

    .line 163
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/a;->d:I

    iget v3, p0, Lcom/google/android/material/button/a;->f:I

    iget v4, p0, Lcom/google/android/material/button/a;->e:I

    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method private b(Lcom/google/android/material/k/m;)V
    .locals 2

    const/4 v0, 0x0

    .line 3345
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4345
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 363
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    :cond_0
    const/4 v0, 0x1

    .line 4358
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5358
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/a;->e()Lcom/google/android/material/k/q;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/google/android/material/button/a;->e()Lcom/google/android/material/k/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/k/q;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    :cond_2
    return-void
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 203
    new-instance v0, Lcom/google/android/material/k/h;

    iget-object v1, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    invoke-direct {v0, v1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 208
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 210
    :cond_0
    iget v1, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/k/h;->a(FLandroid/content/res/ColorStateList;)V

    .line 212
    new-instance v1, Lcom/google/android/material/k/h;

    iget-object v2, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    invoke-direct {v1, v2}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v1, v2}, Lcom/google/android/material/k/h;->setTint(I)V

    .line 215
    iget v3, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v5, Lcom/google/android/material/a$b;->colorSurface:I

    .line 2053
    invoke-static {v4, v5}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 215
    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/k/h;->a(FI)V

    .line 221
    sget-boolean v3, Lcom/google/android/material/button/a;->a:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 222
    new-instance v3, Lcom/google/android/material/k/h;

    iget-object v6, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    invoke-direct {v3, v6}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    .line 223
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 226
    invoke-static {v6}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-direct {p0, v7}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    return-object v3

    .line 233
    :cond_2
    new-instance v3, Lcom/google/android/material/i/a;

    iget-object v6, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    invoke-direct {v3, v6}, Lcom/google/android/material/i/a;-><init>(Lcom/google/android/material/k/m;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 235
    invoke-static {v6}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 234
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 236
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v2

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v4

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    .line 239
    invoke-direct {p0, v3}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/google/android/material/k/q;
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/k/q;

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/k/q;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final a(Z)Lcom/google/android/material/k/h;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 329
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 331
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 333
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/k/h;

    return-object p1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->t:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 336
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/k/h;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final a()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1345
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget v1, p0, Lcom/google/android/material/button/a;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->r(F)V

    :cond_0
    return-void
.end method

.method final a(II)V
    .locals 7

    .line 411
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 413
    iget-object v2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result v2

    .line 414
    iget-object v3, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v3

    .line 415
    iget v4, p0, Lcom/google/android/material/button/a;->f:I

    .line 416
    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    .line 417
    iput p2, p0, Lcom/google/android/material/button/a;->g:I

    .line 418
    iput p1, p0, Lcom/google/android/material/button/a;->f:I

    .line 419
    iget-boolean v6, p0, Lcom/google/android/material/button/a;->p:Z

    if-nez v6, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->a()V

    .line 423
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v5

    invoke-static {v6, v0, v1, v2, v3}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method final a(Lcom/google/android/material/k/m;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    .line 389
    invoke-direct {p0, p1}, Lcom/google/android/material/button/a;->b(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method final b()V
    .locals 2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 153
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method final c()V
    .locals 5

    const/4 v0, 0x0

    .line 2345
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v1

    const/4 v2, 0x1

    .line 2358
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 300
    iget v3, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/k/h;->a(FLandroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_1

    .line 302
    iget v1, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v3, Lcom/google/android/material/a$b;->colorSurface:I

    .line 3053
    invoke-static {v0, v3}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v0

    .line 302
    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/k/h;->a(FI)V

    :cond_1
    return-void
.end method
