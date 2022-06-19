.class public Lcom/callapp/contacts/loader/device/DeviceIdLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;,
        Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;
    }
.end annotation


# static fields
.field private static a:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a:Landroidx/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 190
    :cond_0
    sget-object v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a:Landroidx/b/e;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    if-eqz v2, :cond_1

    .line 191
    iget-object v3, v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 192
    iget-object p0, v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const/4 v2, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-wide v3, v0

    :goto_0
    cmp-long v5, v3, v0

    if-nez v5, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;I)J

    move-result-wide v3

    :cond_2
    cmp-long p1, v3, v0

    if-nez p1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 209
    :cond_3
    throw v2

    .line 211
    :cond_4
    :goto_1
    new-instance p1, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;-><init>()V

    .line 212
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    .line 213
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    sget-object v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a:Landroidx/b/e;

    invoke-virtual {v0, p0, p1}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-wide v3

    :cond_6
    :goto_2
    return-wide v0
.end method

.method private static a(Ljava/lang/String;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    .line 2180
    iput p1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->b:I

    .line 223
    new-instance p1, Lcom/callapp/contacts/loader/device/DeviceIdLoader$2;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$2;-><init>()V

    const-wide/16 v0, 0x0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 231
    new-instance p1, Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;JZZZ)Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 138
    new-instance p0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    .line 139
    sget-object v0, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {p0, v0, v3, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    .line 142
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-object p0, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 146
    sget-object v0, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_1
    if-eqz p4, :cond_2

    .line 150
    sget-object v0, Lcom/callapp/contacts/model/Constants;->DISPLAY_NAME_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    if-eqz v2, :cond_2

    const-string v0, "display_name_source"

    .line 153
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_2
    if-eqz p5, :cond_3

    .line 158
    sget-object v0, Lcom/callapp/contacts/model/Constants;->STARRED_COLUMN:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 161
    :cond_3
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;

    move-object v1, v0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;-><init>(ZZJZ)V

    const/4 p1, 0x0

    .line 1185
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 161
    check-cast p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 37
    sget-object v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 13

    .line 48
    const-class v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v2, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    .line 50
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 51
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 53
    sget-object v3, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a:Landroidx/b/e;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v10, :cond_0

    iget-object v5, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v10, :cond_2

    .line 55
    iget-object v6, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    if-nez v6, :cond_3

    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v10, :cond_4

    .line 56
    iget-object v6, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->c:Ljava/lang/Boolean;

    if-nez v6, :cond_5

    :cond_4
    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-nez v5, :cond_6

    if-nez v11, :cond_6

    if-eqz v12, :cond_7

    .line 60
    :cond_6
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    move v6, v1

    move v7, v2

    move v8, v9

    invoke-static/range {v3 .. v8}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;JZZZ)Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 62
    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v10, :cond_7

    .line 65
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 67
    :try_start_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    move v6, v1

    move v7, v2

    move v8, v9

    invoke-static/range {v3 .. v8}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;JZZZ)Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 69
    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    const/4 v0, 0x0

    if-nez v10, :cond_a

    .line 76
    new-instance v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    invoke-direct {v10}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    if-eqz v11, :cond_8

    const-string v3, ""

    goto :goto_5

    :cond_8
    move-object v3, v0

    .line 78
    :goto_5
    iput-object v3, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 79
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_9
    move-object v3, v0

    :goto_6
    iput-object v3, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->c:Ljava/lang/Boolean;

    .line 82
    :cond_a
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 84
    sget-object v4, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a:Landroidx/b/e;

    invoke-virtual {v4, v3, v10}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_b
    iget-object v3, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_f

    if-eqz v1, :cond_c

    .line 88
    iget-object v0, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 89
    iget-object v0, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    .line 90
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateDeviceId()V

    .line 93
    :cond_c
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    if-eqz v1, :cond_d

    .line 95
    iget-object v0, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 96
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    iget-object v1, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/callapp/contacts/model/contact/DeviceData;->setDeviceId(J)V

    :cond_d
    if-eqz v2, :cond_e

    .line 99
    iget-object v0, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 100
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    iget-object v1, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setFullName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    :cond_e
    if-eqz v9, :cond_13

    .line 104
    iget-object v0, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 105
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    iget-object v1, v10, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setFavorite(Ljava/lang/Boolean;)V

    .line 106
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void

    .line 110
    :cond_f
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    .line 111
    invoke-virtual {p1, v5, v6}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    .line 112
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateDeviceId()V

    .line 115
    :cond_10
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v3

    if-eqz v3, :cond_13

    if-eqz v1, :cond_11

    .line 117
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/DeviceData;->getDeviceId()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_11

    .line 118
    invoke-virtual {v3, v5, v6}, Lcom/callapp/contacts/model/contact/DeviceData;->setDeviceId(J)V

    :cond_11
    if-eqz v2, :cond_12

    .line 121
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/DeviceData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 122
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setFullName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    :cond_12
    if-eqz v9, :cond_13

    .line 126
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setFavorite(Ljava/lang/Boolean;)V

    .line 128
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_13
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method
