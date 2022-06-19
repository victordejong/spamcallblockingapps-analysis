.class public Lcom/callapp/contacts/popup/DefaultPersonSelectListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;


# instance fields
.field private final a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field private final b:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 18
    iput-object p2, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->b:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setDoesntHave(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 28
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->b:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    .line 31
    iget-object p1, p0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result p1

    .line 32
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->getSocialNetworkName(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Profile is sure"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
