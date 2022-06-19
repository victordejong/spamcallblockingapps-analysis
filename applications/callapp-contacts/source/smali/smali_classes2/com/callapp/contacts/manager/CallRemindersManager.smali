.class public Lcom/callapp/contacts/manager/CallRemindersManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;ILjava/lang/String;)I
    .locals 9

    .line 19
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 20
    new-instance v8, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 21
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    int-to-long v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v8}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return p3
.end method

.method public static a(Ljava/lang/Long;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callreminder/CallRemindersData;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationTime:Lio/objectbox/g;

    .line 31
    invoke-virtual {v1, v2}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationTime:Lio/objectbox/g;

    const/4 v3, 0x0

    .line 1272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 34
    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationId:Lio/objectbox/g;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    .line 37
    :cond_0
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    .line 39
    new-instance v9, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    .line 40
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getNotificationId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getNotificationTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getJobStringId()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;-><init>(Ljava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(ILjava/lang/Long;Ljava/lang/String;)V
    .locals 5

    .line 47
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationId:Lio/objectbox/g;

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->setNotificationTime(Ljava/lang/Long;)V

    .line 53
    :cond_0
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->setJobStringId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/Long;)J
    .locals 4

    .line 59
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationId:Lio/objectbox/g;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    move-result-wide v0

    return-wide v0
.end method
