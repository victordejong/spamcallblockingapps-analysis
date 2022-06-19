.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;
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
.field final synthetic a:Lcom/callapp/common/model/json/JSONEmail;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Lcom/callapp/common/model/json/JSONEmail;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->c:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->a:Lcom/callapp/common/model/json/JSONEmail;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 197
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 198
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->c:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const-string v1, "Gmail info icon pressed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;ZLcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 199
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->a:Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/action/local/EmailAction;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/action/local/EmailAction;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->c:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/action/local/EmailAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method
