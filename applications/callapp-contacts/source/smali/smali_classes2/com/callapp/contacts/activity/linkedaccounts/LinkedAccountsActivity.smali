.class public Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;
.super Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->ACTIVE_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->a:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->a:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->a:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->finish()V

    return-void
.end method

.method public bridge synthetic getNewFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->getNewFragment()Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getNewFragment()Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;",
            ">;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;-><init>()V

    .line 29
    new-instance v1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity$1;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->setEventsListener(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120407

    .line 23
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
