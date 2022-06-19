.class Lcom/allinone/callerid/d/e/d$b;
.super Landroid/os/AsyncTask;
.source "UploadCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/d$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/allinone/callerid/d/e/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/allinone/callerid/d/e/d$b;->a:Lcom/allinone/callerid/d/e/d$a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/e/d$b;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/d/e/d$b;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/d/e/d$b;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, ""

    .line 1
    iget-object v2, v1, Lcom/allinone/callerid/d/e/d$b;->d:Landroid/net/Uri;

    if-eqz v2, :cond_9

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v1, Lcom/allinone/callerid/d/e/d$b;->d:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "callscreen"

    if-eqz v3, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "_data"

    .line 5
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/allinone/callerid/d/e/d$b;->e:Ljava/lang/String;

    const-string v6, "mime_type"

    .line 6
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 8
    array-length v7, v6

    if-lez v7, :cond_0

    .line 9
    aget-object v6, v6, v4

    iput-object v6, v1, Lcom/allinone/callerid/d/e/d$b;->f:Ljava/lang/String;

    .line 10
    :cond_0
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_1

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video_path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/allinone/callerid/d/e/d$b;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\ndata_format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/allinone/callerid/d/e/d$b;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_2
    iget-object v3, v1, Lcom/allinone/callerid/d/e/d$b;->e:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 14
    iget-object v3, v1, Lcom/allinone/callerid/d/e/d$b;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/allinone/callerid/d/f/a;->g(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_9

    .line 15
    array-length v6, v3

    if-lez v6, :cond_9

    .line 16
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    const/high16 v7, 0x100000

    if-eqz v6, :cond_3

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoByte:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v3

    div-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "M"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_3
    array-length v6, v3

    div-int/2addr v6, v7

    const/16 v7, 0x14

    if-ge v6, v7, :cond_8

    .line 19
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "data_author"

    const-string v8, "data_title"

    const-string v9, "data_format"

    const-string v10, "stamp"

    const-string v11, "version"

    const-string v12, "uid"

    const-string v13, "language"

    const-string v14, "default_cc"

    if-eqz v6, :cond_4

    .line 20
    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {v2}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v15

    invoke-virtual {v15}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/h1;->G()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v15, v1, Lcom/allinone/callerid/d/e/d$b;->f:Ljava/lang/String;

    invoke-virtual {v6, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v15, v1, Lcom/allinone/callerid/d/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v6, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v15, v1, Lcom/allinone/callerid/d/e/d$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-boolean v15, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v15, :cond_4

    .line 30
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_4
    new-instance v4, Lcom/yanzhenjie/nohttp/rest/StringRequest;

    const-string v6, "https://app.show-caller.com/caller_screen_v2/v1/useuplscr.php"

    sget-object v15, Lcom/yanzhenjie/nohttp/RequestMethod;->POST:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-direct {v4, v6, v15}, Lcom/yanzhenjie/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    .line 32
    invoke-static {v2}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v14, v6}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v4

    check-cast v4, Lcom/yanzhenjie/nohttp/rest/Request;

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/h1;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v13, v6}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v4

    .line 34
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v12, v6}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v4

    .line 35
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v11, v6}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v4

    .line 36
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v10, v2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v2

    iget-object v4, v1, Lcom/allinone/callerid/d/e/d$b;->f:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, v9, v4}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v2

    iget-object v4, v1, Lcom/allinone/callerid/d/e/d$b;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v8, v4}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v2

    iget-object v4, v1, Lcom/allinone/callerid/d/e/d$b;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v7, v4}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v2

    const-string v4, "data_file"

    new-instance v6, Lcom/yanzhenjie/nohttp/ByteArrayBinary;

    iget-object v7, v1, Lcom/allinone/callerid/d/e/d$b;->e:Ljava/lang/String;

    invoke-direct {v6, v3, v7}, Lcom/yanzhenjie/nohttp/ByteArrayBinary;-><init>([BLjava/lang/String;)V

    .line 40
    invoke-virtual {v2, v4, v6}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Lcom/yanzhenjie/nohttp/Binary;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/nohttp/rest/StringRequest;

    .line 41
    sget-object v3, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    invoke-virtual {v3, v2}, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->execute(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;

    move-result-object v2

    .line 42
    invoke-interface {v2}, Lcom/yanzhenjie/nohttp/rest/Response;->isSucceed()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 43
    invoke-interface {v2}, Lcom/yanzhenjie/nohttp/rest/Response;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_5

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "str: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_5
    invoke-static {v2}, Lcom/allinone/callerid/util/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_6

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_9

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    .line 51
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_7
    const/16 v2, -0x14

    if-ne v0, v2, :cond_9

    .line 53
    invoke-static {}, Lcom/allinone/callerid/util/s;->a()V

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, v1, Lcom/allinone/callerid/d/e/d$b;->g:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_9
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/d$b;->a:Lcom/allinone/callerid/d/e/d$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v1, p0, Lcom/allinone/callerid/d/e/d$b;->g:Z

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/d/e/d$a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method protected varargs c([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/d$b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/d$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/d$b;->c([Ljava/lang/String;)V

    return-void
.end method
