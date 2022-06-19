.class public Lcom/github/clans/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionMenu$c;
    }
.end annotation


# instance fields
.field public A:I

.field public B:F

.field public C:F

.field public D:F

.field public E:I

.field public F:I

.field public G:I

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:I

.field public J:Landroid/view/animation/Interpolator;

.field public K:Landroid/view/animation/Interpolator;

.field public L:Z

.field public M:Z

.field public N:I

.field public O:I

.field public P:I

.field public R:I

.field public S:Landroid/graphics/Typeface;

.field public T:Z

.field public U:Landroid/widget/ImageView;

.field public V:Z

.field public W:I

.field public a:Landroid/animation/AnimatorSet;

.field public a0:Lcom/github/clans/fab/FloatingActionMenu$c;

.field public b:Landroid/animation/AnimatorSet;

.field public b0:Landroid/animation/ValueAnimator;

.field public c:Landroid/animation/AnimatorSet;

.field public c0:Landroid/animation/ValueAnimator;

.field public d:I

.field public d0:I

.field public e:Lcom/github/clans/fab/FloatingActionButton;

.field public e0:I

.field public f:I

.field public f0:Landroid/content/Context;

.field public g:I

.field public g0:Ljava/lang/String;

.field public h:I

.field public h0:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Landroid/os/Handler;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/content/res/ColorStateList;

.field public t:F

.field public u:I

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    .line 3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v1, v3}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v4}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v1, v4}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:I

    .line 13
    iput v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 15
    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Z

    .line 17
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    .line 18
    sget-object v3, Lj4/w0;->L:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 19
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    .line 20
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    const/16 v4, 0x13

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    const/16 p2, 0x1a

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez p2, :cond_0

    const p2, 0x7f010024

    goto :goto_0

    :cond_0
    const p2, 0x7f010023

    :goto_0
    const/16 v4, 0x1b

    .line 22
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:I

    const/16 p2, 0x12

    .line 23
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v4, :cond_1

    const v4, 0x7f010026

    goto :goto_1

    :cond_1
    const v4, 0x7f010025

    :goto_1
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    const/16 p2, 0x19

    .line 24
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    const/16 p2, 0x18

    .line 25
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    const/16 p2, 0x16

    .line 26
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    const/16 p2, 0x17

    .line 27
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    const/16 p2, 0x1f

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    const/4 v4, -0x1

    if-nez p2, :cond_2

    .line 29
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    :cond_2
    const/16 p2, 0x20

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:F

    const/16 p2, 0xf

    .line 31
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:I

    const/16 p2, 0x1c

    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:Z

    const/16 p2, 0xc

    const v5, -0xcccccd

    .line 33
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:I

    const/16 p2, 0xd

    const v5, -0xbbbbbc

    .line 34
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    const/16 p2, 0xe

    const v5, 0x66ffffff

    .line 35
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    const/16 p2, 0x26

    .line 36
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:Z

    const/16 p2, 0x22

    const/high16 v5, 0x66000000

    .line 37
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:I

    const/16 p2, 0x23

    .line 38
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:F

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:F

    const/16 p2, 0x24

    .line 39
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    const/16 p2, 0x25

    .line 40
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    const/4 p2, 0x4

    const v5, -0x25bcca

    .line 41
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:I

    const/4 p2, 0x5

    const v5, -0x18afbd

    .line 42
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    const/4 p2, 0x6

    const v5, -0x66000001

    .line 43
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    const/16 p2, 0x32

    .line 44
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    const/16 p2, 0xb

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v5, 0x7f0800b4

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    :cond_3
    const/16 p2, 0x1d

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    const/16 p2, 0x11

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:I

    const/16 p2, 0x14

    .line 49
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    const/16 p2, 0xa

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    const/16 p2, 0x1e

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    const/16 p2, 0x10

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 53
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/16 p2, 0x21

    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:I

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    const/16 p2, 0x8

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:Z

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:Ljava/lang/String;

    :cond_5
    const/16 p2, 0x15

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 62
    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    .line 63
    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 64
    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 65
    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 66
    :cond_6
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:Landroid/view/animation/Interpolator;

    .line 67
    new-instance p2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    .line 68
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    invoke-direct {p2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/content/Context;

    .line 69
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    .line 70
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 71
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 72
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    new-array v7, v3, [I

    aput v0, v7, v0

    aput p2, v7, v1

    .line 73
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    .line 74
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    iget-object v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/animation/ValueAnimator;

    new-instance v10, Lj2/a;

    invoke-direct {v10, p0, v4, v5, v6}, Lj2/a;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v3, [I

    aput p2, v7, v0

    aput v0, v7, v1

    .line 76
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Landroid/animation/ValueAnimator;

    .line 77
    invoke-virtual {p2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Landroid/animation/ValueAnimator;

    new-instance v7, Lj2/b;

    invoke-direct {v7, p0, v4, v5, v6}, Lj2/b;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {p2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    new-instance p2, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 80
    invoke-direct {p2, v4, v5}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    .line 82
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:Z

    iput-boolean v4, p2, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    if-eqz v4, :cond_7

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:F

    invoke-static {v4, v5}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, p2, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 84
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    invoke-static {v4, v5}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, p2, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 85
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    invoke-static {v4, v5}, Lj2/f;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, p2, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 86
    :cond_7
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 87
    iput v4, p2, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 88
    iput v5, p2, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 89
    iput v6, p2, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 90
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:I

    iput v4, p2, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 91
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    iput v4, p2, Lcom/github/clans/fab/FloatingActionButton;->a:I

    .line 92
    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    .line 93
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 94
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 95
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:I

    const/high16 v4, 0x43070000    # 135.0f

    if-nez p2, :cond_9

    .line 99
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez p2, :cond_8

    const/high16 v5, -0x3cf90000    # -135.0f

    goto :goto_2

    :cond_8
    const/high16 v5, 0x43070000    # 135.0f

    :goto_2
    if-nez p2, :cond_c

    goto :goto_4

    .line 100
    :cond_9
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez p2, :cond_a

    const/high16 v5, 0x43070000    # 135.0f

    goto :goto_3

    :cond_a
    const/high16 v5, -0x3cf90000    # -135.0f

    :goto_3
    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    const/high16 v4, -0x3cf90000    # -135.0f

    .line 101
    :cond_c
    :goto_5
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    new-array v6, v3, [F

    aput v5, v6, v0

    aput v2, v6, v1

    const-string v5, "rotation"

    invoke-static {p2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 102
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    new-array v3, v3, [F

    aput v2, v3, v0

    aput v4, v3, v1

    invoke-static {v6, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 104
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 105
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 108
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 p2, 0x9

    const v0, 0x7f010022

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    const/4 p2, 0x7

    const v0, 0x7f010021

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 115
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to load specified custom font: "

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setLabelEllipsize(Lj2/e;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:Z

    if-eqz v0, :cond_6

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 8
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 12
    instance-of v5, v4, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 13
    check-cast v4, Lcom/github/clans/fab/FloatingActionButton;

    .line 14
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$a;

    invoke-direct {v6, p0, v4, p1}, Lcom/github/clans/fab/FloatingActionMenu$a;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    add-int/2addr v3, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$b;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionMenu$b;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/2addr v0, v2

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    mul-int v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    if-ge v1, v2, :cond_a

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    const v3, 0x7f09015e

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    .line 11
    :cond_2
    new-instance v5, Lj2/e;

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/content/Context;

    invoke-direct {v5, v6}, Lj2/e;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 12
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 13
    invoke-virtual {v5, v2}, Lj2/e;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Lj2/e;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v5, v7}, Lj2/e;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 16
    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    if-lez v7, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {v5, v0}, Lj2/e;->setShowShadow(Z)V

    .line 19
    invoke-virtual {v5, v6}, Lj2/e;->setUsingStyle(Z)V

    goto :goto_1

    .line 20
    :cond_3
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:I

    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    .line 21
    iput v6, v5, Lj2/e;->i:I

    .line 22
    iput v7, v5, Lj2/e;->j:I

    .line 23
    iput v8, v5, Lj2/e;->k:I

    .line 24
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:Z

    invoke-virtual {v5, v6}, Lj2/e;->setShowShadow(Z)V

    .line 25
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:I

    invoke-virtual {v5, v6}, Lj2/e;->setCornerRadius(I)V

    .line 26
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:I

    if-lez v6, :cond_4

    .line 27
    invoke-direct {p0, v5}, Lcom/github/clans/fab/FloatingActionMenu;->setLabelEllipsize(Lj2/e;)V

    .line 28
    :cond_4
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    invoke-virtual {v5}, Lj2/e;->e()V

    .line 30
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:F

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 32
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 33
    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    .line 34
    iget-boolean v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:Z

    if-eqz v8, :cond_5

    .line 35
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v8

    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v6, v9

    .line 36
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v8

    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v7, v9

    .line 37
    :cond_5
    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    iget v9, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 38
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    if-ltz v6, :cond_6

    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    if-eqz v6, :cond_7

    .line 39
    :cond_6
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 40
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Landroid/graphics/Typeface;

    if-eqz v6, :cond_8

    .line 41
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    :cond_8
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v2, v3, v5}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 46
    :goto_2
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    if-ne v2, v3, :cond_9

    .line 47
    new-instance v2, Lj2/c;

    invoke-direct {v2, p0}, Lj2/c;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-virtual {v3, v2}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez p1, :cond_0

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    div-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int p4, p2, p1

    .line 4
    :goto_0
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    sub-int/2addr p5, p3

    .line 5
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    .line 6
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    .line 8
    :goto_2
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p4, p3

    .line 9
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    .line 10
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p5

    .line 11
    invoke-virtual {v1, p3, p5, v2, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 12
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p4, p3

    .line 13
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p5

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 14
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 16
    invoke-virtual {v2, p3, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    if-eqz p1, :cond_3

    .line 17
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    .line 18
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    iget p5, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    add-int/2addr p5, p3

    .line 19
    :cond_3
    iget p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    sub-int/2addr p3, p2

    :goto_3
    if-ltz p3, :cond_f

    .line 20
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 21
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne p2, v1, :cond_4

    goto/16 :goto_9

    .line 22
    :cond_4
    move-object v1, p2

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .line 23
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    goto/16 :goto_9

    .line 24
    :cond_5
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p5, v3

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    sub-int/2addr p5, v3

    .line 26
    :cond_6
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v1, v3, :cond_7

    .line 27
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 28
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p5

    .line 29
    invoke-virtual {v1, v2, p5, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 30
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    if-nez v2, :cond_7

    .line 31
    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->i(Z)V

    :cond_7
    const v2, 0x7f09015e

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_d

    .line 33
    iget-boolean v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    :goto_4
    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    add-int/2addr v3, v4

    .line 34
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v4, :cond_9

    sub-int v3, p4, v3

    goto :goto_5

    :cond_9
    add-int/2addr v3, p4

    :goto_5
    if-nez v4, :cond_a

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    goto :goto_6

    .line 36
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 37
    :goto_6
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v5, :cond_b

    move v6, v4

    goto :goto_7

    :cond_b
    move v6, v3

    :goto_7
    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    move v3, v4

    .line 38
    :goto_8
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    sub-int v4, p5, v4

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v6, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 41
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    if-nez v1, :cond_d

    const/4 v1, 0x4

    .line 42
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_e

    .line 43
    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    sub-int/2addr p5, p2

    goto :goto_9

    .line 44
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p5

    iget p5, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    add-int/2addr p5, p2

    :goto_9
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_3

    :cond_f
    return-void
.end method

.method public onMeasure(II)V
    .locals 15

    move-object v6, p0

    const/4 v7, 0x0

    .line 1
    iput v7, v6, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    .line 2
    iget-object v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 v8, 0x0

    .line 3
    :goto_0
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    const/16 v9, 0x8

    if-ge v8, v0, :cond_2

    .line 4
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_1

    iget-object v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne v10, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v4, p2

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 7
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 8
    :goto_2
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    const/4 v2, 0x1

    if-ge v8, v1, :cond_8

    .line 9
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_7

    iget-object v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne v1, v3, :cond_3

    goto :goto_5

    .line 11
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v11, v3, 0x0

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v12, v3, v0

    const v0, 0x7f09015e

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lj2/e;

    if-eqz v13, :cond_6

    .line 14
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-boolean v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->h0:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    div-int v14, v0, v2

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 16
    iget-boolean v1, v13, Lj2/e;->f:Z

    if-eqz v1, :cond_5

    iget v1, v13, Lj2/e;->a:I

    iget v2, v13, Lj2/e;->b:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    .line 17
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    add-int/2addr v0, v1

    add-int v3, v0, v14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v4, p2

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 19
    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v11

    add-int/2addr v0, v14

    .line 20
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    :cond_6
    move v0, v12

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 21
    :cond_8
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->f:I

    iget v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    add-int/2addr v10, v3

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v3

    .line 22
    iget v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->d:I

    iget v4, v6, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    sub-int/2addr v4, v2

    mul-int v4, v4, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    int-to-double v2, v3

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v4, v4, v2

    add-double/2addr v4, v2

    double-to-int v0, v4

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v1

    .line 25
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_a

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    move/from16 v2, p2

    invoke-static {v0, v2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v0

    .line 27
    :cond_a
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->V:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Z

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:Z

    :goto_0
    return v0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimated(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Z

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:I

    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->V:Z

    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:I

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:I

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->a0:Lcom/github/clans/fab/FloatingActionMenu$c;

    return-void
.end method
