.class Lcom/callerid/block/h/a/e/j/b$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/e/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/e/j/a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/e/j/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p5, p0, Lcom/callerid/block/h/a/e/j/b$a;->a:Lcom/callerid/block/h/a/e/j/a;

    iput-object p1, p0, Lcom/callerid/block/h/a/e/j/b$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/h/a/e/j/b$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/callerid/block/h/a/e/j/b$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "duration"

    const-string v2, "type"

    const-string v3, "date"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object v5, v1, Lcom/callerid/block/h/a/e/j/b$a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/callerid/block/util/n0;->y1(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "0"

    if-eqz v5, :cond_0

    :try_start_1
    const-string v5, "2"

    iget-object v7, v1, Lcom/callerid/block/h/a/e/j/b$a;->b:Landroid/content/Context;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lcom/callerid/block/util/n0;->D1(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    iget-object v7, v1, Lcom/callerid/block/h/a/e/j/b$a;->b:Landroid/content/Context;

    const-string v8, "android.permission.READ_CALL_LOG"

    invoke-static {v7, v8}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "1"

    const-string v9, ""

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    :try_start_2
    new-array v12, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v12, v7

    const/4 v15, 0x1

    aput-object v2, v12, v15

    const/4 v14, 0x2

    aput-object v0, v12, v14

    iget-object v10, v1, Lcom/callerid/block/h/a/e/j/b$a;->b:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "number=?"

    new-array v14, v15, [Ljava/lang/String;

    iget-object v15, v1, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    aput-object v15, v14, v7

    const-string v15, "date DESC"

    const/4 v7, 0x2

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v12, Ljava/util/Date;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-ne v14, v7, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v15, 0x3e8

    div-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/callerid/block/util/e;->f(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v14, v3, :cond_2

    if-eqz v13, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    iput-object v8, v1, Lcom/callerid/block/h/a/e/j/b$a;->e:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    if-ne v14, v3, :cond_4

    :cond_3
    move-object v3, v8

    goto :goto_3

    :cond_4
    :goto_2
    move-object v3, v6

    goto :goto_3

    :cond_5
    move-object v0, v6

    move-object v3, v0

    move-object v13, v3

    move-object v2, v9

    :goto_3
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_6
    move-object v0, v6

    move-object v3, v0

    move-object v13, v3

    move-object v2, v9

    :cond_7
    :goto_4
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v7

    iget-object v10, v1, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    const-string v8, "-1"

    :goto_5
    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_9
    iget-object v7, v1, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/callerid/block/util/t0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v8, v6

    :cond_b
    :goto_6
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v10, v1, Lcom/callerid/block/h/a/e/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v9}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, v1, Lcom/callerid/block/h/a/e/j/b$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v13}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, v1, Lcom/callerid/block/h/a/e/j/b$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "collectinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel_number_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    return-object v4
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/e/j/b$a;->a:Lcom/callerid/block/h/a/e/j/a;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/e/j/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/e/j/b$a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/e/j/b$a;->b(Lorg/json/JSONArray;)V

    return-void
.end method
