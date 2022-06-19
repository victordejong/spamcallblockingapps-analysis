.class public Lcom/callerid/block/util/f0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/callerid/block/util/g0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callerid/block/util/g0;

    invoke-direct {v0, p1}, Lcom/callerid/block/util/g0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/util/f0;->b:Lcom/callerid/block/util/g0;

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/util/f0;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/util/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "searchofflinedata"

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " number1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/util/f0;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/callerid/block/util/f0;->b:Lcom/callerid/block/util/g0;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/callerid/block/util/f0;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v4, p0, Lcom/callerid/block/util/f0;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "android_spam"

    const/4 v6, 0x0

    const-string v7, "tel_number=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v4}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4, v2}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    invoke-virtual {v4, p2}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    const-string p1, "operator"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    const-string p1, "name"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    const-string p1, "report_count"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    const-string p1, "type_label"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    const-string p1, "belong_area"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    :try_start_3
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/callerid/block/util/f0;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/util/f0;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method
