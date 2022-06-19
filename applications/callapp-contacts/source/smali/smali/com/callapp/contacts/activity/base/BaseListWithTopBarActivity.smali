.class public abstract Lcom/callapp/contacts/activity/base/BaseListWithTopBarActivity;
.super Lcom/callapp/contacts/activity/base/BaseListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->TITLE_TOP_BAR:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 13
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListWithTopBarActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListWithTopBarActivity;->getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    move-result-object v0

    const v1, 0x7f0d001d

    invoke-static {p0, p1, v0, v1}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListWithTopBarActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListWithTopBarActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroidx/appcompat/app/ActionBar;Ljava/lang/CharSequence;)V

    return-void
.end method
