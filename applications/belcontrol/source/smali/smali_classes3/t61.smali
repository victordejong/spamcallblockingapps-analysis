.class public Lt61;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu61;


# instance fields
.field public a:J

.field public b:Lorg/json/JSONObject;

.field public c:Lorg/json/JSONArray;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lk61;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lt61;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lt61;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lt61;->c:Lorg/json/JSONArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lt61;->d:J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lt61;->b:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lt61;->c:Lorg/json/JSONArray;

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {}, Lb91;->j()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-static {v1}, Lb91;->k(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lt61;->b:Lorg/json/JSONObject;

    const-string v2, "countries"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lt61;->b:Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lt61;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "Unable to make request!"

    invoke-static {p0, v1, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-wide v0, p0, Lt61;->a:J

    iget-object v2, p0, Lt61;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lt61;->a:J

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lt61;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lt61;->d:J

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lt61;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lt61;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Lq81;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lr71$a;->m1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->e()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-object v4, v1, Lq81;->f:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, v1, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v6, v4

    invoke-virtual/range {p1 .. p1}, Lq81;->f0()[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    if-nez v8, :cond_2

    return v5

    :cond_2
    if-lez v2, :cond_3

    iget-object v8, v0, Lt61;->c:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    array-length v9, v4

    add-int/2addr v8, v9

    if-le v8, v2, :cond_3

    return v3

    :cond_3
    array-length v2, v4

    const-wide/16 v8, 0x0

    move-wide v11, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v2, :cond_4

    aget-object v13, v4, v10

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v13, v6

    move-wide v15, v6

    iget-wide v5, v0, Lt61;->d:J

    add-long/2addr v13, v5

    add-long/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    move-wide v6, v15

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move-wide v15, v6

    sget-object v2, Lr71$a;->n1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->g()J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-lez v2, :cond_5

    iget-wide v7, v0, Lt61;->a:J

    add-long/2addr v7, v11

    cmp-long v2, v7, v5

    if-lez v2, :cond_5

    return v3

    :cond_5
    array-length v2, v4

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v5, v4, v3

    iget-object v6, v1, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lt61;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-wide v7, v0, Lt61;->a:J

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    int-to-long v9, v5

    add-long/2addr v9, v15

    iget-wide v11, v0, Lt61;->d:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v0, Lt61;->a:J

    if-eqz v6, :cond_6

    iget-object v5, v0, Lt61;->c:Lorg/json/JSONArray;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    return v3

    :cond_8
    :goto_2
    const/4 v3, 0x1

    return v3
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    const-string p2, "Unable to create entry"

    invoke-static {p0, p2, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
