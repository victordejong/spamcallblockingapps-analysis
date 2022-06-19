.class public Ld2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/f4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld2/o;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-object v0, Ld2/o;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()V
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ld2/f1;->Y:Ljava/lang/String;

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-boolean v0, v0, Ld2/f1;->D:Z

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Ld2/o;->a:Ljava/util/List;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/f4;

    .line 8
    invoke-static {v2}, Ld2/o;->c(Ld2/f4;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Ld2/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static c(Ld2/f4;)V
    .locals 4

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ld2/f1;->Y:Ljava/lang/String;

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-boolean v0, v0, Ld2/f1;->D:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "payload"

    .line 6
    invoke-virtual {p0, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    .line 7
    sget-boolean v1, Ld2/x3;->R:Z

    if-eqz v1, :cond_1

    const-string v1, "api_key"

    const-string v2, "bb2cf0647ba654d7228dd3f9405bbc6a"

    .line 8
    invoke-static {v0, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Ld2/f1;->Y:Ljava/lang/String;

    const-string v2, "api_key"

    .line 11
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    :try_start_0
    const-string v1, "payload"

    .line 12
    invoke-virtual {p0, v1}, Ld2/f4;->p(Ljava/lang/String;)V

    const-string v1, "payload"

    .line 13
    iget-object v2, p0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v3, p0, Ld2/f4;->a:Lorg/json/JSONObject;

    .line 15
    iget-object v0, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 19
    :goto_1
    new-instance v0, Ld2/t0;

    const-string v1, "AdColony.log_event"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    goto :goto_3

    .line 20
    :cond_2
    :goto_2
    sget-object v0, Ld2/o;->a:Ljava/util/List;

    monitor-enter v0

    .line 21
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-le v2, v1, :cond_3

    .line 22
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    monitor-exit v0

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
