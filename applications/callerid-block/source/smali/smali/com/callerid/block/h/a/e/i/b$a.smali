.class Lcom/callerid/block/h/a/e/i/b$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/e/i/b;
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
.field private a:Lcom/callerid/block/h/a/e/i/a;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callerid/block/h/a/e/i/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/h/a/e/i/b$a;->a:Lcom/callerid/block/h/a/e/i/a;

    iput-object p1, p0, Lcom/callerid/block/h/a/e/i/b$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "duration"

    const-string v2, "type"

    const-string v3, "number"

    const-string v4, "date"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object v6, v1, Lcom/callerid/block/h/a/e/i/b$a;->b:Landroid/content/Context;

    const-string v7, "android.permission.READ_CALL_LOG"

    invoke-static {v6, v7}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x4

    new-array v10, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v10, v7

    const/4 v14, 0x1

    aput-object v3, v10, v14

    const/4 v15, 0x2

    aput-object v2, v10, v15

    const/4 v8, 0x3

    aput-object v0, v10, v8

    iget-object v8, v1, Lcom/callerid/block/h/a/e/i/b$a;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v10, Ljava/util/Date;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v15, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v1, Lcom/callerid/block/h/a/e/i/b$a;->b:Landroid/content/Context;

    invoke-static {v7, v12}, Lcom/callerid/block/util/t0;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    iget-object v7, v1, Lcom/callerid/block/h/a/e/i/b$a;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/callerid/block/util/n0;->I(Landroid/content/Context;)J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-lez v7, :cond_1

    invoke-static {v12}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v7}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v7, v12}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Lcom/callerid/block/search/CallLogBean;->G0(I)V

    invoke-virtual {v7, v10}, Lcom/callerid/block/search/CallLogBean;->V(Ljava/util/Date;)V

    invoke-virtual {v7, v11}, Lcom/callerid/block/search/CallLogBean;->c0(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_b

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "1"

    const-string v9, "0"

    if-ne v4, v14, :cond_5

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    move-object v4, v8

    move-object v10, v9

    goto :goto_4

    :cond_4
    :goto_3
    move-object v10, v8

    move-object v4, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v4

    const/4 v10, 0x5

    if-ne v4, v10, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v9

    move-object v10, v4

    :goto_4
    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v15, 0x3e8

    div-long/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/callerid/block/util/e;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, ""

    if-eqz v12, :cond_9

    :try_start_2
    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_5

    :cond_7
    const-string v8, "-1"

    :goto_5
    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_8
    invoke-static {v2}, Lcom/callerid/block/util/t0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object v8, v9

    :cond_a
    :goto_6
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v13}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v11}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v9}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_b
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "collectinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel_number_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

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
    return-object v5
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/e/i/b$a;->a:Lcom/callerid/block/h/a/e/i/a;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/e/i/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/e/i/b$a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/e/i/b$a;->b(Lorg/json/JSONArray;)V

    return-void
.end method
