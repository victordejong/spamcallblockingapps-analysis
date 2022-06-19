.class Lcom/callapp/contacts/action/local/AddCallReminderAction$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/AddCallReminderAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/AddCallReminderAction$1;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1$1;->a:Lcom/callapp/contacts/action/local/AddCallReminderAction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1$1;->a:Lcom/callapp/contacts/action/local/AddCallReminderAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->d:Lcom/callapp/contacts/action/local/AddCallReminderAction;

    iget-object p2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1$1;->a:Lcom/callapp/contacts/action/local/AddCallReminderAction$1;

    iget-object p2, p2, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->a(Lcom/callapp/contacts/action/local/AddCallReminderAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V

    .line 70
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

    .line 71
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    :cond_0
    return-void
.end method
