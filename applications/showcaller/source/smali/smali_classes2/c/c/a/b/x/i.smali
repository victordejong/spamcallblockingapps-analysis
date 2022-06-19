.class public Lc/c/a/b/x/i;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method static a(I)Lc/c/a/b/x/d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    invoke-static {}, Lc/c/a/b/x/i;->b()Lc/c/a/b/x/d;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lc/c/a/b/x/e;

    invoke-direct {p0}, Lc/c/a/b/x/e;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lc/c/a/b/x/l;

    invoke-direct {p0}, Lc/c/a/b/x/l;-><init>()V

    return-object p0
.end method

.method static b()Lc/c/a/b/x/d;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/x/l;

    invoke-direct {v0}, Lc/c/a/b/x/l;-><init>()V

    return-object v0
.end method

.method static c()Lc/c/a/b/x/f;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/x/f;

    invoke-direct {v0}, Lc/c/a/b/x/f;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lc/c/a/b/x/h;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lc/c/a/b/x/h;

    invoke-virtual {p0, p1}, Lc/c/a/b/x/h;->Z(F)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc/c/a/b/x/h;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lc/c/a/b/x/h;

    invoke-static {p0, v0}, Lc/c/a/b/x/i;->f(Landroid/view/View;Lc/c/a/b/x/h;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;Lc/c/a/b/x/h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc/c/a/b/x/h;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/material/internal/q;->g(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lc/c/a/b/x/h;->e0(F)V

    :cond_0
    return-void
.end method
