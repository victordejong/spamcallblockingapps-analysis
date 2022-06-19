.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 3

    .line 1078
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->l()V

    .line 1080
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1081
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "Run in background"

    const-string v2, "show after upgrade"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
