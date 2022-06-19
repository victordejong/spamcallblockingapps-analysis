.class public Le/c/a/b/o/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(II)I
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Ld/h/e/a;->d(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 0

    invoke-static {p0, p1}, Le/c/a/b/t/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Le/c/a/b/t/b;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;I)I
    .locals 0

    invoke-static {p0, p1}, Le/c/a/b/t/b;->d(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Le/c/a/b/o/a;->b(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static f(II)I
    .locals 0

    invoke-static {p1, p0}, Ld/h/e/a;->b(II)I

    move-result p0

    return p0
.end method

.method public static g(IIF)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Ld/h/e/a;->d(II)I

    move-result p1

    invoke-static {p0, p1}, Le/c/a/b/o/a;->f(II)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;IIF)I
    .locals 0

    invoke-static {p0, p1}, Le/c/a/b/o/a;->d(Landroid/view/View;I)I

    move-result p1

    invoke-static {p0, p2}, Le/c/a/b/o/a;->d(Landroid/view/View;I)I

    move-result p0

    invoke-static {p1, p0, p3}, Le/c/a/b/o/a;->g(IIF)I

    move-result p0

    return p0
.end method
