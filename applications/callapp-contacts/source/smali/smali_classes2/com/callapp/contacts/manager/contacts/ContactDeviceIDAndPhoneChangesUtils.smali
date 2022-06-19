.class public Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Landroidx/core/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/core/e/b<",
            "Ljava/lang/Class;",
            "Lio/objectbox/g;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[Landroidx/core/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/core/e/b<",
            "Ljava/lang/Class;",
            "Lio/objectbox/g;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    new-array v0, v0, [Landroidx/core/e/b;

    .line 69
    const-class v1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 70
    invoke-static {v1, v2}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->phoneOrIdKey:Lio/objectbox/g;

    .line 71
    invoke-static {v1, v3}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    sget-object v4, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 72
    invoke-static {v1, v4}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    sget-object v5, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;->phoneOrIdKey:Lio/objectbox/g;

    .line 73
    invoke-static {v1, v5}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/UserMediaData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 74
    invoke-static {v1, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 75
    invoke-static {v1, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-class v1, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/IncognitoData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 76
    invoke-static {v1, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const-class v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 77
    invoke-static {v1, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-class v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 78
    invoke-static {v1, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const-class v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    sget-object v6, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 79
    invoke-static {v1, v6}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a:[Landroidx/core/e/b;

    new-array v0, v5, [Landroidx/core/e/b;

    .line 82
    const-class v1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;

    sget-object v5, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 83
    invoke-static {v1, v5}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    aput-object v1, v0, v2

    const-class v1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    sget-object v5, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 84
    invoke-static {v1, v5}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/callapp/contacts/sync/model/SyncerData;

    sget-object v3, Lcom/callapp/contacts/sync/model/SyncerData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 85
    invoke-static {v1, v3}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b:[Landroidx/core/e/b;

    .line 357
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/model/objectbox/ContactLookupData;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)I
    .locals 1

    .line 327
    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static a()V
    .locals 5

    .line 220
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->nameT9FormatNoZero:Lio/objectbox/g;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 224
    iget-object v4, v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static a(J)V
    .locals 6

    .line 152
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeContactIdOnAllTables - contactId: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b:[Landroidx/core/e/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 154
    iget-object v5, v4, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    iget-object v4, v4, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v4, Lio/objectbox/g;

    invoke-static {p0, p1, v5, v4}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JLjava/lang/Class;Lio/objectbox/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a:[Landroidx/core/e/b;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 158
    iget-object v4, v3, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    iget-object v3, v3, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v3, Lio/objectbox/g;

    invoke-static {p0, p1, v4, v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JLjava/lang/Class;Lio/objectbox/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static a(JJLjava/lang/Class;Lio/objectbox/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;",
            ">(JJ",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/objectbox/g;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    invoke-virtual {v0, p4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p4

    .line 189
    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object p1, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual {p4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p3

    invoke-virtual {p3, p5, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    new-instance p3, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;

    invoke-direct {p3, p1, p2}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    .line 202
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p4, p2}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public static a(JJLjava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    .line 174
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateContactIdOnAllTables - oldContactId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v9, p0

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", newContactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    sget-object v11, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b:[Landroidx/core/e/b;

    array-length v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_0

    aget-object v0, v11, v14

    .line 176
    iget-object v1, v0, Landroidx/core/e/b;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    iget-object v0, v0, Landroidx/core/e/b;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lio/objectbox/g;

    move-wide v0, p0

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JJLjava/lang/Class;Lio/objectbox/g;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 179
    :cond_0
    sget-object v11, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a:[Landroidx/core/e/b;

    array-length v12, v11

    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v0, v11, v13

    .line 180
    iget-object v1, v0, Landroidx/core/e/b;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    iget-object v0, v0, Landroidx/core/e/b;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lio/objectbox/g;

    move-wide v0, p0

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JJLjava/lang/Class;Lio/objectbox/g;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 183
    :cond_1
    invoke-static {v8, v6, v7}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Ljava/util/List;J)V

    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)V
    .locals 9

    .line 89
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertContactIdToPhone - oldContactId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a:[Landroidx/core/e/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v5, v0, v2

    .line 91
    iget-object v6, v5, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Class;

    iget-object v5, v5, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v5, Lio/objectbox/g;

    .line 1098
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v6

    .line 1099
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v7

    .line 1100
    invoke-static {p2, v3, v4}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v3

    .line 1101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-virtual {v6}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v5

    new-instance v7, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$1;

    invoke-direct {v7, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v7}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    .line 1112
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    invoke-virtual {v6, v4}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Ljava/util/List;J)V

    return-void
.end method

.method private static a(JLjava/lang/Class;Lio/objectbox/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;",
            ">(J",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/objectbox/g;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p2

    .line 168
    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {p2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V
    .locals 3

    .line 209
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addContactsToContactLookup - "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 213
    :try_start_0
    invoke-virtual {v1, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J
    :try_end_0
    .catch Lio/objectbox/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 215
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lio/objectbox/a;)V
    .locals 7

    .line 4395
    invoke-virtual {p0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    :cond_0
    int-to-long v5, v3

    .line 4399
    invoke-virtual {v0, v5, v6}, Lio/objectbox/query/Query;->a(J)Ljava/util/List;

    move-result-object v5

    .line 4400
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4402
    sget-object p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 4406
    :cond_1
    invoke-virtual {p0, v5}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    add-int/2addr v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const v4, 0xc350

    mul-int/lit8 v3, v3, 0x2

    .line 4413
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .line 230
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeLookupKeyFromContactLookup - "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->lookupKey:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method private static a(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 420
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateContactIdAndNotifyExistingContactData device id changed, new contactId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", for numbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 422
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 424
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 425
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 426
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    .line 428
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateDeviceIdMonitored()V

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing device id changed for number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic a(Ljava/util/List;Ljava/util/Set;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V
    .locals 6

    .line 365
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;JZZZ)Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 373
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(J)Lcom/callapp/contacts/model/objectbox/ContactLookupData;
    .locals 2

    .line 250
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->contactId:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/ContactLookupData;
    .locals 2

    .line 256
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->lookupKey:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    return-object p0
.end method

.method public static b()V
    .locals 6

    .line 360
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;

    invoke-direct {v4, v2, v1}, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;-><init>(Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v3, v4}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    .line 377
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v0, v2}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    .line 4280
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/a;->b()J

    move-result-wide v1

    const-wide/32 v3, 0xc350

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 382
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    new-instance v1, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$4;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$4;-><init>(Lio/objectbox/a;)V

    .line 388
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    return-void
.end method

.method public static b(JLcom/callapp/framework/phone/Phone;)V
    .locals 9

    .line 118
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertPhoneToContactId - newContactId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a:[Landroidx/core/e/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 120
    iget-object v4, v3, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    iget-object v3, v3, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v3, Lio/objectbox/g;

    .line 1132
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 1133
    invoke-static {p2, v5, v6}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v5

    .line 1134
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v6

    .line 1135
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    invoke-virtual {v4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    new-instance v5, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$2;

    invoke-direct {v5, v6, v7}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    .line 1146
    invoke-static {v7}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    invoke-virtual {v4, v7}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 124
    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V

    .line 125
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 126
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Ljava/util/List;J)V

    return-void
.end method

.method public static b(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V
    .locals 3

    .line 237
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateContactIdInContactLookup: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method static c(J)Lcom/callapp/contacts/model/objectbox/ContactLookupData;
    .locals 2

    .line 352
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->contactId:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    return-object v1

    .line 262
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v2, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v0, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->fullName:Lio/objectbox/g;

    invoke-virtual {v0, v2}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->fullName:Lio/objectbox/g;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 265
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 267
    invoke-static {v3, p0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_2
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->phoneNumbers:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->displayName:Lio/objectbox/g;

    const/4 v1, 0x0

    .line 1272
    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    const-string v1, "\\s+"

    .line 301
    invoke-static {p0, v1}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 303
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 305
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, ""

    if-ge v4, v2, :cond_0

    aget-object v6, p0, v4

    .line 306
    sget-object v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentName:Lio/objectbox/g;

    invoke-virtual {v1, v7}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentName:Lio/objectbox/g;

    invoke-virtual {v7, v8, v5}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentName:Lio/objectbox/g;

    invoke-virtual {v5, v7, v6}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 308
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->displayName:Lio/objectbox/g;

    .line 2272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 309
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_1

    .line 311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 312
    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_1
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 317
    array-length v4, p0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, p0, v6

    .line 318
    sget-object v8, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentDescription:Lio/objectbox/g;

    invoke-virtual {v0, v8}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentDescription:Lio/objectbox/g;

    invoke-virtual {v8, v9, v5}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentDescription:Lio/objectbox/g;

    invoke-virtual {v8, v9, v7}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 320
    :cond_2
    sget-object p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->displayName:Lio/objectbox/g;

    .line 3272
    invoke-virtual {v0, p0, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    .line 322
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 323
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 324
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 327
    :cond_4
    sget-object p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY;->INSTANCE:Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    if-nez v1, :cond_6

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1

    .line 334
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->phoneNumbers:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->nameT9Format:Lio/objectbox/g;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 343
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->nameT9FormatNoZero:Lio/objectbox/g;

    invoke-virtual {v1, v2, p0}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 344
    sget-object p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->displayName:Lio/objectbox/g;

    const/4 v1, 0x0

    .line 4272
    invoke-virtual {v0, p0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic lambda$eHModVWqPJrEIGJ7ClE0fwyiuKY(Lcom/callapp/contacts/model/objectbox/ContactLookupData;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Lcom/callapp/contacts/model/objectbox/ContactLookupData;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pnAaRZ3mSGxmntH7d8znMaJDLqc(Ljava/util/List;Ljava/util/Set;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Ljava/util/List;Ljava/util/Set;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    return-void
.end method
