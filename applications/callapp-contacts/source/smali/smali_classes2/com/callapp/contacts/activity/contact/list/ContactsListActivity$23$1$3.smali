.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;)V
    .locals 0

    .line 1869
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1$3;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 2

    .line 1872
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Push to premium popup"

    const-string v1, "Dismiss"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1882
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Push to premium popup"

    const-string v1, "Show"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dd:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void
.end method
