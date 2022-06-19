.class Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "PhoneCallOrmLiteHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "phone_calls.sqlite"

.field private static final DATABASE_VERSION:I = 0x9

.field public static final FIELD_ACTOR_ADDRESS:Ljava/lang/String; = "address"

.field public static final FIELD_ACTOR_BIRTH_DATE:Ljava/lang/String; = "birthDate"

.field public static final FIELD_ACTOR_EMAIL:Ljava/lang/String; = "email"

.field public static final FIELD_ACTOR_ID:Ljava/lang/String; = "actorId"

.field public static final FIELD_ACTOR_LOGO_URL:Ljava/lang/String; = "logoUrl"

.field public static final FIELD_ACTOR_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_ACTOR_PHONE_NUMBER:Ljava/lang/String; = "actorPhoneNumber"

.field public static final FIELD_ACTOR_TYPE:Ljava/lang/String; = "actorType"

.field public static final FIELD_ACTOR_WEBSITE:Ljava/lang/String; = "website"

.field public static final FIELD_CALLED_PHONE_NUMBER:Ljava/lang/String; = "calledPhoneNumber"

.field public static final FIELD_DATE_TIME:Ljava/lang/String; = "dateTimeInMillis"

.field public static final FIELD_INFO_PAGE_URL:Ljava/lang/String; = "infoPageUrl"

.field public static final FIELD_LAST_UPDATE_DATE_TIME:Ljava/lang/String; = "lastUpdateDateTimeInMillis"

.field public static final FIELD_PHONEBOOK_NUMBER:Ljava/lang/String; = "phonebookNumber"

.field public static final FIELD_REGION_CODE:Ljava/lang/String; = "regionCode"

.field public static final FIELD_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final FIELD_SPAM_TYPE:Ljava/lang/String; = "spamType"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone_calls.sqlite"

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 38
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getCallDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    const-class v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 50
    :try_start_0
    const-class p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .line 60
    :try_start_0
    const-class p3, Lcom/telguarder/features/numberLookup/PhoneEvent;

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
