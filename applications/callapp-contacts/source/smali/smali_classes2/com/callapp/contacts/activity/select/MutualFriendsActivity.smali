.class public Lcom/callapp/contacts/activity/select/MutualFriendsActivity;
.super Lcom/callapp/contacts/activity/base/BaseListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/callapp/contacts/model/PersonData;)V
    .locals 3

    .line 1071
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 1089
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 1085
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v2}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 1081
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 1077
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 1073
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    .line 1439
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_8

    .line 1441
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getPublicProfileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1442
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getPublicProfileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 1444
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v2, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void

    .line 1449
    :cond_7
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0036

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PERSON_SELECT_LIST_KEY"

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 50
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const p1, 0x7f12049d

    .line 52
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    new-instance p1, Lcom/callapp/contacts/activity/select/MutualFriendsActivity$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity$1;-><init>(Lcom/callapp/contacts/activity/select/MutualFriendsActivity;)V

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/select/MutualFriendsAdapter;

    invoke-direct {v2, v0, p1}, Lcom/callapp/contacts/activity/select/MutualFriendsAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->finish()V

    return-void

    .line 37
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->finish()V

    return-void
.end method
