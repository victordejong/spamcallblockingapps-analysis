.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;
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
.field final synthetic a:Lcom/callapp/common/model/json/JSONWebsite;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Lcom/callapp/common/model/json/JSONWebsite;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;->a:Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 316
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 317
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$1200(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const-string v1, "Website clicked"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;ZLcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 318
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$1300(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$7;->a:Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
