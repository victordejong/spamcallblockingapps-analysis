.class Lcom/allinone/callerid/i/a/i/j/b$a;
.super Landroid/os/AsyncTask;
.source "IncomingSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/i/j/b;
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
.field private a:Lcom/allinone/callerid/i/a/i/j/a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/i/j/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/allinone/callerid/i/a/i/j/b$a;->a:Lcom/allinone/callerid/i/a/i/j/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/j/b$a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    const-string p1, "0"

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/j/b$a;->d:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/allinone/callerid/i/a/i/j/b$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "duration"

    const-string v2, "type"

    const-string v3, "date"

    const-string v4, "0"

    .line 1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2
    :try_start_0
    iget-object v6, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x3e8

    const-string v11, "1"

    if-eqz v6, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z()J

    move-result-wide v12

    cmp-long v6, v12, v7

    if-eqz v6, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/allinone/callerid/util/a1;->z()J

    move-result-wide v12

    sub-long/2addr v6, v12

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v6, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->e:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/a1;->a()J

    move-result-wide v12

    cmp-long v6, v12, v7

    if-eqz v6, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z()J

    move-result-wide v6

    cmp-long v8, v12, v6

    if-lez v8, :cond_1

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z()J

    move-result-wide v6

    sub-long/2addr v12, v6

    div-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->d:Ljava/lang/String;

    .line 9
    :cond_1
    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/a1;->r2()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/allinone/callerid/util/a1;->J2(Ljava/lang/Boolean;)V

    move-object v6, v11

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    move-object v7, v6

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/a1;->q2()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v6, "2"

    .line 13
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Lcom/allinone/callerid/util/a1;->H2(Ljava/lang/Boolean;)V

    .line 14
    :cond_3
    iget-object v8, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->b:Landroid/content/Context;

    const-string v12, "android.permission.READ_CALL_LOG"

    invoke-static {v8, v12}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, ""

    if-nez v8, :cond_9

    .line 15
    :try_start_2
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v15

    .line 16
    iget-object v8, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v14

    const-string v16, "number=?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    iget-object v10, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v10, v9, v19

    const-string v18, "date DESC"

    move-object/from16 v17, v9

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 18
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_7

    .line 19
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    .line 20
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-ge v10, v13, :cond_7

    .line 21
    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 22
    new-instance v13, Ljava/util/Date;

    .line 23
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 24
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 25
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 26
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 28
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v8, 0x2

    if-ne v15, v8, :cond_4

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v16, 0x3e8

    div-long v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->g(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v15, v3, :cond_5

    if-eqz v14, :cond_6

    .line 31
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    .line 32
    iput-object v11, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->e:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 v3, 0x5

    if-ne v15, v3, :cond_8

    :cond_6
    move-object v7, v11

    goto :goto_3

    :cond_7
    move-object v0, v4

    move-object v14, v0

    move-object v2, v12

    :cond_8
    :goto_3
    if-eqz v9, :cond_a

    .line 33
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_9
    move-object v0, v4

    move-object v14, v0

    move-object v2, v12

    .line 34
    :cond_a
    :goto_4
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v3

    iget-object v8, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 35
    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    const-string v11, "-1"

    .line 36
    :goto_5
    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 37
    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 39
    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 40
    :cond_c
    iget-object v3, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/allinone/callerid/util/h1;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v11, v4

    .line 41
    :cond_e
    :goto_6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 42
    iget-object v8, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    invoke-static {v12}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    iget-object v0, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    invoke-static {v14}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    iget-object v0, v1, Lcom/allinone/callerid/i/a/i/j/b$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_f

    const-string v0, "collectinfo"

    .line 58
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

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_7
    return-object v5
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/i/j/b$a;->a:Lcom/allinone/callerid/i/a/i/j/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/i/j/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/j/b$a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/j/b$a;->b(Lorg/json/JSONArray;)V

    return-void
.end method
