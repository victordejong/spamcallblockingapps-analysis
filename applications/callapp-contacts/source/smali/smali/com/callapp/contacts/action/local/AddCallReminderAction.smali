.class public Lcom/callapp/contacts/action/local/AddCallReminderAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/action/local/AddCallReminderAction;)Ljava/util/Calendar;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->getDefaultCalendar()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/action/local/AddCallReminderAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V
    .locals 8

    .line 1182
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1183
    new-instance v0, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;-><init>(Lcom/callapp/contacts/action/local/AddCallReminderAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V

    .line 1188
    invoke-virtual {v0}, Lcom/callapp/contacts/action/local/AddCallReminderAction$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_0

    .line 1190
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V

    .line 1193
    :goto_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 1194
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 1195
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1196
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1205cf

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2132
    invoke-virtual {p1, p0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 1199
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1200
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f120725

    .line 1202
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1204
    :cond_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd MMMM yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 1206
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    const v0, 0x7f1205ce

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p0, v4, v3

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3132
    invoke-virtual {p2, p0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V

    return-void
.end method

.method public static a(Ljava/util/Calendar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 9

    .line 98
    new-instance v6, Lcom/callapp/contacts/popup/contact/DialogList;

    const v0, 0x7f120611

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v6, v0}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f120162

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080437

    invoke-direct {v1, v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f120164

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f120163

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f12016a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v7, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v1, 0x7f0d00aa

    invoke-direct {v7, p1, v1, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 112
    new-instance v8, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;

    move-object v0, v8

    move-object v1, v6

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/action/local/AddCallReminderAction$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogList;Ljava/util/Calendar;Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    if-eqz p5, :cond_0

    .line 157
    invoke-virtual {v6, p5}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 159
    :cond_0
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p0

    invoke-virtual {p0, p1, v6}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 8

    .line 240
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->getDateRangeForMeeting()Lcom/callapp/contacts/util/DateRange;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xb

    if-lt v1, v5, :cond_0

    const v1, 0x7f120052

    new-array v5, v2, [Ljava/lang/Object;

    .line 246
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 248
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120053

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    .line 249
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {v6, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p0, p1, v1, v0, v4}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DateRange;Ljava/lang/String;)Z

    return-void
.end method

.method private static b(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Calendar;)V
    .locals 4

    .line 211
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->V:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 218
    :goto_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->V:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 220
    sget-object v1, Lcom/callapp/contacts/workers/CallReminderWorker;->a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;->a(IJ)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1, v0, v1}, Lcom/callapp/contacts/manager/CallRemindersManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;ILjava/lang/String;)I

    .line 222
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    const p0, 0x7f120166

    .line 224
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 225
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bV:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    const p0, 0x7f120165

    .line 227
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 229
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bV:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private getDefaultCalendar()Ljava/util/Calendar;
    .locals 5

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0x9

    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    .line 175
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 260
    :cond_0
    sget-object v0, Lcom/callapp/contacts/action/local/AddCallReminderAction$4;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/local/LocalAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 5

    .line 48
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Actions"

    const-string v1, "Add call reminder action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p3, Lcom/callapp/contacts/popup/contact/DialogList;

    const v0, 0x7f120161

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f120055

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08034f

    invoke-direct {v1, v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f120054

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080484

    invoke-direct {v1, v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v2, 0x7f0d00aa

    invoke-direct {v1, p1, v2, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 60
    new-instance v0, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/callapp/contacts/action/local/AddCallReminderAction$1;-><init>(Lcom/callapp/contacts/action/local/AddCallReminderAction;Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 88
    invoke-virtual {p3, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
