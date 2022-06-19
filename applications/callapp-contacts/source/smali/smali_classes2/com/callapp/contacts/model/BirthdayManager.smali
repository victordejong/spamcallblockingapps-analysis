.class public Lcom/callapp/contacts/model/BirthdayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DAYS_BACK_TO_SHOW_BIRTHDAY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractPhoneAndContactIdFromKey(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    .line 232
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 233
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    .line 235
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    .line 241
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 242
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 243
    sget-object v7, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    cmp-long v8, v5, v3

    if-lez v8, :cond_2

    .line 245
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v2, :cond_3

    .line 247
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    goto :goto_2

    .line 250
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    .line 253
    :cond_3
    :goto_2
    invoke-virtual {v1, v5, v6}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setContactId(J)V

    .line 254
    invoke-virtual {v1, v7}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setPhone(Lcom/callapp/framework/phone/Phone;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static getBirthdayNameForSocialId(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 107
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    invoke-virtual {p0, v0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBirthdays(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x5

    .line 125
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 126
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 127
    sget-object v2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->dayOfMonth:Lio/objectbox/g;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    .line 128
    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->month:Lio/objectbox/g;

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    .line 131
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    sget-object v2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    const/4 v3, 0x0

    .line 1272
    invoke-virtual {v0, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 136
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 137
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_5

    .line 140
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    .line 143
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->isConnectedToSocialNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialNetId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 145
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 148
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->isContact()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->isConnectedToSocialNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->isContact()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 159
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 164
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-static {v1}, Lcom/callapp/contacts/model/BirthdayManager;->extractPhoneAndContactIdFromKey(Ljava/util/List;)V

    return-object v1
.end method

.method public static getBirthdaysAsReminders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    invoke-static {v0}, Lcom/callapp/contacts/model/BirthdayManager;->getBirthdays(Z)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x3

    .line 175
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 180
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x23

    add-int/2addr v1, v2

    .line 182
    new-instance v2, Lcom/callapp/contacts/model/BirthdayManager$1;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/model/BirthdayManager$1;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    .line 207
    invoke-static {v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->birthdayPojoToReminder(Lcom/callapp/contacts/model/objectbox/BirthdayData;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    move-result-object v2

    .line 208
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getExistingContactWithSocialDataOrCreateNew(JLcom/callapp/framework/phone/Phone;ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/BirthdayData;
    .locals 2

    .line 40
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 42
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    int-to-long v0, p3

    .line 45
    invoke-virtual {p1, p2, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    .line 46
    invoke-virtual {p1, p2, p4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;-><init>()V

    .line 50
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setSocialNetId(I)V

    .line 52
    invoke-virtual {p1, p4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setSocialProfileId(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/BirthdayManager;->extractPhoneAndContactIdFromKey(Ljava/util/List;)V

    return-object p1
.end method

.method public static getExistingContactWithoutSocialDataOrCreateNew(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/BirthdayData;
    .locals 3

    .line 62
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 64
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 67
    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    const-wide/16 v1, 0x0

    .line 68
    invoke-virtual {p1, p2, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    .line 69
    invoke-virtual {p1, p2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    new-instance p1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;-><init>()V

    .line 75
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setPhoneOrIdKey(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    .line 79
    invoke-virtual {v0, p1}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    move-object p1, p0

    .line 82
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/BirthdayManager;->extractPhoneAndContactIdFromKey(Ljava/util/List;)V

    return-object p1
.end method

.method public static getExistingNonContactWithSocialNetworkOrCreateNew(ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/BirthdayData;
    .locals 4

    .line 89
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    int-to-long v2, p0

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    .line 93
    invoke-virtual {v0, v1, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;-><init>()V

    .line 97
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setSocialNetId(I)V

    .line 98
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setSocialProfileId(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/BirthdayManager;->extractPhoneAndContactIdFromKey(Ljava/util/List;)V

    return-object v0
.end method

.method public static insert(Lcom/callapp/contacts/model/objectbox/BirthdayData;)V
    .locals 2

    .line 216
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 219
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialNetId()I

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/callapp/contacts/model/BirthdayManager;->removeOtherEntriesForContact(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static insert(Ljava/util/Collection;)V
    .locals 2

    .line 225
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static removeAllSocialEntries(JLcom/callapp/framework/phone/Phone;)V
    .locals 3

    .line 273
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 275
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    const-wide/16 v1, 0x0

    .line 278
    invoke-virtual {p0, p1, v1, v2}, Lio/objectbox/query/QueryBuilder;->d(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 280
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {v0, p0}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public static removeDeviceDataEntries(JLcom/callapp/framework/phone/Phone;)V
    .locals 3

    .line 286
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 288
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {p1, p2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    const-wide/16 v1, 0x0

    .line 291
    invoke-virtual {p0, p1, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 293
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {v0, p0}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method private static removeOtherEntriesForContact(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 259
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-virtual {v1, v2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    int-to-long v2, p1

    .line 262
    invoke-virtual {p0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    .line 263
    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 265
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {v0, p0}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method
