.class public Ln1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lp1;

.field public c:I

.field public d:Ll2;

.field public e:Ll2;

.field public f:Ll2;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ln1;->c:I

    iput-object p1, p0, Ln1;->a:Landroid/view/View;

    invoke-static {}, Lp1;->b()Lp1;

    move-result-object p1

    iput-object p1, p0, Ln1;->b:Lp1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    iget-object v0, p0, Ln1;->f:Ll2;

    if-nez v0, :cond_0

    new-instance v0, Ll2;

    invoke-direct {v0}, Ll2;-><init>()V

    iput-object v0, p0, Ln1;->f:Ll2;

    :cond_0
    iget-object v0, p0, Ln1;->f:Ll2;

    invoke-virtual {v0}, Ll2;->a()V

    iget-object v1, p0, Ln1;->a:Landroid/view/View;

    invoke-static {v1}, Ljb;->s(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Ll2;->d:Z

    iput-object v1, v0, Ll2;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v1, p0, Ln1;->a:Landroid/view/View;

    invoke-static {v1}, Ljb;->t(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Ll2;->c:Z

    iput-object v1, v0, Ll2;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v1, v0, Ll2;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Ll2;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    iget-object v1, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Lp1;->i(Landroid/graphics/drawable/Drawable;Ll2;[I)V

    return v2
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ln1;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ln1;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ln1;->e:Ll2;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lp1;->i(Landroid/graphics/drawable/Drawable;Ll2;[I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ln1;->d:Ll2;

    if-eqz v1, :cond_2

    iget-object v2, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lp1;->i(Landroid/graphics/drawable/Drawable;Ll2;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Ln1;->e:Ll2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ll2;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Ln1;->e:Ll2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ll2;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object v0, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lo;->ViewBackgroundHelper:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v3, p2, v1}, Ln2;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ln2;

    move-result-object v0

    iget-object v1, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ln2;->r()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Ljb;->l0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Lo;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, p1}, Ln2;->s(I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, v1}, Ln2;->n(II)I

    move-result p1

    iput p1, p0, Ln1;->c:I

    iget-object p1, p0, Ln1;->b:Lp1;

    iget-object p2, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Ln1;->c:I

    invoke-virtual {p1, p2, v2}, Lp1;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ln1;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget p1, Lo;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, p1}, Ln2;->s(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Ln2;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, Ljb;->r0(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p1, Lo;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, p1}, Ln2;->s(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Ln2;->k(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lz1;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p2, p1}, Ljb;->s0(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ln2;->w()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ln2;->w()V

    throw p1
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Ln1;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ln1;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Ln1;->b()V

    return-void
.end method

.method public g(I)V
    .locals 2

    iput p1, p0, Ln1;->c:I

    iget-object v0, p0, Ln1;->b:Lp1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ln1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lp1;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ln1;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Ln1;->b()V

    return-void
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ln1;->d:Ll2;

    if-nez v0, :cond_0

    new-instance v0, Ll2;

    invoke-direct {v0}, Ll2;-><init>()V

    iput-object v0, p0, Ln1;->d:Ll2;

    :cond_0
    iget-object v0, p0, Ln1;->d:Ll2;

    iput-object p1, v0, Ll2;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ll2;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ln1;->d:Ll2;

    :goto_0
    invoke-virtual {p0}, Ln1;->b()V

    return-void
.end method

.method public i(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ln1;->e:Ll2;

    if-nez v0, :cond_0

    new-instance v0, Ll2;

    invoke-direct {v0}, Ll2;-><init>()V

    iput-object v0, p0, Ln1;->e:Ll2;

    :cond_0
    iget-object v0, p0, Ln1;->e:Ll2;

    iput-object p1, v0, Ll2;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ll2;->d:Z

    invoke-virtual {p0}, Ln1;->b()V

    return-void
.end method

.method public j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Ln1;->e:Ll2;

    if-nez v0, :cond_0

    new-instance v0, Ll2;

    invoke-direct {v0}, Ll2;-><init>()V

    iput-object v0, p0, Ln1;->e:Ll2;

    :cond_0
    iget-object v0, p0, Ln1;->e:Ll2;

    iput-object p1, v0, Ll2;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ll2;->c:Z

    invoke-virtual {p0}, Ln1;->b()V

    return-void
.end method

.method public final k()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    iget-object v0, p0, Ln1;->d:Ll2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method
