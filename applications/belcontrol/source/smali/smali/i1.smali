.class public Li1;
.super Lx0;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lz0;

.field private mParentMenu:Lx0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx0;Lz0;)V
    .locals 0

    invoke-direct {p0, p1}, Lx0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Li1;->mParentMenu:Lx0;

    iput-object p3, p0, Li1;->mItem:Lz0;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lz0;)Z
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1}, Lx0;->collapseItemActionView(Lz0;)Z

    move-result p1

    return p1
.end method

.method public dispatchMenuItemSelected(Lx0;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lx0;->dispatchMenuItemSelected(Lx0;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1, p2}, Lx0;->dispatchMenuItemSelected(Lx0;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public expandItemActionView(Lz0;)Z
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1}, Lx0;->expandItemActionView(Lz0;)Z

    move-result p1

    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Li1;->mItem:Lz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz0;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lx0;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Li1;->mItem:Lz0;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    return-object v0
.end method

.method public getRootMenu()Lx0;
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0}, Lx0;->getRootMenu()Lx0;

    move-result-object v0

    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0}, Lx0;->isGroupDividerEnabled()Z

    move-result v0

    return v0
.end method

.method public isQwertyMode()Z
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0}, Lx0;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0}, Lx0;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lx0$a;)V
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1}, Lx0;->setCallback(Lx0$a;)V

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1}, Lx0;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lx0;->setHeaderIconInt(I)Lx0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lx0;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lx0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lx0;->setHeaderTitleInt(I)Lx0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lx0;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lx0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lx0;->setHeaderViewInt(Landroid/view/View;)Lx0;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Li1;->mItem:Lz0;

    invoke-virtual {v0, p1}, Lz0;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Li1;->mItem:Lz0;

    invoke-virtual {v0, p1}, Lz0;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1}, Lx0;->setQwertyMode(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    iget-object v0, p0, Li1;->mParentMenu:Lx0;

    invoke-virtual {v0, p1}, Lx0;->setShortcutsVisible(Z)V

    return-void
.end method
