.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d()V

    .line 421
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 424
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "User called after searching with keypad"

    const-string v3, "Called from contact list"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z

    .line 428
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    return-void
.end method
