.class Lcom/callapp/contacts/action/local/AddCallReminderAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic d:Lcom/callapp/contacts/action/local/AddCallReminderAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/AddCallReminderAction;Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->d:Lcom/callapp/contacts/action/local/AddCallReminderAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->d:Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-static {p1}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->a(Lcom/callapp/contacts/action/local/AddCallReminderAction;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/action/local/AddCallReminderAction$1$1;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/action/local/AddCallReminderAction$1$1;-><init>(Lcom/callapp/contacts/action/local/AddCallReminderAction$1;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->a(Ljava/util/Calendar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Call reminder action"

    const-string v1, "Call reminder with CallApp clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :pswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, v0}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 81
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f120054
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
