.class public Lcom/callapp/contacts/manager/IncognitoContactsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/IncognitoData;
    .locals 2

    .line 46
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    .line 47
    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/IncognitoData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 49
    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    return-object p0
.end method

.method public static b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/IncognitoData;
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/IncognitoData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/IncognitoData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 6

    .line 66
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Incognito"

    const-string v2, "User added incognito contact"

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 67
    invoke-static {p1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/IncognitoData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/IncognitoData;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/objectbox/IncognitoData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setIsIncognito(Z)V

    .line 74
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getIncognitoContactsCount()J
    .locals 2

    .line 23
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Lio/objectbox/a;->b()J

    move-result-wide v0

    return-wide v0
.end method
