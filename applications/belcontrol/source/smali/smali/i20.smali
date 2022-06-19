.class public Li20;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Le20;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lg20;->b(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Le20;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lh20;->b(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Lh20;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lg20;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lh20;->f(Landroid/view/View;)V

    :goto_0
    return-void
.end method
