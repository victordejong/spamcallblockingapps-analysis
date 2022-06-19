.class public Lcom/callapp/contacts/loader/UserPositiveNegativeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;
    .locals 0

    .line 192
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;
    .locals 2

    .line 358
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 360
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p1

    const-class p2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p1, p2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    .line 362
    sget-object p2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userNegativeSocialData:Lio/objectbox/relation/b;

    const/4 v0, 0x0

    new-array v1, v0, [Lio/objectbox/relation/b;

    .line 1389
    invoke-virtual {p0, p2, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/relation/b;[Lio/objectbox/relation/b;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 363
    sget-object p2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userPositiveSocialData:Lio/objectbox/relation/b;

    new-array v0, v0, [Lio/objectbox/relation/b;

    .line 2389
    invoke-virtual {p0, p2, v0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/relation/b;[Lio/objectbox/relation/b;)Lio/objectbox/query/QueryBuilder;

    .line 365
    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    return-object p0
.end method

.method private static a(Ljava/lang/String;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;
    .locals 1

    .line 371
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->b(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;I)Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
            ">;I)",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;"
        }
    .end annotation

    .line 318
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    .line 320
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getSocialNetworkId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(J)V
    .locals 4

    .line 62
    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    .line 75
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->isSure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p1

    .line 85
    const-class v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p1, v0}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 86
    const-class v2, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v2

    .line 88
    new-instance v3, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$1;

    invoke-direct {v3, v0, p0, v2, v1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$1;-><init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lio/objectbox/a;Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static a(JLjava/lang/String;I)V
    .locals 2

    .line 154
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Ljava/lang/String;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p1

    .line 158
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 163
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    .line 166
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getSocialNetworkId()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 167
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    :cond_1
    new-instance p1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;-><init>()V

    .line 174
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->setSocialNetworkId(I)V

    const-string p3, "DONTHAVE"

    .line 175
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->setProfileId(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/objectbox/relation/ToMany;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p1

    .line 179
    const-class p3, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p1, p3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p3

    .line 180
    const-class v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p1, v0}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$3;

    invoke-direct {v1, p3, p0, v0, p2}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$3;-><init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lio/objectbox/a;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    if-eqz p2, :cond_6

    :cond_0
    if-eqz p4, :cond_6

    if-lez p3, :cond_6

    const/16 v0, 0xa

    if-gt p3, v0, :cond_6

    .line 104
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Ljava/lang/String;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    .line 108
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result v4

    if-ne v4, p3, :cond_1

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 115
    new-instance v1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;-><init>()V

    .line 116
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->setSocialNetworkId(I)V

    .line 118
    invoke-virtual {v1, p4}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->setProfileId(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/objectbox/relation/ToMany;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    .line 130
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getSocialNetworkId()I

    move-result v1

    if-ne v1, p3, :cond_4

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 136
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p0

    .line 137
    const-class p2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p0, p2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p2

    .line 138
    const-class p3, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p0, p3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p3

    .line 140
    new-instance p4, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;

    invoke-direct {p4, p2, v0, p3, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;-><init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lio/objectbox/a;Ljava/util/List;)V

    invoke-virtual {p0, p4}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 332
    invoke-static {v1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a([Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static varargs a([Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)V
    .locals 5

    .line 338
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_0

    .line 339
    aget-object v2, p0, v0

    .line 341
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 343
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->setPhoneNumber(Ljava/lang/String;)V

    .line 344
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->setContactId(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;I)Z
    .locals 0

    .line 196
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->b(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p0

    .line 200
    invoke-static {p0, p3}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Ljava/util/List;I)Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;Z)Z
    .locals 1

    .line 204
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Ljava/lang/String;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p1

    .line 208
    invoke-static {p1, p3}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Ljava/util/List;I)Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p1, p2}, Lio/objectbox/relation/ToMany;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;-><init>()V

    .line 214
    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->setSocialNetworkId(I)V

    .line 215
    invoke-virtual {v0, p4}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->setProfileId(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p5}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->setSure(Z)V

    .line 217
    invoke-virtual {p1, v0}, Lio/objectbox/relation/ToMany;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p1

    .line 220
    const-class p3, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p1, p3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p3

    .line 221
    const-class p4, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p1, p4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p4

    .line 223
    new-instance p5, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;

    invoke-direct {p5, p3, p0, p2, p4}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;-><init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;Lio/objectbox/a;)V

    invoke-virtual {p1, p5}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static b(JLcom/callapp/framework/phone/Phone;)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 293
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    .line 299
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-nez p2, :cond_0

    .line 302
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 303
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;
    .locals 1

    .line 377
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;-><init>()V

    .line 381
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->setPhoneOrIdKey(Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    .line 382
    invoke-static {p0}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a([Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)V

    :cond_0
    return-object v0
.end method

.method public static b(JLjava/lang/String;ILjava/lang/String;)Z
    .locals 5

    .line 1352
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object p0

    .line 244
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    .line 251
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    .line 255
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DONTHAVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-lez p3, :cond_0

    .line 263
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result v3

    if-ne v3, p3, :cond_0

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 272
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p3

    .line 273
    const-class p4, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p3, p4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p4

    .line 274
    const-class v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    invoke-virtual {p3, v0}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$5;

    invoke-direct {v1, p4, p0, v0, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$5;-><init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lio/objectbox/a;Ljava/util/List;)V

    invoke-virtual {p3, v1}, Lio/objectbox/BoxStore;->a(Ljava/lang/Runnable;)V

    :cond_3
    return p2
.end method

.method public static getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllNonContactsWithNegativeOrPositive()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->phoneOrIdKey:Lio/objectbox/g;

    const-string v2, "@"

    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    invoke-static {v0}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(Ljava/util/List;)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    .line 46
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 47
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 48
    :goto_2
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
