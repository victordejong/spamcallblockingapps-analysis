.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 1927
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1930
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 1931
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "FAB action performed"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_DIALER_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    return-void
.end method
