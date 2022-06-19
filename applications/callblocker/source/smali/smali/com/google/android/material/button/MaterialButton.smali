.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/q/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$b;,
        Lcom/google/android/material/button/MaterialButton$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:I


# instance fields
.field private final e:Lcom/google/android/material/button/a;

.field private final f:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/button/MaterialButton$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/material/button/MaterialButton$b;

.field private h:Landroid/graphics/PorterDuff$Mode;

.field private i:Landroid/content/res/ColorStateList;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->a:[I

    .line 126
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->b:[I

    .line 167
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/google/android/material/a$b;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 195
    sget v0, Lcom/google/android/material/button/MaterialButton;->c:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->f:Ljava/util/LinkedHashSet;

    .line 182
    iput-boolean v7, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    .line 183
    iput-boolean v7, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    sget-object v2, Lcom/google/android/material/a$l;->MaterialButton:[I

    sget v4, Lcom/google/android/material/button/MaterialButton;->c:I

    new-array v5, v7, [I

    move-object v1, p2

    move v3, p3

    .line 200
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    sget v2, Lcom/google/android/material/a$l;->MaterialButton_iconPadding:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 204
    sget v2, Lcom/google/android/material/a$l;->MaterialButton_iconTintMode:I

    const/4 v3, -0x1

    .line 206
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 205
    invoke-static {v2, v3}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/graphics/PorterDuff$Mode;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$l;->MaterialButton_iconTint:I

    .line 209
    invoke-static {v2, v1, v3}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/content/res/ColorStateList;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$l;->MaterialButton_icon:I

    invoke-static {v2, v1, v3}, Lcom/google/android/material/n/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    .line 212
    sget v2, Lcom/google/android/material/a$l;->MaterialButton_iconGravity:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    .line 214
    sget v2, Lcom/google/android/material/a$l;->MaterialButton_iconSize:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 215
    sget v2, Lcom/google/android/material/button/MaterialButton;->c:I

    .line 216
    invoke-static {v0, p2, p3, v2}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/q/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    .line 219
    new-instance v2, Lcom/google/android/material/button/a;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/button/a;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/q/k;)V

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    .line 220
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/a;->a(Landroid/content/res/TypedArray;)V

    .line 222
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 225
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    .line 226
    return-void

    :cond_0
    move v0, v7

    .line 225
    goto :goto_0
.end method

.method private a(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 657
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    .line 659
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 660
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 664
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 665
    :goto_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 666
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    iget v6, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    add-int/2addr v0, v6

    invoke-virtual {v4, v5, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 670
    :cond_1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-ne v0, v7, :cond_6

    :cond_2
    move v1, v2

    .line 673
    :goto_2
    if-eqz p1, :cond_7

    .line 674
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->b(Z)V

    .line 688
    :cond_3
    :goto_3
    return-void

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 665
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v3

    .line 670
    goto :goto_2

    .line 679
    :cond_7
    invoke-static {p0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 680
    aget-object v4, v0, v3

    .line 681
    aget-object v0, v0, v7

    .line 682
    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    if-ne v4, v5, :cond_9

    :cond_8
    if-nez v1, :cond_a

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    if-eq v0, v4, :cond_a

    :cond_9
    move v0, v2

    .line 685
    :goto_4
    if-eqz v0, :cond_3

    .line 686
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->b(Z)V

    goto :goto_3

    :cond_a
    move v0, v3

    .line 682
    goto :goto_4
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 436
    :cond_2
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 437
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 442
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 446
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    invoke-interface {v4, v0, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_4
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 452
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 454
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v4

    sub-int v3, v4, v3

    .line 456
    invoke-static {p0}, Landroidx/core/h/u;->j(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v3, v0

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    sub-int/2addr v0, v3

    .line 459
    invoke-static {p0}, Landroidx/core/h/u;->i(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 463
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    :goto_2
    if-eq v3, v1, :cond_5

    .line 464
    neg-int v0, v0

    .line 467
    :cond_5
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    if-eq v1, v0, :cond_0

    .line 468
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 469
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    goto :goto_0

    .line 452
    :cond_6
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    goto :goto_1

    :cond_7
    move v1, v2

    .line 463
    goto :goto_2
.end method

.method private b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v1, v1, v1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 474
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getA11yClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/CompoundButton;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Landroid/widget/Button;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->e()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/q/k;
    .locals 2

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->l()Lcom/google/android/material/q/k;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->f()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    .line 417
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    .line 418
    invoke-virtual {v0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    .line 417
    invoke-static {p0, v0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;Lcom/google/android/material/q/g;)V

    .line 419
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 893
    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    sget-object v1, Lcom/google/android/material/button/MaterialButton;->a:[I

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 900
    sget-object v1, Lcom/google/android/material/button/MaterialButton;->b:[I

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    .line 903
    :cond_1
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 246
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 248
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 237
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 241
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 394
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/button/a;->a(II)V

    .line 399
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->onMeasure(II)V

    .line 404
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()V

    .line 405
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 410
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()V

    .line 411
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 967
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(I)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 376
    const-string/jumbo v0, "MaterialButton"

    const-string/jumbo v1, "Do not set the background; MaterialButton manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->a()V

    .line 380
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 388
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 328
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 339
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->b(Z)V

    .line 990
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    if-eq v0, p1, :cond_0

    .line 937
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    .line 938
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 941
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 946
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton$a;

    .line 947
    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    invoke-interface {v0, p0, v2}, Lcom/google/android/material/button/MaterialButton$a;->a(Lcom/google/android/material/button/MaterialButton;Z)V

    goto :goto_1

    .line 949
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->c(I)V

    .line 836
    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 850
    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setElevation(F)V

    .line 425
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/q/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->r(F)V

    .line 428
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 555
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/drawable/Drawable;

    .line 556
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    .line 558
    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-eq v0, p1, :cond_0

    .line 886
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    .line 887
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()V

    .line 889
    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-eq v0, p1, :cond_0

    .line 497
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 498
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 500
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 573
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 574
    return-void
.end method

.method public setIconSize(I)V
    .locals 2

    .prologue
    .line 522
    if-gez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "iconSize cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eq v0, p1, :cond_1

    .line 527
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    .line 530
    :cond_1
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 598
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/content/res/ColorStateList;

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 636
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/graphics/PorterDuff$Mode;

    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 613
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    return-void
.end method

.method setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$b;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/MaterialButton$b;

    .line 1033
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/MaterialButton$b;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/MaterialButton$b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$b;->a(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 1040
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    .line 1041
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->b(Landroid/content/res/ColorStateList;)V

    .line 710
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 724
    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/q/k;)V
    .locals 2

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/q/k;)V

    .line 1006
    return-void

    .line 1002
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Z)V

    .line 1051
    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->c(Landroid/content/res/ColorStateList;)V

    .line 752
    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 767
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->b(I)V

    .line 794
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 809
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Landroid/content/res/ColorStateList;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 961
    return-void

    .line 960
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
