.class Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;
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
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 100
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 101
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Last communication card clicked"

    const-string v2, "SMS info pressed"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;->a:Lcom/callapp/framework/phone/Phone;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
