.class Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;->b:Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager;->setContactUnExclude(Lcom/callapp/framework/phone/Phone;)V

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateExcludeAnalytics()V

    return-void
.end method
