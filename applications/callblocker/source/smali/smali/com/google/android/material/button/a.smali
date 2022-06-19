.class Lcom/google/android/material/button/a;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/google/android/material/button/MaterialButton;

.field private c:Lcom/google/android/material/q/k;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/PorterDuff$Mode;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 76
    iput-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 77
    iput-object p2, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    .line 78
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 6

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/a;->d:I

    iget v3, p0, Lcom/google/android/material/button/a;->f:I

    iget v4, p0, Lcom/google/android/material/button/a;->e:I

    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private b(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()Lcom/google/android/material/q/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()Lcom/google/android/material/q/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->k()Lcom/google/android/material/q/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->k()Lcom/google/android/material/q/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/q/n;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 363
    :cond_2
    return-void
.end method

.method private c(Z)Lcom/google/android/material/q/g;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_3

    .line 321
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 323
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 324
    if-eqz p1, :cond_0

    .line 325
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/g;

    .line 332
    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    .line 324
    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    .line 328
    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/g;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 327
    goto :goto_2

    .line 332
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 195
    new-instance v2, Lcom/google/android/material/q/g;

    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    invoke-direct {v2, v0}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 202
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/q/g;->a(FLandroid/content/res/ColorStateList;)V

    .line 204
    new-instance v3, Lcom/google/android/material/q/g;

    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    invoke-direct {v3, v0}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 206
    invoke-virtual {v3, v1}, Lcom/google/android/material/q/g;->setTint(I)V

    .line 207
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v4, v0

    iget-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v5, Lcom/google/android/material/a$b;->colorSurface:I

    .line 210
    invoke-static {v0, v5}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v0

    .line 207
    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/google/android/material/q/g;->a(FI)V

    .line 213
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Lcom/google/android/material/q/g;

    iget-object v4, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    invoke-direct {v0, v4}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    iput-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 215
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    const/4 v4, -0x1

    invoke-static {v0, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 216
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 218
    invoke-static {v4}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v1

    aput-object v2, v6, v7

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-direct {p0, v5}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v4, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 223
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 231
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Lcom/google/android/material/o/a;

    iget-object v4, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    invoke-direct {v0, v4}, Lcom/google/android/material/o/a;-><init>(Lcom/google/android/material/q/k;)V

    iput-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 226
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 227
    invoke-static {v4}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 226
    invoke-static {v0, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 228
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v4, v1

    aput-object v2, v4, v7

    iget-object v1, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v6

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 231
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    goto :goto_1
.end method

.method private n()V
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    .line 290
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()Lcom/google/android/material/q/g;

    move-result-object v1

    .line 291
    if-eqz v0, :cond_0

    .line 292
    iget v2, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/q/g;->a(FLandroid/content/res/ColorStateList;)V

    .line 293
    if-eqz v1, :cond_0

    .line 294
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v2, v0

    iget-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v3, Lcom/google/android/material/a$b;->colorSurface:I

    .line 297
    invoke-static {v0, v3}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v0

    .line 294
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/q/g;->a(FI)V

    .line 301
    :cond_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Lcom/google/android/material/q/g;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lcom/google/android/material/q/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 147
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTint(I)V

    .line 245
    :cond_0
    return-void
.end method

.method a(II)V
    .locals 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/material/button/a;->d:I

    iget v2, p0, Lcom/google/android/material/button/a;->f:I

    iget v3, p0, Lcom/google/android/material/button/a;->e:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/google/android/material/button/a;->g:I

    sub-int v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 165
    :cond_0
    return-void
.end method

.method a(Landroid/content/res/TypedArray;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 81
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_android_insetLeft:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->d:I

    .line 82
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_android_insetRight:I

    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->e:I

    .line 84
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->f:I

    .line 85
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_android_insetBottom:I

    .line 86
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->g:I

    .line 89
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->h:I

    .line 91
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    iget v1, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k;->a(F)Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/q/k;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 95
    :cond_0
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->i:I

    .line 97
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_backgroundTintMode:I

    .line 99
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 98
    invoke-static {v0, v1}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 100
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$l;->MaterialButton_backgroundTint:I

    .line 101
    invoke-static {v0, p1, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$l;->MaterialButton_strokeColor:I

    .line 104
    invoke-static {v0, p1, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 106
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$l;->MaterialButton_rippleColor:I

    .line 107
    invoke-static {v0, p1, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 110
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/button/a;->r:Z

    .line 111
    sget v0, Lcom/google/android/material/a$l;->MaterialButton_elevation:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1}, Landroidx/core/h/u;->i(Landroid/view/View;)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3}, Landroidx/core/h/u;->j(Landroid/view/View;)I

    move-result v3

    .line 117
    iget-object v4, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v4

    .line 120
    iget-object v5, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v5

    .line 123
    if-eqz v5, :cond_1

    .line 124
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Lcom/google/android/material/q/g;->r(F)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget v5, p0, Lcom/google/android/material/button/a;->d:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/google/android/material/button/a;->f:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/google/android/material/button/a;->e:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    add-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    .line 134
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 178
    :cond_0
    return-void
.end method

.method a(Lcom/google/android/material/q/k;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    .line 381
    invoke-direct {p0, p1}, Lcom/google/android/material/button/a;->b(Lcom/google/android/material/q/k;)V

    .line 382
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->o:Z

    .line 186
    invoke-direct {p0}, Lcom/google/android/material/button/a;->n()V

    .line 187
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    if-eq v0, p1, :cond_0

    .line 279
    iput p1, p0, Lcom/google/android/material/button/a;->i:I

    .line 280
    invoke-direct {p0}, Lcom/google/android/material/button/a;->n()V

    .line 282
    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 249
    iput-object p1, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 250
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 252
    invoke-static {p1}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/o/a;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/o/a;

    .line 255
    invoke-static {p1}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/android/material/o/a;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->r:Z

    .line 342
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    return v0
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/a;->h:I

    if-eq v0, p1, :cond_1

    .line 307
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/a;->h:I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 310
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k;->a(F)Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/q/k;)V

    .line 312
    :cond_1
    return-void
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 268
    invoke-direct {p0}, Lcom/google/android/material/button/a;->n()V

    .line 270
    :cond_0
    return-void
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method e()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    return v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/google/android/material/button/a;->h:I

    return v0
.end method

.method i()Lcom/google/android/material/q/g;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lcom/google/android/material/q/g;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->r:Z

    return v0
.end method

.method public k()Lcom/google/android/material/q/n;
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 367
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/n;

    .line 376
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/n;

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/q/k;

    return-object v0
.end method
