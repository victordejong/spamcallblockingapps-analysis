.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/VisibilityAwareImageButton;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;
.implements Landroidx/core/view/u;
.implements Landroidx/core/widget/k;
.implements Lcom/google/android/material/f/a;
.implements Lcom/google/android/material/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
    }
.end annotation


# static fields
.field private static final e:I


# instance fields
.field a:Z

.field final b:Landroid/graphics/Rect;

.field public final c:Lcom/google/android/material/f/c;

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/PorterDuff$Mode;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:Landroid/content/res/ColorStateList;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroidx/appcompat/widget/h;

.field private r:Lcom/google/android/material/floatingactionbutton/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_FloatingActionButton:I

    sput v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 201
    sget v0, Lcom/google/android/material/a$b;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 207
    sget v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:I

    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    .line 189
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 211
    sget-object v2, Lcom/google/android/material/a$l;->FloatingActionButton:[I

    const/4 v7, 0x0

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 212
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_backgroundTint:I

    .line 216
    invoke-static {p1, v0, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    .line 218
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_backgroundTintMode:I

    const/4 v2, -0x1

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x0

    .line 219
    invoke-static {v1, v3}, Lcom/google/android/material/internal/r;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    .line 221
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_rippleColor:I

    .line 222
    invoke-static {p1, v0, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Landroid/content/res/ColorStateList;

    .line 224
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    .line 225
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_fabCustomSize:I

    .line 226
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    .line 227
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 228
    sget v1, Lcom/google/android/material/a$l;->FloatingActionButton_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 229
    sget v3, Lcom/google/android/material/a$l;->FloatingActionButton_hoveredFocusedTranslationZ:I

    .line 230
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 231
    sget v4, Lcom/google/android/material/a$l;->FloatingActionButton_pressedTranslationZ:I

    .line 232
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 233
    sget v4, Lcom/google/android/material/a$l;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/a$d;->mtrl_fab_min_touch_target:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 236
    sget v5, Lcom/google/android/material/a$l;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:I

    .line 238
    sget v5, Lcom/google/android/material/a$l;->FloatingActionButton_showMotionSpec:I

    .line 239
    invoke-static {p1, v0, v5}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v5

    .line 240
    sget v8, Lcom/google/android/material/a$l;->FloatingActionButton_hideMotionSpec:I

    .line 241
    invoke-static {p1, v0, v8}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v8

    .line 242
    sget-object v9, Lcom/google/android/material/k/m;->a:Lcom/google/android/material/k/c;

    .line 243
    invoke-static {p1, p2, p3, v6, v9}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/k/c;)Lcom/google/android/material/k/m$a;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    .line 247
    sget v6, Lcom/google/android/material/a$l;->FloatingActionButton_ensureMinTouchTargetSize:I

    .line 248
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 250
    sget v7, Lcom/google/android/material/a$l;->FloatingActionButton_android_enabled:I

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setEnabled(Z)V

    .line 252
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    new-instance v0, Landroidx/appcompat/widget/h;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Landroidx/appcompat/widget/h;

    .line 255
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/h;->a(Landroid/util/AttributeSet;I)V

    .line 257
    new-instance p2, Lcom/google/android/material/f/c;

    invoke-direct {p2, p0}, Lcom/google/android/material/f/c;-><init>(Lcom/google/android/material/f/b;)V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Lcom/google/android/material/f/c;

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/k/m;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Landroid/content/res/ColorStateList;

    iget v7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 261
    invoke-virtual {p1, p2, p3, v0, v7}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    .line 2228
    iput v4, p1, Lcom/google/android/material/floatingactionbutton/d;->l:I

    .line 263
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(F)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/material/floatingactionbutton/d;->b(F)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/floatingactionbutton/d;->c(F)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:I

    .line 2272
    iget p3, p1, Lcom/google/android/material/floatingactionbutton/d;->p:I

    if-eq p3, p2, :cond_0

    .line 2273
    iput p2, p1, Lcom/google/android/material/floatingactionbutton/d;->p:I

    .line 2274
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->b()V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    .line 2335
    iput-object v5, p1, Lcom/google/android/material/floatingactionbutton/d;->m:Lcom/google/android/material/a/h;

    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    .line 2344
    iput-object v8, p1, Lcom/google/android/material/floatingactionbutton/d;->n:Lcom/google/android/material/a/h;

    .line 269
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    .line 2356
    iput-boolean v6, p1, Lcom/google/android/material/floatingactionbutton/d;->g:Z

    .line 271
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x1

    .line 788
    :goto_0
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    if-eqz v1, :cond_0

    return v1

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    .line 805
    sget p1, Lcom/google/android/material/a$d;->design_fab_size_normal:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 802
    :cond_1
    sget p1, Lcom/google/android/material/a$d;->design_fab_size_mini:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 796
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 797
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 798
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x1d6

    if-ge p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static a(II)I
    .locals 2

    .line 906
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 907
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    if-ne v0, p0, :cond_0

    move p0, p1

    goto :goto_0

    .line 925
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 918
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:I

    return p0
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)Lcom/google/android/material/floatingactionbutton/d$e;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 721
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 480
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 485
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    .line 487
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 491
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    invoke-static {v1, v2}, Landroidx/appcompat/widget/f;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private f()Lcom/google/android/material/floatingactionbutton/d;
    .locals 2

    .line 1452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1453
    new-instance v0, Lcom/google/android/material/floatingactionbutton/e;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/e;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/j/b;)V

    return-object v0

    .line 1455
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/d;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/j/b;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)Lcom/google/android/material/floatingactionbutton/d$e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/floatingactionbutton/d;->b(Lcom/google/android/material/floatingactionbutton/d$e;Z)V

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    invoke-static {p0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 875
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 2

    .line 892
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 893
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 894
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 895
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)Lcom/google/android/material/floatingactionbutton/d$e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$e;Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Lcom/google/android/material/f/c;

    .line 4056
    iget-boolean v0, v0, Lcom/google/android/material/f/c;->b:Z

    return v0
.end method

.method final c()I
    .locals 1

    .line 784
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/android/material/floatingactionbutton/d;
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lcom/google/android/material/floatingactionbutton/d;

    if-nez v0, :cond_0

    .line 1445
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lcom/google/android/material/floatingactionbutton/d;

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lcom/google/android/material/floatingactionbutton/d;

    return-object v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 823
    invoke-super {p0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 824
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->a([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 829
    invoke-super {p0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 830
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->d()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 811
    invoke-super {p0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 812
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 4697
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-eqz v1, :cond_0

    .line 4698
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    invoke-static {v1, v2}, Lcom/google/android/material/k/i;->a(Landroid/view/View;Lcom/google/android/material/k/h;)V

    .line 4701
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4702
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 4728
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/d;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v2, :cond_1

    .line 4729
    new-instance v2, Lcom/google/android/material/floatingactionbutton/d$5;

    invoke-direct {v2, v0}, Lcom/google/android/material/floatingactionbutton/d$5;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    iput-object v2, v0, Lcom/google/android/material/floatingactionbutton/d;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 4739
    :cond_1
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/d;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 4702
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 817
    invoke-super {p0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 818
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 5707
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 5708
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/d;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 5709
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/d;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    .line 5710
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->B:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c()I

    move-result v0

    .line 278
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:I

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/d;->h()V

    .line 281
    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(II)I

    move-result p1

    .line 282
    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(II)I

    move-result p2

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 289
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 851
    instance-of v0, p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    .line 852
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 856
    :cond_0
    check-cast p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    .line 857
    invoke-virtual {p1}, Lcom/google/android/material/stateful/ExtendableSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 859
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Lcom/google/android/material/f/c;

    iget-object p1, p1, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/b/g;

    const-string v1, "expandableWidgetHelper"

    .line 860
    invoke-virtual {p1, v1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "expanded"

    const/4 v2, 0x0

    .line 6071
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/material/f/c;->b:Z

    const-string v1, "expandedComponentIdHint"

    .line 6072
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/material/f/c;->c:I

    .line 6074
    iget-boolean p1, v0, Lcom/google/android/material/f/c;->b:Z

    if-eqz p1, :cond_1

    .line 6091
    iget-object p1, v0, Lcom/google/android/material/f/c;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 6092
    instance-of v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_1

    .line 6093
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Lcom/google/android/material/f/c;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 835
    invoke-super {p0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 840
    :cond_0
    new-instance v1, Lcom/google/android/material/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 841
    iget-object v0, v1, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/b/g;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Lcom/google/android/material/f/c;

    .line 6062
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6063
    iget-boolean v4, v2, Lcom/google/android/material/f/c;->b:Z

    const-string v5, "expanded"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6064
    iget v2, v2, Lcom/google/android/material/f/c;->c:I

    const-string v4, "expandedComponentIdHint"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "expandableWidgetHelper"

    .line 841
    invoke-virtual {v0, v2, v3}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 938
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 375
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 3213
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-eqz v1, :cond_0

    .line 3214
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/k/h;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3216
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->e:Lcom/google/android/material/floatingactionbutton/c;

    if-eqz v1, :cond_1

    .line 3217
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/d;->e:Lcom/google/android/material/floatingactionbutton/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/c;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 402
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 3222
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-eqz v1, :cond_0

    .line 3223
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(F)V

    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->b(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    .line 1270
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 1

    .line 1293
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->c(F)V

    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1

    .line 1305
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 757
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    if-eq p1, v0, :cond_0

    .line 758
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    .line 759
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void

    .line 754
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom size must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    .line 1196
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setElevation(F)V

    .line 1197
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 3352
    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/d;->g:Z

    if-eq p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 3356
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/d;->g:Z

    .line 561
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Lcom/google/android/material/f/c;

    .line 4081
    iput p1, v0, Lcom/google/android/material/f/c;->c:I

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .line 1344
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 6344
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/d;->n:Lcom/google/android/material/a/h;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1353
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 520
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->b()V

    .line 522
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Landroidx/appcompat/widget/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/h;->a(I)V

    .line 514
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e()V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    .line 328
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 343
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Landroid/content/res/ColorStateList;

    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1422
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setScaleX(F)V

    .line 1423
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->f()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1428
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setScaleY(F)V

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->f()V

    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 1

    .line 1440
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 6360
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/d;->h:Z

    .line 6361
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->h()V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/k/m;)V
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .line 1320
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object v0

    .line 6335
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/d;->m:Lcom/google/android/material/a/h;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1329
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 696
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    .line 697
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    if-eq p1, v0, :cond_0

    .line 698
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    .line 699
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 448
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    .line 449
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e()V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 462
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:Landroid/graphics/PorterDuff$Mode;

    .line 463
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e()V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1404
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationX(F)V

    .line 1405
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->e()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1410
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationY(F)V

    .line 1411
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->e()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    .line 1416
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationZ(F)V

    .line 1417
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->e()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    if-eq v0, p1, :cond_0

    .line 665
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    .line 666
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()Lcom/google/android/material/floatingactionbutton/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/d;->g()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 567
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method
