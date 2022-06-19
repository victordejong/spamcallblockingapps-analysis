.class public Lf8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq6/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lf8/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf8/b;->d()Lf8/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    invoke-virtual {v0}, Lq6/b;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lz2/q;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public b(Ljava/lang/String;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf8/b;->d()Lf8/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    .line 4
    iget-object v0, v0, Lq6/b;->h:Lr6/h;

    .line 5
    iget-object v1, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v1, p1}, Lr6/h;->d(Lr6/d;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v2}, Lr6/h;->b(Lr6/d;)Lr6/e;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lr6/h;->a(Ljava/lang/String;Lr6/e;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lr6/h;->d:Lr6/d;

    invoke-static {v0, p1}, Lr6/h;->d(Lr6/d;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-string v0, "Long"

    .line 10
    invoke-static {p1, v0}, Lr6/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf8/b;->d()Lf8/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    .line 4
    iget-object v0, v0, Lq6/b;->h:Lr6/h;

    .line 5
    iget-object v1, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v1, p1}, Lr6/h;->e(Lr6/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v2}, Lr6/h;->b(Lr6/d;)Lr6/e;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lr6/h;->a(Ljava/lang/String;Lr6/e;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lr6/h;->d:Lr6/d;

    invoke-static {v0, p1}, Lr6/h;->e(Lr6/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "String"

    .line 8
    invoke-static {p1, v0}, Lr6/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public d()Lf8/b;
    .locals 13

    .line 1
    invoke-static {}, Lt4/c;->b()Lt4/c;

    move-result-object v0

    .line 2
    const-class v1, Lq6/g;

    .line 3
    invoke-virtual {v0}, Lt4/c;->a()V

    .line 4
    iget-object v0, v0, Lt4/c;->d:Lz4/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lq6/g;

    const-string v1, "firebase"

    .line 6
    invoke-virtual {v0, v1}, Lq6/g;->a(Ljava/lang/String;)Lq6/b;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lf8/b;->a:Lq6/b;

    .line 8
    new-instance v0, Lq6/c$b;

    invoke-direct {v0}, Lq6/c$b;-><init>()V

    .line 9
    new-instance v1, Lq6/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lq6/c;-><init>(Lq6/c$b;Lq6/c$a;)V

    .line 10
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    .line 11
    iget-object v3, v0, Lq6/b;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lq6/a;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lq6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 12
    iget-object v0, p0, Lf8/b;->a:Lq6/b;

    .line 13
    iget-object v1, v0, Lq6/b;->a:Landroid/content/Context;

    .line 14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const v4, 0x7f140001

    .line 16
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    :goto_0
    const/4 v9, 0x1

    if-eq v4, v9, :cond_b

    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    .line 18
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_1
    const/4 v10, 0x3

    const-string v11, "FirebaseRemoteConfig"

    if-ne v4, v10, :cond_4

    .line 19
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "entry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 20
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v4, "An entry in the defaults XML has an invalid key and/or value tag."

    .line 21
    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v7, v2

    move-object v8, v7

    :cond_3
    move-object v6, v2

    goto :goto_3

    :cond_4
    const/4 v10, 0x4

    if-ne v4, v10, :cond_a

    if-eqz v6, :cond_a

    const/4 v4, -0x1

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v12, 0x19e5f

    if-eq v10, v12, :cond_6

    const v12, 0x6ac9171

    if-eq v10, v12, :cond_5

    goto :goto_2

    :cond_5
    const-string v10, "value"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const-string v10, "key"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    :cond_7
    :goto_2
    if-eqz v4, :cond_9

    if-eq v4, v9, :cond_8

    const-string v4, "Encountered an unexpected tag while parsing the defaults XML."

    .line 23
    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 24
    :cond_8
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 25
    :cond_9
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 26
    :cond_a
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    :cond_b
    :goto_4
    :try_start_2
    sget-object v1, Lr6/e;->f:Ljava/util/Date;

    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    sget-object v1, Lr6/e;->f:Ljava/util/Date;

    .line 30
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 31
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 32
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 33
    new-instance v3, Lr6/e;

    .line 34
    invoke-direct {v3, v6, v1, v4, v5}, Lr6/e;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    iget-object v0, v0, Lq6/b;->f:Lr6/d;

    invoke-virtual {v0, v3}, Lr6/d;->c(Lr6/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 36
    sget-object v1, Lz2/l;->e:Lz2/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 37
    :catch_1
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :goto_5
    return-object p0
.end method
