.class public Lcom/allinone/callerid/util/n0;
.super Ljava/lang/Object;
.source "OfflineDataHelper.java"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/allinone/callerid/util/o0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/o0;

    invoke-direct {v0, p1}, Lcom/allinone/callerid/util/o0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/util/n0;->b:Lcom/allinone/callerid/util/o0;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/util/n0;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/n0;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/util/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/util/n0;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "android_spam"

    const/4 v4, 0x0

    const-string v5, "tel_number=?"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {v2}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {v2, v10}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V

    .line 6
    invoke-virtual {v2, p2}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    const-string p1, "operator"

    .line 8
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    const-string p1, "type"

    .line 9
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    const-string p1, "name"

    .line 10
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    const-string p1, "report_count"

    .line 11
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    const-string p1, "type_label"

    .line 12
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    const-string p1, "belong_area"

    .line 13
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    .line 14
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "searchofflinedata"

    .line 15
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 16
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/util/n0;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 18
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method
