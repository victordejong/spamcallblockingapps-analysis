.class Lcom/callerid/block/h/a/e/l/c$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/e/l/c;
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
.field private a:Lcom/callerid/block/h/a/e/l/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/e/l/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/callerid/block/h/a/e/l/c$a;->a:Lcom/callerid/block/h/a/e/l/b;

    iput-object p1, p0, Lcom/callerid/block/h/a/e/l/c$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 14

    const-string p1, "duration"

    const-string v0, "type"

    const-string v1, "number"

    const-string v2, "date"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object v4, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/callerid/block/h/a/e/l/c$a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/callerid/block/h/a/e/l/c$a;->b:Landroid/content/Context;

    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-static {v5, v6}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v9, v5

    aput-object v1, v9, v6

    const/4 v13, 0x2

    aput-object v0, v9, v13

    const/4 v7, 0x3

    aput-object p1, v9, v7

    iget-object v7, p0, Lcom/callerid/block/h/a/e/l/c$a;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "number=?"

    new-array v11, v6, [Ljava/lang/String;

    iget-object v12, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    aput-object v12, v11, v5

    const-string v12, "date DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v5, v8, :cond_1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v8, Ljava/util/Date;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v13, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p1}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {p1, v10}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Lcom/callerid/block/search/CallLogBean;->G0(I)V

    invoke-virtual {p1, v8}, Lcom/callerid/block/search/CallLogBean;->V(Ljava/util/Date;)V

    invoke-virtual {p1, v9}, Lcom/callerid/block/search/CallLogBean;->c0(Ljava/lang/String;)V

    move-object v4, p1

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string p1, "2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "1"

    const-string v1, ""

    const-string v2, "0"

    if-eqz v4, :cond_6

    :try_start_1
    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v5

    if-ne v5, v6, :cond_4

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    move-object v5, v0

    move-object v6, v2

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, v0

    move-object v5, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v2

    move-object v6, v5

    :goto_2
    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->d()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/callerid/block/util/e;->f(J)Ljava/lang/String;

    move-result-object v4

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    goto :goto_3

    :cond_6
    move-object v4, p1

    move-object v5, v1

    move-object p1, v2

    move-object v6, p1

    move-object v7, v6

    move-object v8, v7

    :goto_3
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v9

    iget-object v10, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "-1"

    :goto_4
    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v9}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    iget-object v9, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/callerid/block/util/t0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object v0, v2

    :cond_a
    :goto_5
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    iget-object v10, p0, Lcom/callerid/block/h/a/e/l/c$a;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v8}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v6}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v5}, Lcom/callerid/block/util/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_b
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_c

    const-string p1, "collectinfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel_number_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_6
    return-object v3
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/e/l/c$a;->a:Lcom/callerid/block/h/a/e/l/b;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/e/l/b;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/e/l/c$a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/e/l/c$a;->b(Lorg/json/JSONArray;)V

    return-void
.end method
