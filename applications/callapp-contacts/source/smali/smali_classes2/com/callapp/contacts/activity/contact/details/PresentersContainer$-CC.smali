.class public final synthetic Lcom/callapp/contacts/activity/contact/details/PresentersContainer$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 2
    .param p0, "_this"    # Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const-string v0, "EXTRA_INCOGNITO_CALL"

    .line 74
    invoke-interface {p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->hasIntentExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static $default$findFragment(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)Landroidx/fragment/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getFragmentManager(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Landroidx/fragment/app/FragmentManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$hasIntentExtra(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static $default$openNotificationAccsess(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    return-void
.end method

.method public static $default$scrollToPosition(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    return-void
.end method
