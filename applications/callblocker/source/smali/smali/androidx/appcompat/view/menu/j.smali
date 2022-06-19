.class public Landroidx/appcompat/view/menu/j;
.super Landroidx/appcompat/view/menu/c;
.source "MenuItemWrapperICS.java"

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
.field private final b:Landroidx/core/b/a/b;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/b/a/b;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;)V

    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrapped Object can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .prologue
    .line 387
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setExclusiveCheckable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 389
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->c:Ljava/lang/reflect/Method;

    .line 391
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    const-string/jumbo v1, "MenuItemWrapper"

    const-string/jumbo v2, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->a()Landroidx/core/h/b;

    move-result-object v0

    .line 313
    instance-of v1, v0, Landroidx/appcompat/view/menu/j$a;

    if-eqz v1, :cond_0

    .line 314
    check-cast v0, Landroidx/appcompat/view/menu/j$a;

    iget-object v0, v0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 292
    instance-of v1, v0, Landroidx/appcompat/view/menu/j$c;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Landroidx/appcompat/view/menu/j$c;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j$c;->c()Landroid/view/View;

    move-result-object v0

    .line 295
    :cond_0
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 302
    new-instance v0, Landroidx/appcompat/view/menu/j$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/j$b;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 306
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    if-eqz p1, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroidx/core/b/a/b;->a(Landroidx/core/h/b;)Landroidx/core/b/a/b;

    .line 307
    return-object p0

    .line 304
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/j$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/j$a;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setActionView(I)Landroid/view/MenuItem;

    .line 281
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0}, Landroidx/core/b/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 282
    instance-of v1, v0, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    new-instance v2, Landroidx/appcompat/view/menu/j$c;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/j$c;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Landroidx/core/b/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 286
    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 269
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroidx/appcompat/view/menu/j$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/j$c;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 272
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 273
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 172
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1, p2}, Landroidx/core/b/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 178
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setCheckable(Z)Landroid/view/MenuItem;

    .line 194
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setChecked(Z)Landroid/view/MenuItem;

    .line 205
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->a(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;

    .line 344
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setEnabled(Z)Landroid/view/MenuItem;

    .line 226
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 109
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 366
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 377
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 126
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 150
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1, p2}, Landroidx/core/b/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 156
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/j$d;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/j$d;-><init>(Landroidx/appcompat/view/menu/j;Landroid/view/MenuItem$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v1, v0}, Landroidx/core/b/a/b;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 338
    return-object p0

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/j$e;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/j$e;-><init>(Landroidx/appcompat/view/menu/j;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v1, v0}, Landroidx/core/b/a/b;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 248
    return-object p0

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1, p2}, Landroidx/core/b/a/b;->setShortcut(CC)Landroid/view/MenuItem;

    .line 137
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/b/a/b;->setShortcut(CCII)Landroid/view/MenuItem;

    .line 144
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setShowAsAction(I)V

    .line 259
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 264
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setTitle(I)Landroid/view/MenuItem;

    .line 87
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 81
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->b(Ljava/lang/CharSequence;)Landroidx/core/b/a/b;

    .line 355
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/b/a/b;

    invoke-interface {v0, p1}, Landroidx/core/b/a/b;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
