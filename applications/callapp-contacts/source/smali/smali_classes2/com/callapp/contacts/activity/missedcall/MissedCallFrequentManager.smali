.class public Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    .line 65
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v5

    .line 66
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->phoneAsGlobal:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->missedCallType:Lio/objectbox/g;

    .line 1582
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 1583
    iget-wide v2, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/objectbox/query/QueryBuilder;->nativeIn(JI[IZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(J)V

    .line 66
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 7

    .line 75
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 80
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    .line 82
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    .line 85
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setMissedCallType(I)V

    .line 86
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    .line 92
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v0, v2}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;",
            ">;Z)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    .line 59
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result p2

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, p2, v1, v2}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->phoneAsGlobal:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V
    .locals 6

    .line 31
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->phoneAsGlobal:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->missedCallType:Lio/objectbox/g;

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p1, p2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;I)V

    goto :goto_0

    .line 39
    :cond_0
    sget-object p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 40
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object p0

    sget-object p2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object p0

    sget-object p2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 41
    :cond_1
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object p1

    .line 45
    :cond_2
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setFrequentType(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)V

    .line 47
    :goto_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setDeleteTimeStamp(J)V

    const-wide/16 p0, 0x0

    cmp-long p2, p3, p0

    if-eqz p2, :cond_3

    .line 48
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getLastDeleteFromNotificationTimeStamp()J

    move-result-wide v3

    cmp-long p2, v3, p0

    if-nez p2, :cond_4

    .line 50
    :cond_3
    invoke-virtual {v2, p3, p4}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setLastDeleteFromNotificationTimeStamp(J)V

    .line 53
    :cond_4
    invoke-virtual {v0, v2}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 54
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
