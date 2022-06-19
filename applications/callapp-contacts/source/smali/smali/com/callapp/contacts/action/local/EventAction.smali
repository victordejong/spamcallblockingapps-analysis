.class public Lcom/callapp/contacts/action/local/EventAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method

.method protected static a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;
    .locals 8

    .line 144
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/16 v4, 0x20

    const/4 v5, 0x0

    aput-char v4, v3, v5

    invoke-static {v1, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 146
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, " "

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/callapp/contacts/action/local/EventAction;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/framework/phone/Phone;)[Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f12005f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f120060

    new-array v2, v2, [Ljava/lang/Object;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V
    .locals 7

    .line 103
    new-instance v6, Lcom/callapp/contacts/action/local/EventAction$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/action/local/EventAction$2;-><init>(Lcom/callapp/contacts/action/local/EventAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 115
    invoke-virtual {v6}, Lcom/callapp/contacts/action/local/EventAction$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/action/local/EventAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/action/local/EventAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/framework/phone/Phone;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->c()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    .line 168
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->c()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    .line 171
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    :goto_0
    return-object v0
.end method

.method protected static getDateRange()Lcom/callapp/contacts/util/DateRange;
    .locals 1

    .line 181
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->getDateRangeForMeeting()Lcom/callapp/contacts/util/DateRange;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultTimezone()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 5

    .line 120
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ar:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/callapp/contacts/action/local/EventAction;->getDateRange()Lcom/callapp/contacts/util/DateRange;

    move-result-object v1

    .line 123
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->au:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->au:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const v2, 0x7f12005e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    invoke-static {p2}, Lcom/callapp/contacts/action/local/EventAction;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-static {p1, p2, v0, v1, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DateRange;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 0

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/EventAction$3;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return p3

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p3
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 10

    .line 49
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Actions"

    const-string v1, "Event action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v7, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v7}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const/4 p3, 0x1

    .line 1056
    invoke-virtual {v7, p3}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f120537

    .line 1057
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getVisibleEmails()Ljava/util/Collection;

    move-result-object v0

    .line 1060
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p3

    invoke-virtual {p3, p1, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const-string p3, ""

    .line 1062
    invoke-direct {p0, p1, p2, v7, p3}, Lcom/callapp/contacts/action/local/EventAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V

    return-void

    .line 1066
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, p3, :cond_1

    .line 1067
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object p3

    .line 1068
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p1, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 1069
    invoke-direct {p0, p1, p2, v7, p3}, Lcom/callapp/contacts/action/local/EventAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V

    return-void

    .line 1073
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v9, v1, [Ljava/lang/String;

    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1076
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONEmail;

    .line 1077
    new-instance v4, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    add-int/2addr v2, p3

    goto :goto_0

    .line 1082
    :cond_2
    new-instance p3, Lcom/callapp/contacts/popup/contact/DialogList;

    const v0, 0x7f12005d

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 1083
    new-instance v0, Lcom/callapp/contacts/popup/contact/AdapterText;

    const v2, 0x7f0d00aa

    invoke-direct {v0, p1, v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1084
    new-instance v1, Lcom/callapp/contacts/action/local/EventAction$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/callapp/contacts/action/local/EventAction$1;-><init>(Lcom/callapp/contacts/action/local/EventAction;Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Lcom/callapp/contacts/model/contact/ContactData;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 1098
    invoke-virtual {p3, v0}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1099
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120127

    .line 186
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "EventAction"

    return-object v0
.end method
