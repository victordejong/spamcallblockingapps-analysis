.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;)V
    .locals 0

    .line 2218
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2222
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Pusher"

    const-string v1, "Open draw on screen access"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    :cond_0
    return-void
.end method
