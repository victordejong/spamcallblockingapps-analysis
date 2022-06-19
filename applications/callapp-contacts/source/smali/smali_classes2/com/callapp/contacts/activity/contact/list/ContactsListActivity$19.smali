.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;Z)V
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

    .line 1640
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$19;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 1643
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact List"

    const-string v1, "Come from sync notification without internet and press on enable"

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$19;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
