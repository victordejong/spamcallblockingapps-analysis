.class Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->setIsSure(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 149
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->e(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Contact Details"

    const-string v3, "Profile is sure"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->b:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    return-void
.end method
