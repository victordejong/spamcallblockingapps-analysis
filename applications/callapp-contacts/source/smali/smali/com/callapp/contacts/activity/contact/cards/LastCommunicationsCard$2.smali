.class Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->getDataList(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 153
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 154
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Last communication card clicked"

    const-string v2, "Gmail info pressed"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getThreadId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void
.end method
