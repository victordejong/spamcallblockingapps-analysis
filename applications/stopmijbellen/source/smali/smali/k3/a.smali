.class public Lk3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Z

.field public static final u:Z


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lc4/i;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/drawable/LayerDrawable;

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Lk3/a;->t:Z

    const/16 v2, 0x16

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    sput-boolean v1, Lk3/a;->u:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lc4/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk3/a;->n:Z

    .line 3
    iput-boolean v0, p0, Lk3/a;->o:Z

    .line 4
    iput-boolean v0, p0, Lk3/a;->p:Z

    .line 5
    iput-object p1, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 6
    iput-object p2, p0, Lk3/a;->b:Lc4/i;

    return-void
.end method


# virtual methods
.method public a()Lc4/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc4/m;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc4/m;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lc4/f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lk3/a;->c(Z)Lc4/f;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)Lc4/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-boolean v0, Lk3/a;->t:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lc4/f;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lc4/f;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Lc4/f;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lk3/a;->c(Z)Lc4/f;

    move-result-object v0

    return-object v0
.end method

.method public e(Lc4/i;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lk3/a;->b:Lc4/i;

    .line 2
    sget-boolean v0, Lk3/a;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lk3/a;->o:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {p1}, Lm0/v$e;->f(Landroid/view/View;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    .line 6
    iget-object v1, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 7
    invoke-static {v1}, Lm0/v$e;->e(Landroid/view/View;)I

    move-result v1

    .line 8
    iget-object v2, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Lk3/a;->g()V

    .line 10
    iget-object v3, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 11
    invoke-static {v3, p1, v0, v1, v2}, Lm0/v$e;->k(Landroid/view/View;IIII)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lk3/a;->b()Lc4/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lk3/a;->b()Lc4/f;

    move-result-object v0

    .line 14
    iget-object v1, v0, Lc4/f;->a:Lc4/f$b;

    iput-object p1, v1, Lc4/f$b;->a:Lc4/i;

    .line 15
    invoke-virtual {v0}, Lc4/f;->invalidateSelf()V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lk3/a;->d()Lc4/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lk3/a;->d()Lc4/f;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lc4/f;->a:Lc4/f$b;

    iput-object p1, v1, Lc4/f$b;->a:Lc4/i;

    .line 19
    invoke-virtual {v0}, Lc4/f;->invalidateSelf()V

    .line 20
    :cond_2
    invoke-virtual {p0}, Lk3/a;->a()Lc4/m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {p0}, Lk3/a;->a()Lc4/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lc4/m;->setShapeAppearanceModel(Lc4/i;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lm0/v$e;->f(Landroid/view/View;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 4
    iget-object v2, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 5
    invoke-static {v2}, Lm0/v$e;->e(Landroid/view/View;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 7
    iget v4, p0, Lk3/a;->e:I

    .line 8
    iget v5, p0, Lk3/a;->f:I

    .line 9
    iput p2, p0, Lk3/a;->f:I

    .line 10
    iput p1, p0, Lk3/a;->e:I

    .line 11
    iget-boolean v6, p0, Lk3/a;->o:Z

    if-nez v6, :cond_0

    .line 12
    invoke-virtual {p0}, Lk3/a;->g()V

    .line 13
    :cond_0
    iget-object v6, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v5

    .line 14
    invoke-static {v6, v0, v1, v2, v3}, Lm0/v$e;->k(Landroid/view/View;IIII)V

    return-void
.end method

.method public final g()V
    .locals 14

    .line 1
    iget-object v0, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 2
    new-instance v1, Lc4/f;

    iget-object v2, p0, Lk3/a;->b:Lc4/i;

    invoke-direct {v1, v2}, Lc4/f;-><init>(Lc4/i;)V

    .line 3
    iget-object v2, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lc4/f;->o(Landroid/content/Context;)V

    .line 5
    iget-object v2, p0, Lk3/a;->j:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {v1, v2}, Lc4/f;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v2, p0, Lk3/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1, v2}, Lc4/f;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 9
    :cond_0
    iget v2, p0, Lk3/a;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lk3/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2, v3}, Lc4/f;->t(FLandroid/content/res/ColorStateList;)V

    .line 10
    new-instance v2, Lc4/f;

    iget-object v3, p0, Lk3/a;->b:Lc4/i;

    invoke-direct {v2, v3}, Lc4/f;-><init>(Lc4/i;)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Lc4/f;->setTint(I)V

    .line 12
    iget v4, p0, Lk3/a;->h:I

    int-to-float v4, v4

    iget-boolean v5, p0, Lk3/a;->n:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    const v6, 0x7f040111

    .line 13
    invoke-static {v5, v6}, Li4/d;->t(Landroid/view/View;I)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 14
    :goto_0
    invoke-virtual {v2, v4, v5}, Lc4/f;->s(FI)V

    .line 15
    sget-boolean v4, Lk3/a;->t:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 16
    new-instance v4, Lc4/f;

    iget-object v7, p0, Lk3/a;->b:Lc4/i;

    invoke-direct {v4, v7}, Lc4/f;-><init>(Lc4/i;)V

    iput-object v4, p0, Lk3/a;->m:Landroid/graphics/drawable/Drawable;

    const/4 v7, -0x1

    .line 17
    invoke-virtual {v4, v7}, Lc4/f;->setTint(I)V

    .line 18
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v7, p0, Lk3/a;->l:Landroid/content/res/ColorStateList;

    .line 19
    invoke-static {v7}, La4/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v3

    aput-object v1, v5, v6

    invoke-direct {v9, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget v10, p0, Lk3/a;->c:I

    iget v11, p0, Lk3/a;->e:I

    iget v12, p0, Lk3/a;->d:I

    iget v13, p0, Lk3/a;->f:I

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 21
    iget-object v2, p0, Lk3/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v7, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_1

    .line 22
    :cond_2
    new-instance v4, La4/a;

    iget-object v7, p0, Lk3/a;->b:Lc4/i;

    invoke-direct {v4, v7}, La4/a;-><init>(Lc4/i;)V

    iput-object v4, p0, Lk3/a;->m:Landroid/graphics/drawable/Drawable;

    .line 23
    iget-object v7, p0, Lk3/a;->l:Landroid/content/res/ColorStateList;

    .line 24
    invoke-static {v7}, La4/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 25
    invoke-virtual {v4, v7}, La4/a;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v3

    aput-object v1, v4, v6

    iget-object v1, p0, Lk3/a;->m:Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v5

    invoke-direct {v9, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v9, p0, Lk3/a;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 27
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget v10, p0, Lk3/a;->c:I

    iget v11, p0, Lk3/a;->e:I

    iget v12, p0, Lk3/a;->d:I

    iget v13, p0, Lk3/a;->f:I

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 28
    :goto_1
    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p0}, Lk3/a;->b()Lc4/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    iget v1, p0, Lk3/a;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lc4/f;->p(F)V

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk3/a;->b()Lc4/f;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk3/a;->d()Lc4/f;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 3
    iget v2, p0, Lk3/a;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lk3/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lc4/f;->t(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    .line 4
    iget v0, p0, Lk3/a;->h:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lk3/a;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lk3/a;->a:Lcom/google/android/material/button/MaterialButton;

    const v3, 0x7f040111

    .line 5
    invoke-static {v2, v3}, Li4/d;->t(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1, v0, v2}, Lc4/f;->s(FI)V

    :cond_1
    return-void
.end method
