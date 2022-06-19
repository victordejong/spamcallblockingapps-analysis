.class public Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;
.super Landroidx/appcompat/widget/d;
.source "SourceFile"


# static fields
.field public static final synthetic v0:I


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:F

.field public F:F

.field public G:Ljava/lang/String;

.field public H:I

.field public I:Ljava/lang/String;

.field public J:F

.field public K:Z

.field public L:F

.field public M:Landroid/graphics/Typeface;

.field public N:Ljava/lang/CharSequence;

.field public O:Z

.field public P:I

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:[Landroid/graphics/Bitmap;

.field public W:[Landroid/graphics/Bitmap;

.field public a0:[Landroid/graphics/Bitmap;

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e:I

.field public e0:I

.field public f:I

.field public f0:I

.field public g:I

.field public g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:Z

.field public k:I

.field public k0:Landroid/content/res/ColorStateList;

.field public l:I

.field public l0:Landroid/content/res/ColorStateList;

.field public m:I

.field public m0:Li4/d;

.field public n:Z

.field public n0:Landroid/graphics/Paint;

.field public o:Z

.field public o0:Landroid/text/TextPaint;

.field public p:I

.field public p0:Landroid/text/StaticLayout;

.field public q:I

.field public q0:Lp8/e;

.field public r:I

.field public r0:Lp8/e;

.field public s:I

.field public s0:Lp8/e;

.field public t:I

.field public t0:Landroid/view/View$OnFocusChangeListener;

.field public u:I

.field public u0:Landroid/view/View$OnFocusChangeListener;

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->H:I

    .line 3
    new-instance v1, Li4/d;

    invoke-direct {v1}, Li4/d;-><init>()V

    iput-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m0:Li4/d;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    .line 5
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    const/16 v1, 0x20

    .line 6
    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v3

    iput v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e0:I

    const/16 v3, 0x30

    .line 7
    invoke-virtual {p0, v3}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v3

    iput v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    iput v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g0:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07005f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->B:I

    .line 11
    sget-object v1, Lh8/k;->D:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v3, 0x1a

    .line 12
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k0:Landroid/content/res/ColorStateList;

    const/16 v3, 0x1b

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l0:Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    const/high16 v4, -0x1000000

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    .line 15
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010433

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    iget v4, v4, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "colorPrimary"

    const-string v7, "attr"

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    iget v4, v4, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 21
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "colorPrimary not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    :catch_1
    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    :goto_0
    const/16 v5, 0x18

    .line 23
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 24
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelInternal(I)V

    const/4 v4, 0x6

    const-string v6, "#e7492E"

    .line 25
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    const/16 v4, 0x17

    .line 26
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    const/16 v4, 0x15

    .line 27
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    const/16 v4, 0x19

    .line 28
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    const/16 v4, 0xe

    .line 29
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    const/16 v4, 0x10

    .line 30
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->H:I

    const/16 v6, 0x16

    .line 31
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->D:I

    .line 32
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 35
    iput-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->M:Landroid/graphics/Typeface;

    .line 36
    iget-object v7, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    const/16 v6, 0x1c

    .line 37
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 39
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 40
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    const/16 v6, 0xb

    .line 41
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    if-nez v6, :cond_3

    .line 42
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    :cond_3
    const/16 v6, 0xa

    .line 43
    iget v7, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l:I

    const/16 v6, 0xd

    .line 44
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i:I

    const/16 v6, 0xc

    .line 45
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j:I

    const/16 v6, 0x9

    .line 46
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->T:Z

    .line 47
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    const/16 v6, 0x11

    .line 48
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->O:Z

    const/16 v6, 0x1d

    .line 49
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->P:I

    .line 50
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->R:Z

    const/16 v6, 0x12

    .line 51
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f(I)[Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    const/16 v6, 0x14

    .line 52
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f(I)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    const/4 v0, 0x5

    .line 53
    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c0:Z

    const v6, 0x7f08014a

    .line 54
    invoke-virtual {p0, v6}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f(I)[Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->a0:[Landroid/graphics/Bitmap;

    const/16 v6, 0x13

    .line 55
    invoke-virtual {p0, v4}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    const/16 v4, 0x8

    .line 56
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->z:Z

    const/16 v4, 0xf

    .line 57
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->A:Z

    const/16 v4, 0x1e

    .line 58
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->b0:Z

    const/4 v4, 0x4

    .line 59
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->U:Z

    .line 60
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_0

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 64
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s:I

    .line 65
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q:I

    .line 66
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->t:I

    .line 67
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r:I

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k()V

    .line 75
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    .line 76
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m()V

    .line 77
    new-instance p1, Le9/b;

    invoke-direct {p1, p0}, Le9/b;-><init>(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    new-instance p1, Le9/c;

    invoke-direct {p1, p0}, Le9/c;-><init>(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->t0:Landroid/view/View$OnFocusChangeListener;

    .line 79
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    new-instance p1, Le9/a;

    invoke-direct {p1, p0}, Le9/a;-><init>(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->d()V

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d5
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method public static synthetic a(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lp8/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getLabelAnimator()Lp8/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lp8/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getLabelFocusAnimator()Lp8/e;

    move-result-object p0

    return-object p0
.end method

.method private getBottomEllipsisWidth()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->B:I

    mul-int/lit8 v0, v0, 0x5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getBottomTextLeftOffset()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getCharactersCounterWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getBottomEllipsisWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getBottomTextRightOffset()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getBottomEllipsisWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getCharactersCounterWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getButtonsCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c0:Z

    return v0
.end method

.method private getCharactersCounterText()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    const-string v1, " / "

    if-gtz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 7
    :cond_1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    if-gtz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v0

    const-string v2, "+"

    if-eqz v0, :cond_2

    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v0

    const-string v2, "-"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_2

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private getCharactersCounterWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getCharactersCounterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLabelAnimator()Lp8/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q0:Lp8/e;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    const-string v1, "floatingLabelFraction"

    invoke-static {p0, v1, v0}, Lp8/e;->l(Ljava/lang/Object;Ljava/lang/String;[F)Lp8/e;

    move-result-object v0

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q0:Lp8/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q0:Lp8/e;

    iget-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->T:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lp8/e;->m(J)Lp8/e;

    .line 4
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q0:Lp8/e;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLabelFocusAnimator()Lp8/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r0:Lp8/e;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    const-string v1, "focusFraction"

    invoke-static {p0, v1, v0}, Lp8/e;->l(Ljava/lang/Object;Ljava/lang/String;[F)Lp8/e;

    move-result-object v0

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r0:Lp8/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r0:Lp8/e;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setFloatingLabelInternal(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n:Z

    .line 2
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o:Z

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n:Z

    .line 4
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o:Z

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n:Z

    .line 6
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->C:I

    goto :goto_4

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getGravity()I

    move-result v0

    const/4 v2, 0x5

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getGravity()I

    move-result v0

    const/4 v2, 0x3

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 7
    :cond_5
    :goto_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v6, v0

    .line 8
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    :goto_3
    move-object v3, v2

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getBottomTextLeftOffset()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getBottomTextRightOffset()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingRight()I

    move-result v5

    sub-int v5, v2, v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p0:Landroid/text/StaticLayout;

    .line 9
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->D:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    :goto_4
    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->F:F

    int-to-float v0, v0

    const/4 v3, 0x1

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_8

    .line 11
    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s0:Lp8/e;

    if-nez v2, :cond_7

    new-array v2, v3, [F

    aput v0, v2, v1

    const-string v4, "currentBottomLines"

    .line 12
    invoke-static {p0, v4, v2}, Lp8/e;->l(Ljava/lang/Object;Ljava/lang/String;[F)Lp8/e;

    move-result-object v2

    iput-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s0:Lp8/e;

    goto :goto_5

    .line 13
    :cond_7
    invoke-virtual {v2}, Lp8/i;->d()V

    .line 14
    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s0:Lp8/e;

    new-array v4, v3, [F

    aput v0, v4, v1

    invoke-virtual {v2, v4}, Lp8/e;->n([F)V

    .line 15
    :goto_5
    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s0:Lp8/e;

    .line 16
    invoke-virtual {v2, v1}, Lp8/i;->j(Z)V

    .line 17
    :cond_8
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->F:F

    return v3
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->d0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->U:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->S:Z

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5
    :goto_0
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    if-lt v0, v3, :cond_4

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    if-lez v3, :cond_5

    if-gt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->S:Z

    :goto_2
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    invoke-direct {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getButtonsCount()I

    move-result v1

    mul-int v0, v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s:I

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g:I

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q:I

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->t:I

    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r:I

    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f:I

    add-int/2addr v2, v4

    invoke-super {p0, v1, v0, v3, v2}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    return-void
.end method

.method public final f(I)[Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e0:I

    if-le v2, v3, :cond_1

    div-int v1, v2, v3

    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e0:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-le v3, v4, :cond_3

    int-to-float v3, v4

    if-le v1, v4, :cond_2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    move v6, v4

    move v4, v1

    move v1, v6

    .line 5
    :goto_0
    invoke-static {p1, v4, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    :cond_3
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 7
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v3, v0, v5

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    const v4, 0xffffff

    and-int v5, v3, v4

    invoke-static {v3}, Li4/d;->z(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, -0x1000000

    goto :goto_2

    :cond_4
    const/high16 v3, -0x76000000

    :goto_2
    or-int/2addr v3, v5

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 13
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v3, v0, v3

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    and-int/2addr v4, v3

    invoke-static {v3}, Li4/d;->z(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x4c000000    # 3.3554432E7f

    goto :goto_3

    :cond_5
    const/high16 v3, 0x42000000    # 32.0f

    :goto_3
    or-int/2addr v3, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 15
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 16
    new-instance p1, Landroid/graphics/Canvas;

    aget-object v1, v0, v1

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public getAccentTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->M:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getBottomTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    return v0
.end method

.method public getCurrentBottomLines()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->E:F

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    return v0
.end method

.method public getFloatingLabelFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->J:F

    return v0
.end method

.method public getFloatingLabelPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l:I

    return v0
.end method

.method public getFloatingLabelText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFloatingLabelTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j:I

    return v0
.end method

.method public getFloatingLabelTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i:I

    return v0
.end method

.method public getFocusFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->L:F

    return v0
.end method

.method public getHelperText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getHelperTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->H:I

    return v0
.end method

.method public getInnerPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r:I

    return v0
.end method

.method public getInnerPaddingLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->s:I

    return v0
.end method

.method public getInnerPaddingRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->t:I

    return v0
.end method

.method public getInnerPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q:I

    return v0
.end method

.method public getMaxCharacters()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    return v0
.end method

.method public getMinBottomTextLines()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->D:I

    return v0
.end method

.method public getMinCharacters()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->P:I

    return v0
.end method

.method public getValidators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)[Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e0:I

    invoke-static {v0, p1, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    if-lez v0, :cond_0

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

.method public final k()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->D:I

    if-lez v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_2
    iput v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->C:I

    int-to-float v0, v1

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->E:F

    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i:I

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l:I

    :goto_0
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e:I

    .line 2
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->E:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    iget-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->O:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    mul-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f:I

    .line 5
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    add-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g:I

    .line 6
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    add-int/2addr v1, v0

    :goto_3
    iput v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h:I

    .line 7
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e()V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->J:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->K:Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r()V

    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    add-int/2addr v2, v4

    :goto_0
    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v2

    iget-object v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    sub-int/2addr v4, v5

    :goto_1
    add-int/2addr v2, v4

    .line 5
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    sub-int v1, v2, v1

    .line 7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v4, v2

    iget v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g0:I

    sub-int/2addr v4, v2

    int-to-float v5, v1

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_3

    .line 8
    iget v5, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    int-to-float v0, v4

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    add-int/2addr v4, v2

    int-to-float v0, v4

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->S:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->d0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->d0:Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v1

    iget-object v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    add-int/2addr v2, v4

    :goto_0
    add-int v8, v1, v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v1

    iget-object v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v2

    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    sub-int/2addr v2, v4

    :goto_1
    add-int v9, v1, v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    .line 4
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    aget-object v1, v1, v5

    .line 7
    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    sub-int v5, v8, v5

    iget v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v6, v12

    div-int/2addr v6, v11

    add-int/2addr v6, v5

    .line 8
    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v5, v2

    iget v12, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g0:I

    sub-int/2addr v5, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/2addr v12, v11

    add-int/2addr v12, v5

    int-to-float v5, v6

    int-to-float v6, v12

    .line 9
    iget-object v12, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 10
    :cond_5
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x3

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x2

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    aget-object v1, v1, v5

    .line 12
    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h0:I

    add-int/2addr v5, v9

    iget v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v6, v12

    div-int/2addr v6, v11

    add-int/2addr v6, v5

    .line 13
    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v5, v2

    iget v12, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g0:I

    sub-int/2addr v5, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/2addr v12, v11

    add-int/2addr v12, v5

    int-to-float v5, v6

    int-to-float v6, v12

    .line 14
    iget-object v12, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 15
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c0:Z

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 16
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v8

    goto :goto_4

    .line 18
    :cond_a
    iget v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    sub-int v1, v9, v1

    .line 19
    :goto_4
    iget-object v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->a0:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    .line 20
    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f0:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v11

    add-int/2addr v4, v1

    .line 21
    iget v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v1, v2

    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g0:I

    sub-int/2addr v1, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v11

    add-int/2addr v5, v1

    int-to-float v1, v4

    int-to-float v4, v5

    .line 22
    iget-object v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    :cond_b
    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->O:Z

    const/high16 v12, 0x44000000    # 512.0f

    const v13, 0xffffff

    const/4 v14, -0x1

    if-nez v1, :cond_12

    .line 24
    iget v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int v15, v2, v1

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o()Z

    move-result v1

    if-nez v1, :cond_c

    .line 26
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    int-to-float v3, v15

    int-to-float v4, v9

    .line 27
    invoke-virtual {v0, v11}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 28
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 29
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->P:I

    if-eq v2, v14, :cond_d

    goto :goto_5

    :cond_d
    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    and-int/2addr v2, v13

    or-int/2addr v2, v12

    :goto_5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-virtual {v0, v10}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    int-to-float v6, v1

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 31
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v16, v1

    if-gez v1, :cond_11

    int-to-float v1, v8

    add-float v2, v1, v16

    int-to-float v3, v15

    add-float v4, v2, v6

    .line 32
    invoke-virtual {v0, v10}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v6, v18, v1

    add-float v16, v6, v16

    move/from16 v6, v18

    goto :goto_6

    .line 33
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 34
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    int-to-float v3, v15

    int-to-float v4, v9

    .line 35
    invoke-virtual {v0, v11}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 36
    :cond_f
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->P:I

    if-eq v2, v14, :cond_10

    goto :goto_7

    :cond_10
    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    and-int/2addr v2, v13

    const/high16 v3, 0x1e000000

    or-int/2addr v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    int-to-float v3, v15

    int-to-float v4, v9

    .line 37
    invoke-virtual {v0, v10}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v1

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_11
    :goto_8
    move v2, v15

    .line 38
    :cond_12
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 39
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 40
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v3

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v4, v1

    .line 41
    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j()Z

    move-result v1

    if-nez v1, :cond_14

    .line 43
    :cond_13
    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->S:Z

    if-nez v1, :cond_17

    .line 44
    :cond_14
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    .line 45
    iget-boolean v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->S:Z

    if-eqz v3, :cond_15

    .line 46
    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    and-int/2addr v3, v13

    or-int/2addr v3, v12

    goto :goto_9

    :cond_15
    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    :goto_9
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getCharactersCounterText()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v3

    if-eqz v3, :cond_16

    int-to-float v3, v8

    goto :goto_a

    :cond_16
    int-to-float v3, v9

    iget-object v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v3, v6

    :goto_a
    iget v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget-object v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v3, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    :cond_17
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p0:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1d

    .line 50
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    if-nez v1, :cond_19

    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->A:Z

    if-nez v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_18
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 51
    :cond_19
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    goto :goto_b

    :cond_1a
    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->H:I

    if-eq v3, v14, :cond_1b

    goto :goto_b

    :cond_1b
    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    and-int/2addr v3, v13

    or-int/2addr v3, v12

    :goto_b
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 54
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p0:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    sub-int v1, v9, v1

    int-to-float v1, v1

    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    .line 55
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getBottomTextLeftOffset()I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v1, v1

    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    :goto_c
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p0:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    :cond_1d
    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n:Z

    const/4 v3, 0x5

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 59
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 60
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m0:Li4/d;

    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->L:F

    iget v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j:I

    if-eq v6, v14, :cond_1e

    goto :goto_d

    :cond_1e
    iget v6, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    and-int/2addr v6, v13

    or-int/2addr v6, v12

    :goto_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v12, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v5, v6, v12}, Li4/d;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 61
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getGravity()I

    move-result v4

    and-int/2addr v4, v3

    if-eq v4, v3, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_e

    .line 63
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getGravity()I

    move-result v3

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_20

    move v1, v8

    goto :goto_f

    .line 64
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getInnerPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getInnerPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->getInnerPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v1, v5, v3}, Landroidx/recyclerview/widget/b;->g(FFFF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v8

    goto :goto_f

    :cond_21
    :goto_e
    int-to-float v3, v9

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 65
    :goto_f
    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l:I

    .line 66
    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q:I

    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i:I

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v3, v3

    iget-boolean v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->z:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_22

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_22
    iget v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->J:F

    :goto_10
    mul-float v3, v3, v5

    sub-float/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 67
    iget-boolean v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->z:Z

    if-eqz v4, :cond_23

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_23
    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->J:F

    :goto_11
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    const v5, 0x3f3d70a4    # 0.74f

    iget v12, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->L:F

    mul-float v12, v12, v5

    const v5, 0x3e851eb8    # 0.26f

    add-float/2addr v12, v5

    mul-float v12, v12, v4

    iget v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j:I

    if-eq v4, v14, :cond_24

    goto :goto_12

    :cond_24
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43800000    # 256.0f

    div-float v6, v4, v5

    :goto_12
    mul-float v12, v12, v6

    float-to-int v4, v12

    .line 68
    iget-object v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 69
    iget-object v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    int-to-float v1, v1

    int-to-float v3, v3

    iget-object v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_29

    .line 71
    iget-object v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o()Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u:I

    goto :goto_13

    :cond_26
    iget v3, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    :goto_13
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget v1, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v2

    if-eqz v2, :cond_27

    move v8, v9

    .line 74
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v10, -0x1

    .line 75
    :cond_28
    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->B:I

    invoke-static {v10, v2, v11, v8}, Landroid/support/v4/media/b;->b(IIII)I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    div-int/2addr v2, v11

    int-to-float v2, v2

    iget-object v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->B:I

    mul-int v3, v10, v2

    mul-int/lit8 v3, v3, 0x5

    div-int/2addr v3, v11

    add-int/2addr v3, v8

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    div-int/2addr v2, v11

    int-to-float v2, v2

    iget-object v5, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    iget v2, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->B:I

    mul-int v10, v10, v2

    mul-int/lit8 v10, v10, 0x9

    div-int/2addr v10, v11

    add-int/2addr v10, v8

    int-to-float v3, v10

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v4

    div-int/2addr v2, v11

    int-to-float v2, v2

    iget-object v4, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n0:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    :cond_29
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/AutoCompleteTextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c()Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c0:Z

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i0:Z

    .line 6
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j0:Z

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j0:Z

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_3
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j0:Z

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i0:Z

    if-eqz v0, :cond_5

    .line 12
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i0:Z

    return v2

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i0:Z

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    iput-boolean v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i0:Z

    .line 16
    iput-boolean v2, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j0:Z

    return v2

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j0:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->n(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    iput-boolean v1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j0:Z

    .line 19
    :cond_8
    iget-boolean v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i0:Z

    if-eqz v0, :cond_9

    return v2

    .line 20
    :cond_9
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l0:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x44000000    # 512.0f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k0:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009e

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    sget-object v4, Landroid/widget/AutoCompleteTextView;->EMPTY_STATE_SET:[I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    const v5, 0xffffff

    and-int v7, v4, v5

    const/high16 v8, -0x21000000

    or-int/2addr v7, v8

    aput v7, v1, v6

    and-int/2addr v4, v5

    const/high16 v5, 0x44000000    # 512.0f

    or-int/2addr v4, v5

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setAccentTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->M:Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->o0:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setAutoValidate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->R:Z

    return-void
.end method

.method public setBaseColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->p:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->m()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setBottomTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setCurrentBottomLines(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->E:F

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->I:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setErrorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabel(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelInternal(I)V

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setFloatingLabelAlwaysShown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->z:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    return-void
.end method

.method public setFloatingLabelAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->T:Z

    return-void
.end method

.method public setFloatingLabelFraction(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->J:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    return-void
.end method

.method public setFloatingLabelPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->N:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->j:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setFocusFraction(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->L:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->G:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setHelperTextAlwaysShown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->A:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    return-void
.end method

.method public setHelperTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->H:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setHideUnderline(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->O:Z

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setIconLeft(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f(I)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setIconLeft(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setIconLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h(Landroid/graphics/drawable/Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->V:[Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setIconRight(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->f(I)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setIconRight(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->g(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setIconRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->h(Landroid/graphics/drawable/Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->W:[Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    return-void
.end method

.method public setLengthChecker(Lf9/a;)V
    .locals 0

    return-void
.end method

.method public setMaxCharacters(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->x:I

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setMetHintTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l0:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q()V

    return-void
.end method

.method public setMetHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l0:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->q()V

    return-void
.end method

.method public setMetTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k0:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r()V

    return-void
.end method

.method public setMetTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k0:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->r()V

    return-void
.end method

.method public setMinBottomTextLines(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->D:I

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setMinCharacters(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->w:I

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->t0:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u0:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->u:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setShowClearButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->c0:Z

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->e()V

    return-void
.end method

.method public setSingleLineEllipsis(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->y:Z

    .line 2
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->l()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->P:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

    return-void
.end method

.method public setValidateOnFocusLost(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->b0:Z

    return-void
.end method
