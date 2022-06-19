.class public Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;
.super Lcom/callapp/contacts/observers/CallAppContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

.field private static c:Landroid/os/HandlerThread;


# instance fields
.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/callapp/contacts/observers/CallAppContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    new-instance p1, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$1;-><init>(Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;)V

    iput-object p1, p0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;
    .locals 2

    const-string v0, "_id"

    .line 269
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(J)Ljava/util/List;
    .locals 2

    .line 1256
    sget-object v0, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 1257
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "contact_deleted_timestamp"

    const-string v1, ">="

    invoke-virtual {v0, p1, v1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "contact_id"

    const/4 v0, 0x1

    .line 1258
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;->INSTANCE:Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;

    .line 1259
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 5

    .line 52
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallApp.ContactsObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    sput-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    sget-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 56
    new-instance v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    .line 58
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fx:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 62
    sget-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UpdateContactItem;",
            ">;)Z"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/UpdateContactItem;

    .line 143
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    move-result-object v3

    const-string v4, ", "

    const-string v5, "V21ContentObserver"

    if-eqz v3, :cond_4

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Contact was found using lookupkey: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 154
    sget-object v6, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a:Ljava/util/Map;

    iget-object v7, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    if-eqz v7, :cond_1

    .line 156
    iget-object v8, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v8

    iget-object v6, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v9, v10, v11, v6}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JJLjava/util/List;)V

    :cond_1
    const/4 v6, 0x0

    .line 162
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v7

    iget-object v9, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contactId has changed but lookupKey remains the same: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 167
    iget-object v7, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v7

    iget-object v9, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JJLjava/util/List;)V

    :cond_2
    if-nez v6, :cond_3

    .line 173
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2}, Lcom/callapp/contacts/model/UpdateContactItem;->getNormalNumbers()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/callapp/contacts/model/UpdateContactItem;->displayName:Ljava/lang/String;

    iget-object v7, v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    .line 174
    invoke-static {v6, v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    iget-object v7, v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    .line 175
    invoke-static {v6, v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating contactId or Phones: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 178
    iget-object v4, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setContactId(J)V

    .line 179
    invoke-virtual {v2}, Lcom/callapp/contacts/model/UpdateContactItem;->getNormalNumbers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setPhoneNumbers(Ljava/util/List;)V

    .line 180
    iget-object v4, v2, Lcom/callapp/contacts/model/UpdateContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDisplayName(Ljava/lang/String;)V

    .line 181
    iget-object v2, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDescription(Ljava/lang/String;)V

    .line 182
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    goto/16 :goto_0

    .line 189
    :cond_4
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(J)Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating lookupKey: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 194
    iget-object v4, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setLookupKey(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Lcom/callapp/contacts/model/UpdateContactItem;->getNormalNumbers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setPhoneNumbers(Ljava/util/List;)V

    .line 196
    iget-object v4, v2, Lcom/callapp/contacts/model/UpdateContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDisplayName(Ljava/lang/String;)V

    .line 197
    iget-object v2, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDescription(Ljava/lang/String;)V

    .line 198
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    goto/16 :goto_0

    .line 201
    :cond_5
    sget-object v6, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a:Ljava/util/Map;

    iget-object v7, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    if-eqz v7, :cond_6

    .line 205
    iget-object v8, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Updating lookupKey and contactId: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", old: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v3

    iget-object v5, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v4, v5, v6, v8}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JJLjava/util/List;)V

    .line 213
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setContactId(J)V

    .line 216
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setLookupKey(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Lcom/callapp/contacts/model/UpdateContactItem;->getNormalNumbers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setPhoneNumbers(Ljava/util/List;)V

    .line 218
    iget-object v3, v2, Lcom/callapp/contacts/model/UpdateContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDisplayName(Ljava/lang/String;)V

    .line 219
    iget-object v2, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setDescription(Ljava/lang/String;)V

    .line 220
    invoke-static {v7}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    goto/16 :goto_0

    .line 223
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "New contact: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 224
    new-instance v6, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    iget-object v9, v2, Lcom/callapp/contacts/model/UpdateContactItem;->lookupKey:Ljava/lang/String;

    iget-object v7, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, v2, Lcom/callapp/contacts/model/UpdateContactItem;->displayName:Ljava/lang/String;

    iget-object v13, v2, Lcom/callapp/contacts/model/UpdateContactItem;->normalNumbers:Ljava/util/List;

    iget-object v14, v2, Lcom/callapp/contacts/model/UpdateContactItem;->description:Ljava/lang/String;

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    .line 227
    iget-object v6, v2, Lcom/callapp/contacts/model/UpdateContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 228
    iget-object v8, v2, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(JLcom/callapp/framework/phone/Phone;)V

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "convertPhoneToContactId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_7
    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/Set;Ljava/util/Map;)Z

    .line 238
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static synthetic b(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;
    .locals 2

    const-string v0, "contact_id"

    .line 259
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UpdateContactItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const-string v3, "_id"

    .line 267
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    .line 268
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "contact_last_updated_timestamp"

    const-string v3, ">="

    invoke-virtual {v2, p1, v3, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0;->INSTANCE:Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0;

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/util/Collection;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/Collection;

    .line 270
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 271
    invoke-static {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "lookup"

    .line 272
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "data1"

    .line 273
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v2, "display_name"

    .line 274
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v2, "contact_id"

    .line 275
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    .line 276
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v3, "data4"

    .line 277
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v3, "mimetype"

    .line 278
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance v3, Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/framework/dao/column/LongColumn;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v3, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v3, "vnd.android.cursor.item/phone_v2"

    const-string v4, "vnd.android.cursor.item/organization"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mimetype= ? OR mimetype= ?"

    .line 1142
    invoke-virtual {p0, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "!="

    const/4 v4, 0x0

    .line 281
    invoke-virtual {p0, p1, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v5, ""

    .line 282
    invoke-virtual {p0, p1, v3, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "account_type"

    const-string v5, "CallApp"

    .line 283
    invoke-virtual {p0, p1, v3, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const/4 p1, 0x1

    .line 284
    invoke-virtual {p0, v2, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "is_primary"

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "is_super_primary"

    .line 286
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    if-eqz p0, :cond_1

    .line 296
    :try_start_0
    new-instance p1, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;-><init>(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    :try_start_1
    invoke-virtual {p1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->moveToFirst()Z

    .line 298
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->getPosition()I

    move-result p0

    .line 300
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->getDataAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p0

    move-object v4, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v4}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 305
    throw p0

    .line 291
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static c()V
    .locals 3

    .line 68
    sget-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    sput-object v1, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    .line 72
    :cond_0
    sget-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 74
    sput-object v1, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .line 45
    sget-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static getContactUtilsContactsContentObserver()Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;
    .locals 1

    .line 79
    sget-object v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b:Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    return-object v0
.end method

.method public static synthetic lambda$eTFgFrU0z21q5bCmOWz1NfYCfP0(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$m-8L-ssfj3RqLMIii4TsRCOLmhs(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->b(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final b()Ljava/lang/Runnable;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
