.class public Lbc0;
.super Lcc0;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbc0$b;,
        Lbc0$a;
    }
.end annotation


# instance fields
.field public b:Lbc0$b;

.field public c:[I

.field public d:[I

.field public f:[I

.field public g:[I

.field public final h:Landroid/graphics/Rect;

.field public final j:Landroid/graphics/Rect;

.field public final k:Landroid/graphics/Rect;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lbc0;-><init>(Lbc0$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lbc0$b;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lcc0;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbc0;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbc0;->j:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbc0;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lbc0;->h(Lbc0$b;Landroid/content/res/Resources;)Lbc0$b;

    move-result-object p1

    iput-object p1, p0, Lbc0;->b:Lbc0$b;

    iget p1, p1, Lbc0$b;->a:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lbc0;->j()V

    invoke-virtual {p0}, Lbc0;->p()V

    :cond_0
    return-void
.end method

.method public static n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static q(IIIII)I
    .locals 1

    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    or-int/lit8 p0, p0, 0x7

    goto :goto_0

    :cond_0
    const v0, 0x800003

    or-int/2addr p0, v0

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_2

    or-int/lit8 p0, p0, 0x70

    goto :goto_1

    :cond_2
    or-int/lit8 p0, p0, 0x30

    :cond_3
    :goto_1
    if-gez p1, :cond_4

    if-gez p3, :cond_4

    or-int/lit8 p0, p0, 0x7

    :cond_4
    if-gez p2, :cond_5

    if-gez p4, :cond_5

    or-int/lit8 p0, p0, 0x70

    :cond_5
    return p0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6

    invoke-super {p0, p1}, Lcc0;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v2, v0, Lbc0$b;->a:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v4, v4, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ldc0;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4, p1}, Ldc0;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    iget v5, v0, Lbc0$b;->l:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v4, v5

    iput v4, v0, Lbc0$b;->l:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lbc0;->j()V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbc0$b;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcc0;->canApplyTheme()Z

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

.method public d(Lbc0$a;)I
    .locals 5

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lbc0$b;->a:I

    if-lt v4, v3, :cond_2

    add-int/lit8 v3, v3, 0xa

    new-array v3, v3, [Lbc0$a;

    if-lez v4, :cond_1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v3, v0, Lbc0$b;->b:[Lbc0$a;

    :cond_2
    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    aput-object p1, v1, v4

    iget p1, v0, Lbc0$b;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lbc0$b;->a:I

    invoke-virtual {v0}, Lbc0$b;->e()V

    return v4
.end method

.method public e(Landroid/graphics/drawable/Drawable;[IIIIII)Lbc0$a;
    .locals 1

    invoke-virtual {p0, p1}, Lbc0;->i(Landroid/graphics/drawable/Drawable;)Lbc0$a;

    move-result-object v0

    iput p3, v0, Lbc0$a;->l:I

    iput-object p2, v0, Lbc0$a;->b:[I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_0

    iget-object p2, v0, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lbc0;->isAutoMirrored()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    iput p4, v0, Lbc0$a;->c:I

    iput p5, v0, Lbc0$a;->d:I

    iput p6, v0, Lbc0$a;->e:I

    iput p7, v0, Lbc0$a;->f:I

    invoke-virtual {p0, v0}, Lbc0;->d(Lbc0$a;)I

    iget-object p2, p0, Lbc0;->b:Lbc0$b;

    iget p3, p2, Lbc0$b;->l:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p4

    or-int/2addr p3, p4

    iput p3, p2, Lbc0$b;->l:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public final f(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lbc0;->b:Lbc0$b;

    iget-object v2, v1, Lbc0$b;->b:[Lbc0$a;

    iget v1, v1, Lbc0$b;->a:I

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Lbc0;->o(ILbc0$a;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lbc0;->c:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lbc0;->d:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lbc0;->f:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lbc0;->g:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lbc0;->b:Lbc0$b;

    iget-object v2, v1, Lbc0$b;->b:[Lbc0$a;

    iget v1, v1, Lbc0$b;->a:I

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Lbc0;->o(ILbc0$a;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lbc0;->c:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lbc0;->d:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lbc0;->f:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lbc0;->g:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lbc0;->b:Lbc0$b;

    invoke-virtual {v1}, Lbc0$b;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 10

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0}, Lbc0$b;->c(Lbc0$b;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbc0;->b:Lbc0$b;

    iget-object v3, v2, Lbc0$b;->b:[Lbc0$a;

    iget v2, v2, Lbc0$b;->a:I

    const/4 v4, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v7, v3, v1

    iget-object v8, v7, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    iget v9, v7, Lbc0$a;->j:I

    if-gez v9, :cond_2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :cond_2
    iget v8, v7, Lbc0$a;->d:I

    add-int/2addr v9, v8

    iget v7, v7, Lbc0$a;->f:I

    add-int/2addr v9, v7

    add-int/2addr v9, v4

    add-int/2addr v9, v5

    if-le v9, v6, :cond_3

    move v6, v9

    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, p0, Lbc0;->d:[I

    aget v7, v7, v1

    add-int/2addr v4, v7

    iget-object v7, p0, Lbc0;->g:[I

    aget v7, v7, v1

    add-int/2addr v5, v7

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v6
.end method

.method public getIntrinsicWidth()I
    .locals 13

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0}, Lbc0$b;->c(Lbc0$b;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lbc0;->b:Lbc0$b;

    iget-object v4, v3, Lbc0$b;->b:[Lbc0$a;

    iget v3, v3, Lbc0$b;->a:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v3, :cond_a

    aget-object v9, v4, v6

    iget-object v10, v9, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_1

    goto :goto_4

    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/high16 v11, -0x80000000

    if-ne v10, v1, :cond_4

    iget v10, v9, Lbc0$a;->h:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lbc0$a;->c:I

    :cond_3
    iget v12, v9, Lbc0$a;->g:I

    if-ne v12, v11, :cond_6

    iget v12, v9, Lbc0$a;->e:I

    goto :goto_3

    :cond_4
    iget v10, v9, Lbc0$a;->g:I

    if-ne v10, v11, :cond_5

    iget v10, v9, Lbc0$a;->c:I

    :cond_5
    iget v12, v9, Lbc0$a;->h:I

    if-ne v12, v11, :cond_6

    iget v11, v9, Lbc0$a;->e:I

    move v12, v11

    :cond_6
    :goto_3
    iget v11, v9, Lbc0$a;->i:I

    if-gez v11, :cond_7

    iget-object v9, v9, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    :cond_7
    add-int/2addr v11, v10

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    add-int/2addr v11, v8

    if-le v11, v5, :cond_8

    move v5, v11

    :cond_8
    if-eqz v0, :cond_9

    iget-object v9, p0, Lbc0;->c:[I

    aget v9, v9, v6

    add-int/2addr v7, v9

    iget-object v9, p0, Lbc0;->f:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    return v5
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0}, Lbc0$b;->c(Lbc0$b;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lbc0;->f(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lbc0;->g(Landroid/graphics/Rect;)V

    :goto_0
    iget v1, v0, Lbc0$b;->d:I

    if-ltz v1, :cond_1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v1, v0, Lbc0$b;->e:I

    if-ltz v1, :cond_2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget v1, v0, Lbc0$b;->i:I

    iget v2, v0, Lbc0$b;->h:I

    goto :goto_1

    :cond_3
    iget v1, v0, Lbc0$b;->h:I

    iget v2, v0, Lbc0$b;->i:I

    :goto_1
    if-ltz v1, :cond_4

    goto :goto_2

    :cond_4
    iget v1, v0, Lbc0$b;->f:I

    :goto_2
    if-ltz v1, :cond_5

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_5
    if-ltz v2, :cond_6

    goto :goto_3

    :cond_6
    iget v2, v0, Lbc0$b;->g:I

    :goto_3
    if-ltz v2, :cond_7

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_9

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_9

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_9

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_4
    return v3
.end method

.method public h(Lbc0$b;Landroid/content/res/Resources;)Lbc0$b;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)Lbc0$a;
    .locals 1

    new-instance v0, Lbc0$a;

    invoke-direct {v0}, Lbc0$a;-><init>()V

    iput-object p1, v0, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcc0;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v0, Lp80;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lbc0;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbc0;->u(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lbc0;->m(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Lbc0;->j()V

    invoke-virtual {p0}, Lbc0;->p()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0}, Lbc0$b;->a(Lbc0$b;)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget v0, v0, Lbc0$b;->a:I

    iget-object v1, p0, Lbc0;->c:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lbc0;->c:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lbc0;->d:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lbc0;->f:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lbc0;->g:[I

    return-void
.end method

.method public k(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    iget v2, v2, Lbc0$a;->l:I

    if-ne v2, p1, :cond_0

    aget-object p1, v1, v0

    iget-object p1, p1, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget v0, v0, Lbc0$b;->a:I

    return v0
.end method

.method public final m(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9

    :cond_1
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lbc0$a;

    invoke-direct {v3}, Lbc0$a;-><init>()V

    sget-object v4, Lp80;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v4}, Lbc0;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lbc0;->t(Lbc0$a;Landroid/content/res/TypedArray;)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    iget-object v4, v3, Lbc0$a;->b:[I

    if-eqz v4, :cond_4

    sget v6, Lp80;->LayerDrawableItem_android_drawable:I

    aget v4, v4, v6

    if-nez v4, :cond_7

    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_6

    invoke-static {p1, p2, p3, p4}, Ldc0;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iget-object v4, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    iget v5, v0, Lbc0$b;->l:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v4, v5

    iput v4, v0, Lbc0$b;->l:I

    iget-object v4, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    invoke-virtual {p0, v3}, Lbc0;->d(Lbc0$a;)I

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-boolean v0, p0, Lbc0;->l:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbc0;->h(Lbc0$b;Landroid/content/res/Resources;)Lbc0$b;

    move-result-object v0

    iput-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc0;->l:Z

    :cond_2
    return-object p0
.end method

.method public final o(ILbc0$a;)Z
    .locals 4

    iget-object p2, p2, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lbc0;->h:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbc0;->c:[I

    aget v2, v1, p1

    if-ne p2, v2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lbc0;->d:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lbc0;->f:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lbc0;->g:[I

    aget v3, v3, p1

    if-eq v2, v3, :cond_1

    :cond_0
    aput p2, v1, p1

    iget-object p2, p0, Lbc0;->d:[I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    aput v1, p2, p1

    iget-object p2, p0, Lbc0;->f:[I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    aput v1, p2, p1

    iget-object p2, p0, Lbc0;->g:[I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    aput v0, p2, p1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbc0;->s(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 7

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    iget-object v4, v4, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbc0;->s(Landroid/graphics/Rect;)V

    return v3
.end method

.method public onLevelChange(I)Z
    .locals 5

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    iget-object v4, v4, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {p0, v2, v3}, Lbc0;->o(ILbc0$a;)Z

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbc0;->s(Landroid/graphics/Rect;)V

    :cond_2
    return v3
.end method

.method public onStateChange([I)Z
    .locals 6

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    iget-object v4, v4, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {p0, v2, v3}, Lbc0;->o(ILbc0$a;)Z

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbc0;->s(Landroid/graphics/Rect;)V

    :cond_2
    return v3
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget v1, v0, Lbc0$b;->a:I

    iget-object v0, v0, Lbc0$b;->b:[Lbc0$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v2, v3}, Lbc0;->o(ILbc0$a;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0}, Lbc0$b;->c(Lbc0$b;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0, p1}, Lbc0$b;->d(Lbc0$b;I)I

    :cond_0
    return-void
.end method

.method public final s(Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v8, v0, Lbc0;->j:Landroid/graphics/Rect;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v2, v0, Lbc0;->b:Lbc0$b;

    invoke-static {v2}, Lbc0$b;->c(Lbc0$b;)I

    move-result v2

    const/4 v10, 0x1

    if-nez v2, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iget-object v2, v0, Lbc0;->b:Lbc0$b;

    iget-object v12, v2, Lbc0$b;->b:[Lbc0$a;

    iget v13, v2, Lbc0$b;->a:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v14, v13, :cond_a

    aget-object v2, v12, v14

    iget-object v7, v2, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v5, v0, Lbc0;->k:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v3, -0x80000000

    if-ne v9, v10, :cond_4

    iget v4, v2, Lbc0$a;->h:I

    if-ne v4, v3, :cond_3

    iget v4, v2, Lbc0$a;->c:I

    :cond_3
    iget v6, v2, Lbc0$a;->g:I

    if-ne v6, v3, :cond_6

    iget v6, v2, Lbc0$a;->e:I

    goto :goto_3

    :cond_4
    iget v4, v2, Lbc0$a;->g:I

    if-ne v4, v3, :cond_5

    iget v4, v2, Lbc0$a;->c:I

    :cond_5
    iget v6, v2, Lbc0$a;->h:I

    if-ne v6, v3, :cond_6

    iget v3, v2, Lbc0$a;->e:I

    move v6, v3

    :cond_6
    :goto_3
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    add-int/2addr v3, v15

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v10, v2, Lbc0$a;->d:I

    add-int/2addr v4, v10

    add-int v4, v4, v16

    iget v10, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v6

    sub-int v10, v10, v17

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Lbc0$a;->f:I

    sub-int/2addr v6, v1

    sub-int v6, v6, v18

    invoke-virtual {v5, v3, v4, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v2, Lbc0$a;->k:I

    iget v3, v2, Lbc0$a;->i:I

    iget v4, v2, Lbc0$a;->j:I

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-static {v1, v3, v4, v6, v10}, Lbc0;->q(IIIII)I

    move-result v1

    iget v3, v2, Lbc0$a;->i:I

    if-gez v3, :cond_7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    :cond_7
    iget v2, v2, Lbc0$a;->j:I

    if-gez v2, :cond_8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :cond_8
    move v4, v2

    move v2, v1

    move-object v6, v8

    move-object v1, v7

    move v7, v9

    invoke-static/range {v2 .. v7}, Lta;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v11, :cond_9

    iget-object v1, v0, Lbc0;->c:[I

    aget v1, v1, v14

    add-int/2addr v15, v1

    iget-object v1, v0, Lbc0;->f:[I

    aget v1, v1, v14

    add-int v17, v17, v1

    iget-object v1, v0, Lbc0;->d:[I

    aget v1, v1, v14

    add-int v16, v16, v1

    iget-object v1, v0, Lbc0;->g:[I

    aget v1, v1, v14

    add-int v18, v18, v1

    :cond_9
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    invoke-static {v0, p1}, Lbc0$b;->b(Lbc0$b;Z)Z

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget-object v1, v0, Lbc0$b;->b:[Lbc0$a;

    iget v0, v0, Lbc0$b;->a:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
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

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
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

    iget-object v3, v3, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lbc0;->b:Lbc0$b;

    iget-object v2, v1, Lbc0$b;->b:[Lbc0$a;

    iget v1, v1, Lbc0$b;->a:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    iget-object v4, v4, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final t(Lbc0$a;Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget v1, v0, Lbc0$b;->l:I

    invoke-static {p2}, Lnc0;->b(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lbc0$b;->l:I

    invoke-static {p2}, Lnc0;->a(Landroid/content/res/TypedArray;)[I

    move-result-object v0

    iput-object v0, p1, Lbc0$a;->b:[I

    sget v0, Lp80;->LayerDrawableItem_android_left:I

    iget v1, p1, Lbc0$a;->c:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->c:I

    sget v0, Lp80;->LayerDrawableItem_android_top:I

    iget v1, p1, Lbc0$a;->d:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->d:I

    sget v0, Lp80;->LayerDrawableItem_android_right:I

    iget v1, p1, Lbc0$a;->e:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->e:I

    sget v0, Lp80;->LayerDrawableItem_android_bottom:I

    iget v1, p1, Lbc0$a;->f:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->f:I

    sget v0, Lp80;->LayerDrawableItem_android_start:I

    iget v1, p1, Lbc0$a;->g:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->g:I

    sget v0, Lp80;->LayerDrawableItem_android_end:I

    iget v1, p1, Lbc0$a;->h:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->h:I

    sget v0, Lp80;->LayerDrawableItem_android_width:I

    iget v1, p1, Lbc0$a;->i:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->i:I

    sget v0, Lp80;->LayerDrawableItem_android_height:I

    iget v1, p1, Lbc0$a;->j:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->j:I

    sget v0, Lp80;->LayerDrawableItem_android_gravity:I

    iget v1, p1, Lbc0$a;->k:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->k:I

    sget v0, Lp80;->LayerDrawableItem_android_id:I

    iget v1, p1, Lbc0$a;->l:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lbc0$a;->l:I

    sget v0, Lp80;->LayerDrawableItem_android_drawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p2, p1, Lbc0$a;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public final u(Landroid/content/res/TypedArray;)V
    .locals 5

    iget-object v0, p0, Lbc0;->b:Lbc0$b;

    iget v1, v0, Lbc0$b;->k:I

    invoke-static {p1}, Lnc0;->b(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lbc0$b;->k:I

    invoke-static {p1}, Lnc0;->a(Landroid/content/res/TypedArray;)[I

    move-result-object v1

    iput-object v1, v0, Lbc0$b;->c:[I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lp80;->LayerDrawable_android_opacity:I

    if-ne v3, v4, :cond_0

    iget v4, v0, Lbc0$b;->j:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->j:I

    goto/16 :goto_1

    :cond_0
    sget v4, Lp80;->LayerDrawable_android_paddingTop:I

    if-ne v3, v4, :cond_1

    iget v4, v0, Lbc0$b;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->d:I

    goto :goto_1

    :cond_1
    sget v4, Lp80;->LayerDrawable_android_paddingBottom:I

    if-ne v3, v4, :cond_2

    iget v4, v0, Lbc0$b;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->e:I

    goto :goto_1

    :cond_2
    sget v4, Lp80;->LayerDrawable_android_paddingLeft:I

    if-ne v3, v4, :cond_3

    iget v4, v0, Lbc0$b;->f:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->f:I

    goto :goto_1

    :cond_3
    sget v4, Lp80;->LayerDrawable_android_paddingRight:I

    if-ne v3, v4, :cond_4

    iget v4, v0, Lbc0$b;->g:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->g:I

    goto :goto_1

    :cond_4
    sget v4, Lp80;->LayerDrawable_android_paddingStart:I

    if-ne v3, v4, :cond_5

    iget v4, v0, Lbc0$b;->h:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->h:I

    goto :goto_1

    :cond_5
    sget v4, Lp80;->LayerDrawable_android_paddingEnd:I

    if-ne v3, v4, :cond_6

    iget v4, v0, Lbc0$b;->i:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lbc0$b;->i:I

    goto :goto_1

    :cond_6
    sget v4, Lp80;->LayerDrawable_android_autoMirrored:I

    if-ne v3, v4, :cond_7

    invoke-static {v0}, Lbc0$b;->a(Lbc0$b;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v0, v3}, Lbc0$b;->b(Lbc0$b;Z)Z

    goto :goto_1

    :cond_7
    sget v4, Lp80;->LayerDrawable_android_paddingMode:I

    if-ne v3, v4, :cond_8

    invoke-static {v0}, Lbc0$b;->c(Lbc0$b;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v0, v3}, Lbc0$b;->d(Lbc0$b;I)I

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
