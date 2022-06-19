.class public final Landroidx/core/h/g;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# direct methods
.method public static a(Landroid/view/MenuItem;Landroidx/core/h/b;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 207
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_0

    .line 208
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1}, Landroidx/core/b/a/b;->a(Landroidx/core/h/b;)Landroidx/core/b/a/b;

    move-result-object p0

    .line 212
    :goto_0
    return-object p0

    .line 211
    :cond_0
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;CI)V
    .locals 2

    .prologue
    .line 418
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_1

    .line 419
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1, p2}, Landroidx/core/b/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 421
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 503
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_1

    .line 504
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1}, Landroidx/core/b/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 506
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 534
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_1

    .line 535
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1}, Landroidx/core/b/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 537
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 322
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_1

    .line 323
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1}, Landroidx/core/b/a/b;->a(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 325
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .locals 2

    .prologue
    .line 463
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_1

    .line 464
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1, p2}, Landroidx/core/b/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 466
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 351
    instance-of v0, p0, Landroidx/core/b/a/b;

    if-eqz v0, :cond_1

    .line 352
    check-cast p0, Landroidx/core/b/a/b;

    invoke-interface {p0, p1}, Landroidx/core/b/a/b;->b(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 354
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
