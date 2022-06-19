.class public abstract Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-static {p0, v0, v1, v2}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0044

    return v0
.end method

.method public getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;
    .locals 1

    .line 42
    sget-object v0, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->TITLE_TOP_BAR:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->a()V

    .line 19
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x7f060088

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroidx/appcompat/app/ActionBar;Ljava/lang/CharSequence;)V

    return-void
.end method
