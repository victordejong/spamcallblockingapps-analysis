.class Lcom/allinone/callerid/i/a/i/i/b$a;
.super Landroid/os/AsyncTask;
.source "CallLogSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/i/i/b;
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
.field private a:Lcom/allinone/callerid/i/a/i/i/a;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/i/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/i/a/i/i/b$a;->a:Lcom/allinone/callerid/i/a/i/i/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/i/b$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "duration"

    const-string v2, "type"

    const-string v3, "number"

    const-string v4, "date"

    .line 1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v7, v1, Lcom/allinone/callerid/i/a/i/i/b$a;->b:Landroid/content/Context;

    const-string v8, "android.permission.READ_CALL_LOG"

    invoke-static {v7, v8}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 4
    filled-new-array {v4, v3, v2, v0}, [Ljava/lang/String;

    move-result-object v11

    .line 5
    iget-object v7, v1, Lcom/allinone/callerid/i/a/i/i/b$a;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "date DESC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 7
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    .line 9
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 10
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 11
    new-instance v10, Ljava/util/Date;

    .line 12
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 13
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 14
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 15
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 17
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 19
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    iget-object v14, v1, Lcom/allinone/callerid/i/a/i/i/b$a;->b:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 21
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {}, Lcom/allinone/callerid/util/a1;->V()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-lez v18, :cond_1

    .line 22
    invoke-static {v12}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 23
    new-instance v14, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v14}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 24
    invoke-virtual {v14, v12}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v14, v13}, Lcom/allinone/callerid/search/CallLogBean;->d1(I)V

    .line 26
    invoke-virtual {v14, v10}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 27
    invoke-virtual {v14, v11}, Lcom/allinone/callerid/search/CallLogBean;->t0(Ljava/lang/String;)V

    .line 28
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    .line 29
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 30
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 31
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_b

    .line 32
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    .line 33
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    const-string v9, "1"

    const-string v10, "0"

    if-ne v4, v7, :cond_5

    if-eqz v3, :cond_4

    .line 36
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    move-object v4, v9

    move-object v7, v10

    goto :goto_4

    :cond_4
    :goto_3
    move-object v7, v9

    move-object v4, v10

    goto :goto_4

    .line 37
    :cond_5
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v10

    move-object v7, v4

    .line 38
    :goto_4
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/allinone/callerid/util/i;->g(J)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, ""

    if-eqz v12, :cond_9

    .line 41
    :try_start_2
    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_5

    :cond_7
    const-string v9, "-1"

    .line 42
    :goto_5
    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 43
    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 45
    invoke-virtual {v12}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 46
    :cond_8
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object v9, v10

    .line 47
    :cond_a
    :goto_6
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    invoke-static {v13}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    invoke-static {v11}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    invoke-static {v10}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    invoke-static {v3}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 63
    :cond_b
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "collectinfo"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel_number_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    return-object v5
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/i/i/b$a;->a:Lcom/allinone/callerid/i/a/i/i/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/i/i/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/i/b$a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/i/b$a;->b(Lorg/json/JSONArray;)V

    return-void
.end method
