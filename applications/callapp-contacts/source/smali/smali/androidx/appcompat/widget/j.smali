.class final Landroidx/appcompat/widget/j;
.super Landroidx/appcompat/widget/i;
.source "SourceFile"


# instance fields
.field final b:Landroid/widget/SeekBar;

.field c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/content/res/ColorStateList;

.field private e:Landroid/graphics/PorterDuff$Mode;

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/i;-><init>(Landroid/widget/ProgressBar;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/appcompat/widget/j;->d:Landroid/content/res/ColorStateList;

    .line 37
    iput-object v0, p0, Landroidx/appcompat/widget/j;->e:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->f:Z

    .line 39
    iput-boolean v0, p0, Landroidx/appcompat/widget/j;->g:Z

    .line 43
    iput-object p1, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    return-void
.end method

.method private a()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->g:Z

    if-eqz v1, :cond_3

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-boolean v1, p0, Landroidx/appcompat/widget/j;->f:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Landroidx/appcompat/widget/j;->d:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/j;->g:Z

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/j;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 141
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method final a(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/i;->a(Landroid/util/AttributeSet;I)V

    .line 50
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/a$j;->AppCompatSeekBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ab;

    move-result-object v0

    .line 52
    iget-object v1, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/a$j;->AppCompatSeekBar:[I

    .line 1076
    iget-object v5, v0, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    .line 52
    invoke-static/range {v1 .. v6}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 55
    sget p1, Landroidx/appcompat/a$j;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p2, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    sget p1, Landroidx/appcompat/a$j;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1080
    iget-object p2, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 1081
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1084
    :cond_1
    iput-object p1, p0, Landroidx/appcompat/widget/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 1087
    iget-object p2, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1088
    iget-object p2, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-static {p2}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1089
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1090
    iget-object p2, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1092
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/j;->a()V

    .line 1095
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/j;->b:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    .line 63
    sget p1, Landroidx/appcompat/a$j;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 64
    sget p1, Landroidx/appcompat/a$j;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result p1

    iget-object v1, p0, Landroidx/appcompat/widget/j;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1}, Landroidx/appcompat/widget/p;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/j;->e:Landroid/graphics/PorterDuff$Mode;

    .line 66
    iput-boolean p2, p0, Landroidx/appcompat/widget/j;->g:Z

    .line 69
    :cond_4
    sget p1, Landroidx/appcompat/a$j;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 70
    sget p1, Landroidx/appcompat/a$j;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/j;->d:Landroid/content/res/ColorStateList;

    .line 71
    iput-boolean p2, p0, Landroidx/appcompat/widget/j;->f:Z

    .line 1252
    :cond_5
    iget-object p1, v0, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-direct {p0}, Landroidx/appcompat/widget/j;->a()V

    return-void
.end method
