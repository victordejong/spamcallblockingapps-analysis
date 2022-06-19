.class Lcom/callapp/contacts/action/local/AddCallReminderAction$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/local/AddCallReminderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Ljava/util/Calendar;

.field final synthetic c:Lcom/callapp/contacts/action/local/AddCallReminderAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/AddCallReminderAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;->c:Lcom/callapp/contacts/action/local/AddCallReminderAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;->b:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;->b:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V

    return-void
.end method
