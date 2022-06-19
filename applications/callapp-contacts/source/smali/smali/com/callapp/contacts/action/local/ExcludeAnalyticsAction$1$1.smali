.class Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;->a:Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;->a:Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager;->setContactExclude(Lcom/callapp/framework/phone/Phone;)V

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;->a:Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateExcludeAnalytics()V

    return-void
.end method
