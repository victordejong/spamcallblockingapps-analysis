.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(IIILjava/lang/String;Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;Ljava/lang/String;)V
    .locals 0

    .line 2213
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->a:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 2216
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->b:[I

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->a:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2218
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    goto :goto_1

    .line 2229
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;)V

    .line 2231
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cd:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 2236
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->getInstance()Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    .line 2238
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2243
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    .line 2247
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;->b:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v1, "Pusher"

    const-string v2, "Pusher clicked"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method
