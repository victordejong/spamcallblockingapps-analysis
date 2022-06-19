.class Lcom/allinone/callerid/i/a/i/k/b$a;
.super Landroid/os/AsyncTask;
.source "NormalSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/i/k/b;
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
.field private a:Lcom/allinone/callerid/i/a/i/k/a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/i/k/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p7, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->a:Lcom/allinone/callerid/i/a/i/k/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->e:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->f:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 14

    const-string p1, "duration"

    const-string v0, "type"

    const-string v1, "number"

    const-string v2, "date"

    .line 1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    .line 3
    iget-object v5, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->b:Landroid/content/Context;

    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-static {v5, v6}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 4
    filled-new-array {v2, v1, v0, p1}, [Ljava/lang/String;

    move-result-object v9

    .line 5
    iget-object v5, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v8

    const-string v10, "number=?"

    new-array v11, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v11, v13

    const-string v12, "date DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v13, v7, :cond_1

    .line 10
    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 11
    new-instance v7, Ljava/util/Date;

    .line 12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 13
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 14
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 15
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 17
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 19
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p1}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 21
    invoke-virtual {p1, v9}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v10}, Lcom/allinone/callerid/search/CallLogBean;->d1(I)V

    .line 23
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 24
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/search/CallLogBean;->t0(Ljava/lang/String;)V

    move-object v4, p1

    :cond_1
    if-eqz v5, :cond_2

    .line 25
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const-string p1, "1"

    const-string v0, ""

    const-string v1, "0"

    if-eqz v4, :cond_6

    .line 26
    :try_start_1
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->h()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v5

    if-ne v5, v6, :cond_4

    if-eqz v2, :cond_3

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    move-object v5, p1

    move-object v6, v1

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, p1

    move-object v5, v1

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v1

    move-object v6, v5

    .line 30
    :goto_2
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/allinone/callerid/util/i;->g(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v0

    move-object v2, v1

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    .line 32
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v8

    iget-object v9, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 33
    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    const-string p1, "-1"

    .line 34
    :goto_4
    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 35
    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 37
    invoke-virtual {v8}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 38
    :cond_8
    iget-object v8, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/allinone/callerid/util/h1;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object p1, v1

    .line 39
    :cond_a
    :goto_5
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 40
    iget-object v9, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 42
    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    invoke-static {v7}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->d:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->e:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    iget-object p1, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->f:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    iget-object p1, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->g:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    :cond_b
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_c

    const-string p1, "collectinfo"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel_number_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_6
    return-object v3
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/i/k/b$a;->a:Lcom/allinone/callerid/i/a/i/k/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/i/k/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/k/b$a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/k/b$a;->b(Lorg/json/JSONArray;)V

    return-void
.end method
