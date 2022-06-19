.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A()V
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

    .line 3485
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    if-nez p3, :cond_0

    .line 3489
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 p2, 0x0

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;)V

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 3496
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "true"

    goto :goto_0

    :cond_1
    const-string p2, "false"

    :goto_0
    const-string p3, "Permissions"

    const-string p4, "Default dialer from watch"

    invoke-virtual {p1, p3, p4, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getWearableClientHandler()Lcom/callapp/contacts/wearable/WearableClientHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a()V

    return-void
.end method
