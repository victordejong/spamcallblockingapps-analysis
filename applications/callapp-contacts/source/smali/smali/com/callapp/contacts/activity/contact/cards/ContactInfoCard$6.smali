.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->refreshListData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 273
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 274
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Birthday"

    const-string v1, "Clicked on Birthday notification"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FB_ID_EXTRA"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const-string v2, "CONTACT_ID_EXTRA"

    .line 284
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHONE_EXTRA"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$6;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$1100(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method
