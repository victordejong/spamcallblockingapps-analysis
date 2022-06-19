.class Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->onUnsureSocialsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 146
    invoke-static {v0, p1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    .line 148
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a()V

    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;

    invoke-direct {v4, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;I)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->onUserDismissingSocial(Landroid/content/Context;Ljava/lang/Integer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialData(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/DataSource;->getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method
