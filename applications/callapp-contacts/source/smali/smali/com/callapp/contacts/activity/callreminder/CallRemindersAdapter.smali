.class public Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/callreminder/CallRemindersData;",
        "Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;

.field private d:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callreminder/CallRemindersData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 53
    iput-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 54
    iput-object p3, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;

    return-object p0
.end method

.method public static a(Landroid/content/Context;IJLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 7

    int-to-long v0, p1

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const-class p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    const-string p1, "Snooze Call Reminder - contactData is null"

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f12016e

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1111
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p1

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/action/ActionDoneListener;Z)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/action/ActionDoneListener;Z)V
    .locals 6

    .line 93
    new-instance v4, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;

    invoke-direct {v4, p4, p6, p5}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;-><init>(IZLcom/callapp/contacts/action/ActionDoneListener;)V

    new-instance v5, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;

    invoke-direct {v5, p6, p4}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$2;-><init>(ZI)V

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->a(Ljava/util/Calendar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 3

    .line 41
    check-cast p1, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    .line 1123
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->a(Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    .line 1125
    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;-><init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->setOnEditClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;-><init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->setOnDeleteClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Missed Calls"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 59
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->MISSED_CALL_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    .line 2069
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_REMINDER:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2070
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2072
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2074
    new-instance p2, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method
