.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/k;
.source "FloatingActionButton.java"

# interfaces
.implements Landroidx/core/h/t;
.implements Landroidx/core/widget/l;
.implements Lcom/google/android/material/k/a;
.implements Lcom/google/android/material/q/n;


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    a = Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.end annotation

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
.field private static final c:I


# instance fields
.field a:Z

.field final b:Landroid/graphics/Rect;

.field private d:Landroid/content/res/ColorStateList;

.field private e:Landroid/graphics/PorterDuff$Mode;

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/PorterDuff$Mode;

.field private h:Landroid/content/res/ColorStateList;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroidx/appcompat/widget/k;

.field private final p:Lcom/google/android/material/k/c;

.field private q:Lcom/google/android/material/floatingactionbutton/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_FloatingActionButton:I

    sput v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/google/android/material/a$b;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 207
    sget v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/internal/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    sget-object v2, Lcom/google/android/material/a$l;->FloatingActionButton:[I

    sget v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:I

    new-array v5, v10, [I

    move-object v1, p2

    move v3, p3

    .line 212
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 215
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_backgroundTint:I

    .line 216
    invoke-static {v0, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    .line 218
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_backgroundTintMode:I

    .line 220
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 219
    invoke-static {v2, v3}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    .line 221
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_rippleColor:I

    .line 222
    invoke-static {v0, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    .line 224
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_fabSize:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    .line 225
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_fabCustomSize:I

    .line 226
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 227
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_borderWidth:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    .line 228
    sget v2, Lcom/google/android/material/a$l;->FloatingActionButton_elevation:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 229
    sget v3, Lcom/google/android/material/a$l;->FloatingActionButton_hoveredFocusedTranslationZ:I

    .line 230
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 231
    sget v4, Lcom/google/android/material/a$l;->FloatingActionButton_pressedTranslationZ:I

    .line 232
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 233
    sget v5, Lcom/google/android/material/a$l;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v1, v5, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/a$d;->mtrl_fab_min_touch_target:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 236
    sget v6, Lcom/google/android/material/a$l;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    .line 238
    sget v6, Lcom/google/android/material/a$l;->FloatingActionButton_showMotionSpec:I

    .line 239
    invoke-static {v0, v1, v6}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v6

    .line 240
    sget v7, Lcom/google/android/material/a$l;->FloatingActionButton_hideMotionSpec:I

    .line 241
    invoke-static {v0, v1, v7}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v7

    .line 242
    sget v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:I

    sget-object v9, Lcom/google/android/material/q/k;->a:Lcom/google/android/material/q/c;

    .line 243
    invoke-static {v0, p2, p3, v8, v9}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/q/c;)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    .line 247
    sget v8, Lcom/google/android/material/a$l;->FloatingActionButton_ensureMinTouchTargetSize:I

    .line 248
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 250
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    new-instance v1, Landroidx/appcompat/widget/k;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/k;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroidx/appcompat/widget/k;

    .line 253
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroidx/appcompat/widget/k;

    invoke-virtual {v1, p2, p3}, Landroidx/appcompat/widget/k;->a(Landroid/util/AttributeSet;I)V

    .line 255
    new-instance v1, Lcom/google/android/material/k/c;

    invoke-direct {v1, p0}, Lcom/google/android/material/k/c;-><init>(Lcom/google/android/material/k/b;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/k/c;

    .line 257
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/q/k;)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    iget-object v9, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    iget-object v10, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    iget v11, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    .line 259
    invoke-virtual {v0, v1, v9, v10, v11}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    .line 260
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/material/floatingactionbutton/b;->a(I)V

    .line 261
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/b;->a(F)V

    .line 262
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/material/floatingactionbutton/b;->b(F)V

    .line 263
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/floatingactionbutton/b;->c(F)V

    .line 264
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->b(I)V

    .line 265
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/a/h;)V

    .line 266
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/material/floatingactionbutton/b;->b(Lcom/google/android/material/a/h;)V

    .line 267
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/material/floatingactionbutton/b;->a(Z)V

    .line 269
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    if-eqz v0, :cond_0

    .line 782
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 798
    :goto_0
    return v0

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 786
    packed-switch p1, :pswitch_data_0

    .line 798
    :pswitch_0
    sget v1, Lcom/google/android/material/a$d;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 789
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 790
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 791
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1d6

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 792
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 793
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result v0

    goto :goto_0

    .line 795
    :pswitch_2
    sget v1, Lcom/google/android/material/a$d;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 898
    .line 899
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 900
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 901
    sparse-switch v1, :sswitch_data_0

    .line 918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 911
    :sswitch_0
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 920
    :goto_0
    :sswitch_1
    return p0

    :sswitch_2
    move p0, v0

    .line 916
    goto :goto_0

    .line 901
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)Lcom/google/android/material/floatingactionbutton/b$e;
    .locals 1

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 714
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 885
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 886
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 887
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 888
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 889
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 467
    if-nez v1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 472
    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 477
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    .line 478
    if-nez v0, :cond_2

    .line 479
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 483
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 484
    invoke-static {v2, v0}, Landroidx/appcompat/widget/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private e()Lcom/google/android/material/floatingactionbutton/b;
    .locals 2

    .prologue
    .line 1442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1443
    new-instance v0, Lcom/google/android/material/floatingactionbutton/c;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/p/b;)V

    .line 1445
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/p/b;)V

    goto :goto_0
.end method

.method private getImpl()Lcom/google/android/material/floatingactionbutton/b;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/b;

    if-nez v0, :cond_0

    .line 1435
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/b;

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    return-void
.end method

.method public a(Lcom/google/android/material/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/a/k",
            "<+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/a/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$d;)V

    .line 1350
    return-void
.end method

.method public a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    .line 581
    return-void
.end method

.method a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 2

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)Lcom/google/android/material/floatingactionbutton/b$e;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/floatingactionbutton/b;->b(Lcom/google/android/material/floatingactionbutton/b$e;Z)V

    .line 585
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/k/c;

    invoke-virtual {v0}, Lcom/google/android/material/k/c;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 866
    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 868
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Landroid/graphics/Rect;)V

    .line 869
    const/4 v0, 0x1

    .line 871
    :cond_0
    return v0
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 621
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 881
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Landroid/graphics/Rect;)V

    .line 882
    return-void
.end method

.method public b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    .line 613
    return-void
.end method

.method b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 2

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)Lcom/google/android/material/floatingactionbutton/b$e;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$e;Z)V

    .line 617
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->w()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->v()Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 816
    invoke-super {p0}, Lcom/google/android/material/internal/k;->drawableStateChanged()V

    .line 817
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a([I)V

    .line 818
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->a()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 1

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->b()F

    move-result v0

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 1

    .prologue
    .line 1271
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->c()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSize()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/k/c;

    invoke-virtual {v0}, Lcom/google/android/material/k/c;->c()I

    move-result v0

    return v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 1325
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->g()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getRippleColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->e()Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/k;

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->f()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    return v0
.end method

.method getSizeDimension()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 822
    invoke-super {p0}, Lcom/google/android/material/internal/k;->jumpDrawablesToCurrentState()V

    .line 823
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->j()V

    .line 824
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 804
    invoke-super {p0}, Lcom/google/android/material/internal/k;->onAttachedToWindow()V

    .line 805
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->q()V

    .line 806
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 810
    invoke-super {p0}, Lcom/google/android/material/internal/k;->onDetachedFromWindow()V

    .line 811
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->r()V

    .line 812
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 276
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    .line 277
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/b;->o()V

    .line 279
    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(II)I

    move-result v1

    .line 280
    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(II)I

    move-result v0

    .line 284
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    .line 289
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 844
    instance-of v0, p1, Lcom/google/android/material/r/a;

    if-nez v0, :cond_0

    .line 845
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 854
    :goto_0
    return-void

    .line 849
    :cond_0
    check-cast p1, Lcom/google/android/material/r/a;

    .line 850
    invoke-virtual {p1}, Lcom/google/android/material/r/a;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/k;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 852
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/k/c;

    iget-object v0, p1, Lcom/google/android/material/r/a;->a:Landroidx/b/g;

    const-string/jumbo v2, "expandableWidgetHelper"

    .line 853
    invoke-virtual {v0, v2}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 852
    invoke-virtual {v1, v0}, Lcom/google/android/material/k/c;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 828
    invoke-super {p0}, Lcom/google/android/material/internal/k;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 829
    if-nez v0, :cond_0

    .line 830
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 833
    :cond_0
    new-instance v1, Lcom/google/android/material/r/a;

    invoke-direct {v1, v0}, Lcom/google/android/material/r/a;-><init>(Landroid/os/Parcelable;)V

    .line 834
    iget-object v0, v1, Lcom/google/android/material/r/a;->a:Landroidx/b/g;

    const-string/jumbo v2, "expandableWidgetHelper"

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/k/c;

    .line 835
    invoke-virtual {v3}, Lcom/google/android/material/k/c;->b()Landroid/os/Bundle;

    move-result-object v3

    .line 834
    invoke-virtual {v0, v2, v3}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x0

    .line 931
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 499
    const-string/jumbo v0, "FloatingActionButton"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 489
    const-string/jumbo v0, "FloatingActionButton"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .prologue
    .line 494
    const-string/jumbo v0, "FloatingActionButton"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 367
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/content/res/ColorStateList;

    .line 368
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/content/res/ColorStateList;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 394
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/graphics/PorterDuff$Mode;

    .line 395
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 397
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(F)V

    .line 1214
    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    .line 1226
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 1

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->b(F)V

    .line 1249
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    .line 1261
    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 1

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->c(F)V

    .line 1284
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    .line 1296
    return-void
.end method

.method public setCustomSize(I)V
    .locals 2

    .prologue
    .line 746
    if-gez p1, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    if-eq p1, v0, :cond_1

    .line 751
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 754
    :cond_1
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .prologue
    .line 1189
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setElevation(F)V

    .line 1190
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->e(F)V

    .line 1191
    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->i()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Z)V

    .line 553
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 555
    :cond_0
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lcom/google/android/material/k/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/c;->a(I)V

    .line 640
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->b(Lcom/google/android/material/a/h;)V

    .line 1335
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/a/h;)V

    .line 1344
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 512
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->d()V

    .line 514
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    .line 518
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/k;->a(I)V

    .line 506
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    .line 507
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .prologue
    .line 326
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 327
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 341
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    .line 342
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->b(Landroid/content/res/ColorStateList;)V

    .line 344
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .prologue
    .line 1412
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setScaleX(F)V

    .line 1413
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->l()V

    .line 1414
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .prologue
    .line 1418
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setScaleY(F)V

    .line 1419
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->l()V

    .line 1420
    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 1

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->b(Z)V

    .line 1431
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/q/k;)V

    .line 524
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 1310
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/a/h;)V

    .line 1311
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/a/h;)V

    .line 1320
    return-void
.end method

.method public setSize(I)V
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 690
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    if-eq p1, v0, :cond_0

    .line 691
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    .line 694
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 406
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 425
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 440
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/content/res/ColorStateList;

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    .line 443
    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 454
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/graphics/PorterDuff$Mode;

    .line 455
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    .line 457
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .prologue
    .line 1394
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setTranslationX(F)V

    .line 1395
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->k()V

    .line 1396
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .prologue
    .line 1400
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setTranslationY(F)V

    .line 1401
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->k()V

    .line 1402
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1

    .prologue
    .line 1406
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setTranslationZ(F)V

    .line 1407
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->k()V

    .line 1408
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    if-eq v0, p1, :cond_0

    .line 658
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:Z

    .line 659
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->n()V

    .line 661
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0, p1}, Lcom/google/android/material/internal/k;->setVisibility(I)V

    .line 561
    return-void
.end method
