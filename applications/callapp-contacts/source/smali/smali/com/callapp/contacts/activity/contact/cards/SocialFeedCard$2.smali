.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->startMatchingActivity(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    if-eqz p4, :cond_2

    const-string p1, "PERSON_SELECT_NET_ID"

    const/4 p2, -0x1

    .line 302
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p3, p2, :cond_2

    const-string p3, "PERSON_SELECT_SELECTED_USER_ID"

    .line 304
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eq p1, p2, :cond_2

    .line 305
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p4, "DONTHAVE"

    .line 312
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 313
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setDoesntHave(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 315
    :cond_1
    new-instance p4, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 v0, 0x1

    invoke-direct {p4, p3, v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 316
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {p2, v1, p3, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    .line 317
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 318
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->updateSocialNetwork(Lcom/callapp/contacts/model/contact/ContactData;ILcom/callapp/common/model/json/JSONSocialNetworkID;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method
