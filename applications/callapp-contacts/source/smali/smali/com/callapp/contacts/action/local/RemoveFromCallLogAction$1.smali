.class Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic e:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;Lcom/callapp/contacts/popup/contact/DialogList;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->e:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 59
    :pswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    instance-of v0, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCallLogs()Ljava/util/List;

    move-result-object p1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    .line 63
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/List;)V

    .line 66
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;->a(Landroid/content/Context;)V

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    check-cast p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    return-void

    .line 73
    :pswitch_1
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f120537

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;-><init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f1202a4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
