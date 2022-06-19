.class Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;
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

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 145
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 146
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Last communication card clicked"

    const-string v2, "Gmail info pressed"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/action/local/EmailAction;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/local/EmailAction;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/action/local/EmailAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
