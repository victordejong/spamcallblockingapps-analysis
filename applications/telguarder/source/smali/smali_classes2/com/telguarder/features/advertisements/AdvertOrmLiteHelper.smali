.class Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "AdvertOrmLiteHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "adverts.sqlite"

.field private static final DATABASE_VERSION:I = 0x7

.field public static final FIELD_ADVERT_BACKUP_NETWORK1:Ljava/lang/String; = "adBackup1"

.field public static final FIELD_ADVERT_BACKUP_NETWORK2:Ljava/lang/String; = "adBackup2"

.field public static final FIELD_ADVERT_BACKUP_NETWORK3:Ljava/lang/String; = "adBackup3"

.field public static final FIELD_ADVERT_BACKUP_NETWORK4:Ljava/lang/String; = "adBackup4"

.field public static final FIELD_ADVERT_BACKUP_NETWORK5:Ljava/lang/String; = "adBackup5"

.field public static final FIELD_ADVERT_BACKUP_NETWORK6:Ljava/lang/String; = "adBackup6"

.field public static final FIELD_ADVERT_BACKUP_NETWORK7:Ljava/lang/String; = "adBackup7"

.field public static final FIELD_ADVERT_BACKUP_NETWORK8:Ljava/lang/String; = "adBackup8"

.field public static final FIELD_ADVERT_BACKUP_NETWORK9:Ljava/lang/String; = "adBackup9"

.field public static final FIELD_ADVERT_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FIELD_ADVERT_NETWORK:Ljava/lang/String; = "advertNetwork"

.field public static final FIELD_ADVERT_NETWORK_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_ADVERT_PLACE:Ljava/lang/String; = "place"

.field public static final FIELD_ADVERT_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final FIELD_CREATED_AT:Ljava/lang/String; = "createdAt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "adverts.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 43
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getAdvertDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/telguarder/features/advertisements/Advert;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    const-class v0, Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 55
    :try_start_0
    const-class p1, Lcom/telguarder/features/advertisements/AdvertNetwork;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 56
    const-class p1, Lcom/telguarder/features/advertisements/Advert;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .line 66
    :try_start_0
    const-class p3, Lcom/telguarder/features/advertisements/AdvertNetwork;

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 67
    const-class p3, Lcom/telguarder/features/advertisements/Advert;

    invoke-static {p2, p3, p4}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
