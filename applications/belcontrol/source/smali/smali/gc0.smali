.class public final synthetic Lgc0;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/ColorStateList;Lhc0$a;Landroid/view/View;ZI)Lhc0;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    new-instance v0, Lkc0;

    sget-object v2, Lhc0$a;->b:Lhc0$a;

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-direct {v0, p0, v1, p1}, Lkc0;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Lhc0$a;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljc0;

    sget-object v2, Lhc0$a;->b:Lhc0$a;

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-direct {v0, p0, v1, p1}, Ljc0;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Lhc0$a;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lic0;

    sget-object v2, Lhc0$a;->b:Lhc0$a;

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_4
    invoke-direct {v0, p0, v1, p1}, Lic0;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Lhc0$a;)V

    :goto_0
    invoke-interface {v0, p2}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-interface {v0, p3}, Lhc0;->c(Z)V

    invoke-interface {v0, p4}, Lhc0;->setRadius(I)V

    return-object v0
.end method
