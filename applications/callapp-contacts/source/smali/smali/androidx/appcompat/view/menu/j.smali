.class public final Landroidx/appcompat/view/menu/j;
.super Landroidx/appcompat/view/menu/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/j$c;,
        Landroidx/appcompat/view/menu/j$b;,
        Landroidx/appcompat/view/menu/j$a;,
        Landroidx/appcompat/view/menu/j$d;,
        Landroidx/appcompat/view/menu/j$e;
    }
.end annotation


# instance fields
.field public final b:Landroidx/core/a/a/b;

.field public c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/a/a/b;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 60
    iput-object p2, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped Object can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final collapseActionView()Z
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    .line 321
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 312
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->a()Landroidx/core/view/b;

    move-result-object v0

    .line 313
    instance-of v1, v0, Landroidx/appcompat/view/menu/j$a;

    if-eqz v1, :cond_0

    .line 314
    check-cast v0, Landroidx/appcompat/view/menu/j$a;

    iget-object v0, v0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 2

    .line 291
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 292
    instance-of v1, v0, Landroidx/appcompat/view/menu/j$c;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Landroidx/appcompat/view/menu/j$c;

    .line 1528
    iget-object v0, v0, Landroidx/appcompat/view/menu/j$c;->a:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 349
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getGroupId()I

    move-result v0

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 382
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getItemId()I

    move-result v0

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getOrder()I

    move-result v0

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 360
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .line 331
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public final isCheckable()Z
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0}, Landroidx/core/a/a/b;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 302
    new-instance v0, Landroidx/appcompat/view/menu/j$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/j$b;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/j$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/j$a;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 306
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0}, Landroidx/core/a/a/b;->a(Landroidx/core/view/b;)Landroidx/core/a/a/b;

    return-object p0
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 2

    .line 279
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setActionView(I)Landroid/view/MenuItem;

    .line 281
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {p1}, Landroidx/core/a/a/b;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 282
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    new-instance v1, Landroidx/appcompat/view/menu/j$c;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/j$c;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Landroidx/core/a/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 269
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroidx/appcompat/view/menu/j$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/j$c;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 272
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1, p2}, Landroidx/core/a/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 343
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->a(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1, p2}, Landroidx/core/a/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .line 336
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    if-eqz p1, :cond_0

    .line 337
    new-instance v1, Landroidx/appcompat/view/menu/j$d;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/j$d;-><init>(Landroidx/appcompat/view/menu/j;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 336
    :goto_0
    invoke-interface {v0, v1}, Landroidx/core/a/a/b;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    .line 246
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    if-eqz p1, :cond_0

    .line 247
    new-instance v1, Landroidx/appcompat/view/menu/j$e;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/j$e;-><init>(Landroidx/appcompat/view/menu/j;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    :goto_0
    invoke-interface {v0, v1}, Landroidx/core/a/a/b;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1, p2}, Landroidx/core/a/a/b;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/a/a/b;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setShowAsAction(I)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->b(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-interface {v0, p1}, Landroidx/core/a/a/b;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
