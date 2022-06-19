.class public Lbb0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Z

.field public c:Z

.field public d:I

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Ljava/lang/CharSequence;

.field public h:I

.field public j:I

.field public k:I

.field public l:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(IIILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbb0;->h:I

    iput p1, p0, Lbb0;->j:I

    iput p3, p0, Lbb0;->k:I

    iput-object p4, p0, Lbb0;->g:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lbb0;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lbb0;->d:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lbb0;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lbb0;->d:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lbb0;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lbb0;->j:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lbb0;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lbb0;->h:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lbb0;->k:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lbb0;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lbb0;->b:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lbb0;->c:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0

    iput-boolean p1, p0, Lbb0;->b:Z

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 0

    iput p1, p0, Lbb0;->d:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lbb0;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lbb0;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    iput-boolean p1, p0, Lbb0;->c:Z

    return-object p0
.end method
