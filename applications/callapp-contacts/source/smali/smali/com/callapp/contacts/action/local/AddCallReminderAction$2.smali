.class final Lcom/callapp/contacts/action/local/AddCallReminderAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/AddCallReminderAction;->a(Ljava/util/Calendar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Ljava/util/Calendar;

.field final synthetic c:Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogList;Ljava/util/Calendar;Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->b:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->c:Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const v1, 0x7f12016a

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    .line 126
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xc

    const/16 v1, 0xf

    .line 120
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 130
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->b:Ljava/util/Calendar;

    new-instance v3, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;-><init>(Lcom/callapp/contacts/action/local/AddCallReminderAction$2;Ljava/util/Calendar;)V

    invoke-direct {p1, v1, v3}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;-><init>(Ljava/util/Calendar;Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;)V

    .line 148
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v3}, Lcom/callapp/contacts/popup/contact/DialogList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :goto_0
    if-eqz v2, :cond_1

    .line 152
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->c:Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f120162
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
