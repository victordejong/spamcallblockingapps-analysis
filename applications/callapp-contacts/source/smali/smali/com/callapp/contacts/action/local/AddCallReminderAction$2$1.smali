.class Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/callapp/contacts/action/local/AddCallReminderAction$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/AddCallReminderAction$2;Ljava/util/Calendar;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->b:Lcom/callapp/contacts/action/local/AddCallReminderAction$2;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->a:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->a:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->a:Ljava/util/Calendar;

    const/4 p2, 0x6

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->add(II)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->b:Lcom/callapp/contacts/action/local/AddCallReminderAction$2;

    iget-object p1, p1, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->c:Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;

    iget-object p2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->b:Lcom/callapp/contacts/action/local/AddCallReminderAction$2;

    iget-object p2, p2, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->b:Lcom/callapp/contacts/action/local/AddCallReminderAction$2;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$2$1;->a:Ljava/util/Calendar;

    invoke-interface {p1, p2, v0, v1}, Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    return-void
.end method
