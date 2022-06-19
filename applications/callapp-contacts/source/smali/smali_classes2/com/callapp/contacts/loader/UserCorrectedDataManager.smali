.class public Lcom/callapp/contacts/loader/UserCorrectedDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
    .locals 2

    .line 87
    invoke-static {p4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getId()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 93
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a()V

    .line 96
    :cond_0
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->setUserCorrectedType(I)V

    .line 97
    invoke-virtual {p0, p4}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->setFullName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(JLjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
    .locals 3

    const/4 v0, 0x1

    .line 154
    invoke-static {p0, p1, p2, v0}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;Z)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;-><init>()V

    .line 157
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->setPhoneOrIdKey(Ljava/lang/String;)V

    new-array p0, v0, [Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    .line 158
    invoke-static {p0}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a([Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    :cond_0
    return-object v1
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 108
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    const/16 v0, 0xa

    if-gt p3, v0, :cond_2

    .line 112
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 113
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getId()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    .line 116
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->c()V

    .line 119
    :cond_1
    new-instance p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;-><init>()V

    .line 120
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->setSocialNetworkId(I)V

    .line 121
    invoke-virtual {p1, p4}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->setProfileId(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/objectbox/relation/ToMany;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(JLjava/lang/String;Z)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
    .locals 2

    .line 167
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    .line 170
    sget-object p2, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    if-eqz p3, :cond_0

    .line 172
    sget-object p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->userCorrectedPositive:Lio/objectbox/relation/b;

    const/4 p2, 0x0

    new-array p2, p2, [Lio/objectbox/relation/b;

    .line 1389
    invoke-virtual {p1, p0, p2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/relation/b;[Lio/objectbox/relation/b;)Lio/objectbox/query/QueryBuilder;

    .line 174
    :cond_0
    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    return-object p0
.end method

.method public static a(JLjava/lang/String;I)V
    .locals 4

    .line 41
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    .line 43
    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-object p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {v2, p1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 49
    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 57
    invoke-virtual {p1}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 60
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    .line 62
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getSocialNetworkId()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    move-object p2, v2

    .line 69
    :cond_1
    const-class p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-virtual {v0, p1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 73
    new-instance p3, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;

    invoke-direct {p3, v1, p0, p1, p2}, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;-><init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserCorrectedData;Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)V

    invoke-virtual {v0, p3}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private static varargs a([Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V
    .locals 5

    .line 139
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_0

    .line 141
    aget-object v2, p0, v0

    .line 143
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 145
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->setPhoneNumber(Ljava/lang/String;)V

    .line 146
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->setContactId(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 180
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    .line 182
    sget-object p2, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 183
    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static getAllUserCorrectedData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/UserCorrectedData;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    .line 1130
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 1132
    invoke-static {v3}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a([Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
