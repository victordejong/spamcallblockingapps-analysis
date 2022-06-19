.class public Lcom/callapp/contacts/manager/contacts/ContactUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/accounts/Account;

.field private static final b:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;

.field private static f:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b:Landroidx/b/e;

    .line 121
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    const-string v1, "starred"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/BooleanColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->e:Ljava/lang/Object;

    .line 125
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "CallApp"

    const-string v2, "com.callapp.contacts.account"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a:Landroid/accounts/Account;

    .line 1351
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->f:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)J
    .locals 2

    .line 315
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 316
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "="

    invoke-virtual {v0, v1, p1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/manager/contacts/ContactUtils$2;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$2;-><init>()V

    const-wide/16 v0, 0x0

    .line 321
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 1171
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 1178
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_2
    const-string v5, "vnd.android.cursor.item/contact"

    .line 1181
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getEmailsMap()Ljava/util/Map;

    move-result-object v5

    .line 1186
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    if-gt v6, v9, :cond_8

    .line 1190
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/common/model/json/JSONEmail;

    .line 1191
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getType()I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getType()I

    move-result v8

    .line 1192
    :goto_2
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/contact/DataSource;

    .line 1193
    sget-object v11, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v7, v11, :cond_3

    if-eqz v6, :cond_7

    if-eq v6, v2, :cond_6

    if-eq v6, v9, :cond_5

    goto :goto_3

    .line 1205
    :cond_5
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v7

    const-string v9, "tertiary_email"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "tertiary_email_type"

    .line 1206
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 1201
    :cond_6
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v7

    const-string v9, "secondary_email"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "secondary_email_type"

    .line 1202
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 1196
    :cond_7
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v7, "email"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "email_type"

    .line 1197
    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_b

    if-eqz v4, :cond_a

    .line 1215
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 1217
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    new-array v0, v2, [Ljava/lang/Object;

    .line 1218
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "tel:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_4

    :cond_9
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "mailto:%s"

    .line 1220
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1222
    :goto_4
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "com.android.contacts.action.FORCE_CREATE"

    .line 1224
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 1225
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    :cond_a
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    .line 1229
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    :cond_b
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    .line 1234
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    if-gt v1, v9, :cond_10

    .line 1238
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v1, :cond_f

    if-eq v1, v2, :cond_e

    if-eq v1, v9, :cond_d

    goto :goto_6

    .line 1252
    :cond_d
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tertiary_phone"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object v0

    iget v0, v0, Lcom/callapp/framework/phone/PhoneType;->code:I

    const-string v4, "tertiary_phone_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 1248
    :cond_e
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "secondary_phone"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object v0

    iget v0, v0, Lcom/callapp/framework/phone/PhoneType;->code:I

    const-string v4, "secondary_phone_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 1244
    :cond_f
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object v0

    iget v0, v0, Lcom/callapp/framework/phone/PhoneType;->code:I

    const-string v4, "phone_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1259
    :cond_10
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1261
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONAddress;->getType()I

    move-result v0

    const-string v1, "postal_type"

    if-eq v0, v2, :cond_13

    if-eq v0, v9, :cond_12

    if-eq v0, v8, :cond_11

    goto :goto_7

    .line 1269
    :cond_11
    invoke-virtual {v3, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 1266
    :cond_12
    invoke-virtual {v3, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 1263
    :cond_13
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    :goto_7
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "postal"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    :cond_14
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getOrganizations()Ljava/util/Collection;

    move-result-object p1

    .line 1278
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1280
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONOrgData;

    .line 1281
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONOrgData;->getCompany()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1282
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONOrgData;->getCompany()Ljava/lang/String;

    move-result-object v0

    const-string v1, "company"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    :cond_15
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONOrgData;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1285
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONOrgData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "job_title"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1290
    :cond_16
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getImAddresses()Ljava/util/Collection;

    move-result-object p0

    .line 1291
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1292
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 1293
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONIMaddress;->getProtocol()I

    move-result p1

    const-string v0, "im_protocol"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1294
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONIMaddress;->getIMAddress()Ljava/lang/String;

    move-result-object p0

    const-string p1, "im_handle"

    invoke-virtual {v3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    return-object v3
.end method

.method private static a(ZLjava/util/Collection;Z)Landroid/database/Cursor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 533
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "contact_id"

    .line 534
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "data1"

    .line 535
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v3, "display_name"

    .line 536
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v3, "lookup"

    .line 537
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 538
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v3, "mimetype"

    .line 539
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v3, "starred"

    .line 540
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "times_contacted"

    .line 543
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_0
    const-string p0, "vnd.android.cursor.item/phone_v2"

    const-string v3, "vnd.android.cursor.item/note"

    .line 546
    filled-new-array {p0, v3}, [Ljava/lang/String;

    move-result-object p0

    const-string v3, "mimetype= ? OR mimetype= ? "

    .line 4142
    invoke-virtual {v0, v3, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v3, "!="

    .line 547
    invoke-virtual {v0, v2, v3, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v4, ""

    .line 548
    invoke-virtual {p0, v2, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object v2, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "account_type"

    .line 549
    invoke-virtual {p0, v4, v3, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 550
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 551
    new-instance p0, Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-direct {p0, v1}, Lcom/callapp/contacts/framework/dao/column/LongColumn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_1
    if-eqz p2, :cond_2

    .line 554
    sget-object p0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "="

    invoke-virtual {v0, p0, p2, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_2
    const/4 p0, 0x1

    .line 557
    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "is_super_primary"

    const/4 p2, 0x0

    .line 558
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string p1, "is_primary"

    .line 559
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 561
    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 2

    .line 380
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    .line 381
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    .line 383
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    .line 384
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    .line 385
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 876
    :cond_0
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 878
    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    .line 879
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 880
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 882
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/framework/phone/Phone;
    .locals 3

    const-string v0, "data1"

    .line 1126
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const-string v1, "data2"

    .line 1128
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data3"

    .line 1129
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/framework/phone/PhoneType;->fromCode(I)Lcom/callapp/framework/phone/PhoneType;

    move-result-object v1

    .line 10207
    iput-object v1, v0, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    .line 1133
    :cond_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1134
    invoke-virtual {v0, p0}, Lcom/callapp/framework/phone/Phone;->setCustomType(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 9

    .line 734
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;

    const/4 v1, 0x0

    .line 737
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 739
    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "_id"

    const-string p2, "lookup"

    .line 741
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    .line 746
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 749
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 755
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 p2, 0x1

    .line 756
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found new data for LookupKey: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ==> newLookupKey: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", id: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 765
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_2
    const-string p2, "Contact no longer exists for lookupKey: "

    .line 751
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 765
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v1

    .line 762
    :goto_1
    :try_start_3
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_4

    .line 765
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_5
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1086
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1087
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 491
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 494
    :cond_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 497
    :cond_1
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static a(Ljava/util/List;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1504
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    .line 1506
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 1507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (+)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static varargs a(Lcom/callapp/contacts/model/contact/ContactData;I[Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 347
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getImAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 348
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 349
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONIMaddress;->getProtocol()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONIMaddress;->getIMAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 355
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object p0

    .line 356
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONEmail;

    .line 357
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 359
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 360
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    new-instance v4, Lcom/callapp/common/model/json/JSONIMaddress;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5, p1}, Lcom/callapp/common/model/json/JSONIMaddress;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static a(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    .line 773
    invoke-static {p0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 509
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 510
    invoke-static {v1, p0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(ZLjava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 513
    :try_start_0
    new-instance v3, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-direct {v3, v1, p0}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;-><init>(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 515
    :try_start_1
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToFirst()Z

    .line 516
    :goto_0
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_1

    .line 517
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getPosition()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getDataAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :cond_1
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 526
    throw p0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static a()V
    .locals 2

    .line 306
    const-class v0, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;

    const-string v1, "resetContactList called"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b()V

    .line 310
    invoke-static {}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a()V

    .line 311
    invoke-static {}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;->a()V

    return-void
.end method

.method private static synthetic a(JLcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1143
    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 1144
    invoke-static {p0, p1, p3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(JLcom/callapp/framework/phone/Phone;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1148
    invoke-interface {p2, p3, p4}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;->onDone(Lcom/callapp/framework/phone/Phone;Z)V

    :cond_1
    return-void
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)V
    .locals 9

    .line 463
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/framework/dao/column/LongColumn;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/column/LongColumn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "data1"

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact_id"

    const-string v3, "="

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/contacts/ContactUtils$6;

    invoke-direct {v1, p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils$6;-><init>(Lcom/callapp/framework/phone/Phone;)V

    .line 2318
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 480
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 482
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object v0

    new-instance v6, Lcom/callapp/contacts/framework/dao/column/IntColumn;

    const-string v7, "is_super_primary"

    invoke-direct {v6, v7}, Lcom/callapp/contacts/framework/dao/column/IntColumn;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3119
    iget-object v8, v0, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a:Landroid/content/ContentValues;

    iget-object v6, v6, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "contact_id = ? AND mimetype = ? AND _id = ?"

    .line 4054
    invoke-virtual {v0, v6, v2}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    const-class v2, Lcom/callapp/contacts/manager/contacts/ContactUtils;

    new-array v1, v1, [Ljava/lang/Object;

    .line 486
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Setting phone %s as super primary for contact id %d. Updated: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 485
    invoke-static {v2, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(JZ)V
    .locals 1

    .line 371
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/Boolean;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b()Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    if-eqz p3, :cond_0

    .line 1517
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1518
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "contactId"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 1519
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "phone"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1521
    new-instance p3, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;

    invoke-direct {p3, p2, p0, p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;-><init>(Ljava/lang/String;J)V

    .line 1533
    invoke-virtual {p3}, Lcom/callapp/contacts/manager/contacts/ContactUtils$16;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1515
    const-class v0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;

    sget-object v1, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$KeBqLxVdjG2CyfVKdM7505JRr7w;->INSTANCE:Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$KeBqLxVdjG2CyfVKdM7505JRr7w;

    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->nameT9:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->unaccentName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->c(J)Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    move-result-object v1

    const-string v2, "V21ContentObserver"

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lookup search results - original: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", from device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 228
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "removeContactIdOnAllTables: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(J)V

    .line 242
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 11

    const-string v0, "_id"

    .line 391
    const-class v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "contact_id = ?"

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 396
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    const/4 v9, 0x0

    .line 393
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 399
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 403
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "raw_contact_id"

    .line 405
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    .line 406
    invoke-virtual {p1, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "data1"

    .line 407
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 404
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.android.contacts"

    .line 410
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    const-string p1, "Finish update contact name: "

    .line 411
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return v10

    :cond_0
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 416
    :try_start_1
    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 420
    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/framework/phone/Phone;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 1102
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    cmp-long v4, p2, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 8447
    :cond_0
    new-instance v2, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 8448
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v2, v3, v5, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const-string v3, "is_super_primary"

    const-string v4, "1"

    invoke-virtual {v2, v3, v5, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/manager/contacts/ContactUtils$5;

    invoke-direct {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils$5;-><init>()V

    .line 9185
    invoke-virtual {v2, v3, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8449
    check-cast p1, Lcom/callapp/framework/phone/Phone;

    :goto_0
    if-nez p1, :cond_1

    .line 1107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10142
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p4

    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    new-instance v4, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;

    invoke-direct {v4, p2, p3, p5}, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$ohU5WylqI_-FV9rzoJOwUwFpmdk;-><init>(JLcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V

    invoke-direct {v3, p2, p3, v2, v4}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;-><init>(JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V

    invoke-virtual {p4, p0, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 1114
    invoke-interface {p5, p1, v1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;->onDone(Lcom/callapp/framework/phone/Phone;Z)V

    :cond_2
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1155
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1156
    invoke-interface {p3, p1, v0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;->onDone(Lcom/callapp/framework/phone/Phone;Z)V

    goto :goto_0

    .line 1159
    :cond_0
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;

    const v2, 0x7f12029e

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V

    .line 1160
    sget-object p1, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 1161
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;J)Z
    .locals 1

    .line 376
    new-instance v0, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    .line 2037
    invoke-static {p0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/IncognitoData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
            ">;)Z"
        }
    .end annotation

    .line 254
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 260
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deleteContacts: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "V21ContentObserver"

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteContacts: convertContactIdToPhone: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JLcom/callapp/framework/phone/Phone;)V

    goto :goto_1

    .line 270
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleteContacts: removeLookupKeyFromContactLookup: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(Ljava/lang/String;)V

    .line 273
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleteContacts: removeContactIdOnAllTables: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(J)V

    .line 275
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_2
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c(Ljava/util/List;)Z

    .line 279
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 722
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 723
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 725
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 155
    :cond_0
    invoke-static {v1, p0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(ZLjava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    .line 158
    :try_start_0
    new-instance v3, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-direct {v3, v0, p0}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;-><init>(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToFirst()Z

    const/4 p0, 0x0

    .line 160
    :goto_0
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->isAfterLast()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 161
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getPosition()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getDataAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v0, :cond_7

    .line 164
    iget-wide v4, v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 166
    sget-object v5, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    if-eqz v5, :cond_7

    if-eqz v4, :cond_2

    .line 168
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 169
    iget-wide v7, v6, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    .line 170
    sget-object p0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 177
    :cond_2
    iget-boolean v4, v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    if-eqz v4, :cond_5

    .line 179
    sget-object v4, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 180
    iget-wide v5, v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    iget-wide v7, v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_7

    .line 187
    sget-object p0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    new-instance v4, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    :cond_5
    sget-object v4, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 191
    iget-wide v6, v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    iget-wide v8, v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_6

    .line 193
    sget-object p0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    const/4 p0, 0x1

    .line 201
    :cond_7
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 204
    :cond_8
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 207
    sget-object p1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    .line 208
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_9
    return v2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 204
    :goto_3
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 205
    throw p0

    :cond_a
    :goto_4
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/ContentProviderResult;
    .locals 11

    .line 1394
    invoke-static {}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getGmailAccount()Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "com.google"

    goto :goto_0

    :cond_0
    move-object v0, v2

    move-object v1, v0

    .line 1399
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1402
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_type"

    .line 1403
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v4, "account_name"

    .line 1404
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1401
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "data1"

    const-string v4, "mimetype"

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    if-eqz v0, :cond_1

    .line 1409
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1410
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1411
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v7, "vnd.android.cursor.item/name"

    .line 1412
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1409
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    :cond_1
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x2

    const-string v7, "vnd.android.cursor.item/phone_v2"

    const-string v8, "data2"

    if-eqz p0, :cond_2

    .line 1418
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1419
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1420
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1421
    invoke-virtual {p0, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1422
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1424
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1418
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    :cond_2
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v9, 0x1

    if-eqz p0, :cond_3

    .line 1429
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1430
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1431
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1432
    invoke-virtual {p0, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1433
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1434
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1435
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1429
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    :cond_3
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v10, 0x3

    if-eqz p0, :cond_4

    .line 1440
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1441
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1442
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1443
    invoke-virtual {p0, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1444
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1445
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1446
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1440
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_4
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v7, "vnd.android.cursor.item/email_v2"

    if-eqz p0, :cond_5

    .line 1451
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1452
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1453
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1454
    invoke-virtual {p0, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1455
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1457
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1451
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_5
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1461
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1462
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1463
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1464
    invoke-virtual {p0, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1465
    invoke-virtual {p0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1466
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1467
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1461
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_6
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1471
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1472
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1473
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string p1, "vnd.android.cursor.item/organization"

    .line 1474
    invoke-virtual {p0, v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1475
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1476
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string p1, "data4"

    .line 1477
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1478
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1479
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1471
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_7
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1484
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1485
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1486
    invoke-virtual {p0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string p1, "vnd.android.cursor.item/contact_event"

    .line 1487
    invoke-virtual {p0, v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1488
    invoke-virtual {p0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1489
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 1490
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 1484
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_8
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.android.contacts"

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1496
    const-class p1, Lcom/callapp/contacts/manager/contacts/ContactUtils;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static b(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 4

    .line 1093
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addBirthdayStack()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 1096
    invoke-virtual {v0, p0, p1, p2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    return-object p0
.end method

.method public static b(Z)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 6

    .line 893
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableSpecificCaches()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 897
    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 898
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->foursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->instagramData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 901
    :cond_0
    new-instance v1, Lcom/callapp/contacts/loader/device/UserProfileLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 902
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "0"

    goto :goto_0

    .line 907
    :cond_1
    new-instance v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 908
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->deviceData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    :goto_0
    if-eqz p0, :cond_2

    .line 911
    new-instance p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    .line 912
    new-instance v2, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    .line 913
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    .line 914
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    .line 916
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 918
    :cond_2
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Lcom/callapp/framework/phone/Phone;
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return-object v0

    .line 429
    :cond_0
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 430
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "="

    invoke-virtual {v1, v2, p1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const/4 p1, 0x0

    const-string v1, "is_primary"

    .line 431
    invoke-virtual {p0, v1, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/manager/contacts/ContactUtils$4;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$4;-><init>()V

    .line 2185
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 431
    check-cast p0, Lcom/callapp/framework/phone/Phone;

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 859
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v1, "display_name"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    .line 860
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v3, "_id"

    invoke-direct {v2, v3}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v1, v2, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const-string v1, "display_name_source"

    const-string v2, "!="

    const-string v3, "20"

    .line 862
    invoke-virtual {p0, v1, v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance v1, Lcom/callapp/contacts/manager/contacts/ContactUtils$7;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils$7;-><init>(Lcom/callapp/contacts/framework/dao/column/StringColumn;)V

    .line 863
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 819
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 820
    :try_start_0
    sput-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    .line 821
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(J)Ljava/lang/String;
    .locals 4

    .line 937
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "="

    const-string v3, "com.skype.contacts.sync"

    .line 938
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/manager/contacts/ContactUtils$9;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$9;-><init>()V

    const/4 v0, 0x0

    .line 6185
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 939
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static c(Z)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">;"
        }
    .end annotation

    move/from16 v1, p0

    .line 565
    const-class v2, Lcom/callapp/contacts/manager/contacts/ContactUtils;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 566
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 570
    :try_start_0
    invoke-static {v1, v5, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(ZLjava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_1c

    .line 571
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_d

    :cond_0
    if-eqz v1, :cond_2

    .line 577
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactListEmailsCursor()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 579
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 588
    :cond_2
    :goto_0
    :try_start_2
    new-instance v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v7}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    const-wide/16 v8, -0x1

    move-wide v10, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 593
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v14, :cond_3

    .line 596
    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 p0, v1

    move-wide v0, v15

    goto :goto_2

    :cond_3
    move/from16 p0, v1

    move-wide v0, v10

    :goto_2
    const/4 v15, 0x1

    if-nez v14, :cond_4

    cmp-long v17, v10, v0

    if-eqz v17, :cond_a

    :cond_4
    cmp-long v17, v10, v8

    if-eqz v17, :cond_6

    if-nez v12, :cond_5

    if-eqz v13, :cond_6

    :cond_5
    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_9

    .line 605
    :try_start_4
    iget-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v12, :cond_7

    .line 607
    iget-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 608
    iget-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iput-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    goto :goto_4

    .line 610
    :cond_7
    iget-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 611
    iget-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iput-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    .line 615
    :cond_8
    :goto_4
    iget-wide v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-nez v14, :cond_1b

    .line 626
    new-instance v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v7}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 632
    :cond_a
    iput-wide v0, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    const/4 v10, 0x5

    .line 633
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vnd.android.cursor.item/note"

    .line 634
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x3

    const/4 v14, 0x2

    if-eqz v10, :cond_b

    const/4 v10, 0x4

    .line 635
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 636
    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 637
    iput-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    goto :goto_7

    .line 640
    :cond_b
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 641
    iget-object v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 642
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 643
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v8, ""

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v8}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    const/4 v8, 0x6

    .line 645
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    iput-boolean v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    .line 646
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    .line 651
    :cond_e
    iget-object v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v8, v10}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    .line 652
    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v8, :cond_f

    .line 654
    iget-object v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    :cond_f
    :goto_7
    if-eqz p0, :cond_10

    const/4 v8, 0x7

    .line 659
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->f:I

    .line 662
    :cond_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    if-eqz p0, :cond_1a

    if-eqz v12, :cond_1a

    .line 665
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_1a

    :cond_11
    const/4 v8, 0x0

    .line 667
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v16, v9, v0

    if-gez v16, :cond_12

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_11

    .line 671
    :cond_12
    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_1a

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v16, v9, v0

    if-nez v16, :cond_19

    .line 672
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 673
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 675
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 677
    iget-object v13, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v13}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 678
    iput-object v10, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    :cond_13
    move/from16 v16, v12

    .line 680
    iget-wide v11, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    const-wide/16 v18, 0x0

    cmp-long v13, v11, v18

    if-nez v13, :cond_14

    .line 681
    iput-wide v0, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    .line 683
    :cond_14
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 684
    new-instance v12, Lcom/callapp/common/model/json/JSONEmail;

    invoke-direct {v12, v9, v11}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;I)V

    .line 685
    invoke-virtual {v12}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 687
    iget-object v9, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    if-nez v9, :cond_15

    .line 688
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    .line 691
    :cond_15
    iget-object v9, v7, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->d:Ljava/util/Set;

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_16
    const/4 v13, 0x1

    goto :goto_9

    :cond_17
    move/from16 v16, v12

    .line 694
    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_a

    :cond_18
    move/from16 v12, v16

    const/4 v11, 0x3

    goto :goto_8

    :cond_19
    move/from16 v16, v12

    goto :goto_a

    :cond_1a
    move/from16 v16, v12

    const/4 v8, 0x0

    :goto_a
    move-wide v10, v0

    move/from16 v12, v16

    const/4 v0, 0x0

    const-wide/16 v8, -0x1

    move/from16 v1, p0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move/from16 v1, p0

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v1, p0

    goto :goto_c

    .line 701
    :cond_1b
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 708
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 709
    invoke-static {v5}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    move/from16 v1, p0

    goto :goto_11

    :catch_2
    move-exception v0

    move/from16 p0, v1

    goto :goto_b

    :catch_3
    move-exception v0

    move/from16 p0, v1

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto :goto_12

    :catch_4
    move-exception v0

    :goto_b
    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto :goto_e

    :catch_5
    move-exception v0

    :goto_c
    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto :goto_f

    :cond_1c
    :goto_d
    :try_start_5
    const-string v0, "Cursor is null or empty"

    .line 572
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 708
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 709
    invoke-static {v5}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v6, v5

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v6, v5

    .line 706
    :goto_e
    :try_start_6
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v6, v5

    .line 704
    :goto_f
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Landroid/database/sqlite/SQLiteException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 708
    :goto_10
    invoke-static {v5}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 709
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    :goto_11
    if-nez v1, :cond_1d

    .line 712
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 713
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v9, v0

    const-string v6, "Contact List"

    const-string v7, "Contact list size"

    invoke-virtual/range {v5 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 716
    :cond_1d
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKeysAsync(Ljava/util/Collection;)V

    return-object v4

    :catchall_2
    move-exception v0

    .line 708
    :goto_12
    invoke-static {v5}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 709
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 710
    throw v0
.end method

.method public static c()V
    .locals 9

    const-string v0, "jasmine@callapp.info"

    const/4 v1, 0x0

    .line 1304
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "raw_contact_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "data1 = ?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1310
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1317
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .line 1315
    :try_start_1
    const-class v3, Lcom/callapp/contacts/manager/contacts/ContactUtils;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    :cond_0
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    const-string v1, "CallApp"

    const-string v2, "1990-05-26"

    .line 1320
    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1321
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1322
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1323
    iget-object v4, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw"

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1324
    iget-object v0, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1326
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "data1"

    .line 1327
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 1328
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/contact_event"

    .line 1329
    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    const/4 v2, 0x3

    .line 1330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/contacts/ContactUtils$15;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1317
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 1318
    throw v0
.end method

.method private static c(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 134
    sget-object v2, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 136
    iget-wide v4, v3, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 137
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static d(J)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 949
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    const-string v3, "="

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/contacts/ContactUtils$10;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$10;-><init>()V

    const/4 v2, 0x0

    .line 7185
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 949
    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 960
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "display_photo"

    .line 962
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 965
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 967
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 2

    .line 975
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_id"

    const-string v1, "="

    invoke-virtual {v0, p1, v1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/manager/contacts/ContactUtils$11;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils$11;-><init>()V

    const/4 v0, 0x0

    .line 8185
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 976
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static f(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 1122
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 1124
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "contact_id"

    const-string v1, "="

    invoke-virtual {v0, p1, v1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;->INSTANCE:Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;

    .line 1125
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllSkypeNames()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 922
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 923
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "display_name"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "account_type"

    const-string v3, "="

    const-string v4, "com.skype.contacts.sync"

    .line 924
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/contacts/ContactUtils$8;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils$8;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    return-object v0
.end method

.method private static getBlockedContactIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1072
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1073
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/BlockManager;->a:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "="

    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/contacts/ContactUtils$14;

    invoke-direct {v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils$14;-><init>()V

    .line 1074
    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/util/Collection;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/Collection;

    return-object v0
.end method

.method public static getBlockedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/ReminderData;",
            ">;"
        }
    .end annotation

    .line 1065
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getBlockedContactsInternal()Ljava/util/List;

    move-result-object v0

    .line 1066
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKeysAsync(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getBlockedContactsInternal()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/ReminderData;",
            ">;"
        }
    .end annotation

    .line 1003
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getBlockedContactIds()Ljava/util/Set;

    move-result-object v0

    .line 1005
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "display_name"

    const-string v3, "contact_id"

    const-string v4, "data1"

    const-string v5, "is_primary"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const/4 v2, 0x0

    .line 1008
    invoke-virtual {v1, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v4, Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/framework/dao/column/LongColumn;-><init>(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v1, v4, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/database/Cursor;

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 1016
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1017
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 1018
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    .line 1025
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1026
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1027
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1029
    new-instance v7, Lcom/callapp/contacts/model/ReminderData;

    const-wide/16 v9, -0x1

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v14

    sget-object v16, Lcom/callapp/contacts/model/ReminderType;->BLOCKED:Lcom/callapp/contacts/model/ReminderType;

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lcom/callapp/contacts/model/ReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V

    .line 1030
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/BlockManager;->getBlockedNumbersForIncoming()Ljava/util/List;

    move-result-object v2

    .line 1036
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    .line 1037
    new-instance v4, Lcom/callapp/contacts/model/ReminderData;

    const-wide/16 v8, -0x1

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v13

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->getFullName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/callapp/contacts/model/ReminderType;->BLOCKED:Lcom/callapp/contacts/model/ReminderType;

    move-object v7, v4

    invoke-direct/range {v7 .. v15}, Lcom/callapp/contacts/model/ReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V

    .line 1038
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1041
    :cond_2
    new-instance v2, Lcom/callapp/contacts/manager/contacts/ContactUtils$13;

    invoke-direct {v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils$13;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1059
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 1060
    throw v0

    .line 1059
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static getContactIdToThumbnailUriMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 986
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 987
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "photo_thumb_uri"

    const-string v3, "_id"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "has_phone_number"

    const-string v3, "="

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/contacts/ContactUtils$12;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils$12;-><init>(Ljava/util/Map;)V

    .line 988
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    return-object v0
.end method

.method private static getContactListEmailsCursor()Landroid/database/Cursor;
    .locals 5

    .line 781
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "contact_id"

    .line 782
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 783
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 784
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DISPLAY_NAME_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 785
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v3, "!="

    const/4 v4, 0x0

    .line 786
    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v4, "null"

    .line 787
    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v4, ""

    .line 788
    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 789
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public static getContactsWithPhoneNumber()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4773
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoriteContacts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 825
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactUtils;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4847
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4848
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    goto :goto_0

    .line 4851
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getFavoritesInternal()Ljava/util/List;

    move-result-object v1

    .line 828
    :goto_0
    sput-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKeysAsync(Ljava/util/Collection;)V

    .line 831
    :cond_2
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d:Ljava/util/List;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 5840
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5841
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v2

    .line 831
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 832
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getFavoritesInternal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 794
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(ZLjava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 798
    :try_start_0
    new-instance v3, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;-><init>(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 800
    :try_start_1
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToFirst()Z

    .line 801
    :goto_0
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 802
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getPosition()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getDataAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v1, :cond_0

    .line 804
    new-instance v2, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_0
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 810
    :goto_1
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 811
    throw v0

    .line 810
    :cond_2
    :goto_2
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 813
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic lambda$KeBqLxVdjG2CyfVKdM7505JRr7w(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$ohU5WylqI_-FV9rzoJOwUwFpmdk(JLcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(JLcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;Lcom/callapp/framework/phone/Phone;Z)V

    return-void
.end method

.method public static synthetic lambda$vzVhuitXUJyLeQkXsFFQ8p7TAn8(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    return-object p0
.end method
