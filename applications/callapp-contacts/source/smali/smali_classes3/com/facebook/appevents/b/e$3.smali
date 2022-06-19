.class final Lcom/facebook/appevents/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/appevents/b/e;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/b/e;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/facebook/appevents/b/e$3;->b:Lcom/facebook/appevents/b/e;

    iput-object p2, p0, Lcom/facebook/appevents/b/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "is_app_indexing_enabled"

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/b/e$3;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 203
    iget-object v3, p0, Lcom/facebook/appevents/b/e$3;->b:Lcom/facebook/appevents/b/e;

    invoke-static {v3}, Lcom/facebook/appevents/b/e;->e(Lcom/facebook/appevents/b/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/facebook/appevents/b/e$3;->a:Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_indexing"

    .line 207
    invoke-static {v3, v2, v4, v5}, Lcom/facebook/appevents/b/e;->a(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/facebook/appevents/b/e$3;->b:Lcom/facebook/appevents/b/e;

    invoke-static {v3}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    .line 1962
    :try_start_1
    invoke-static {v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2121
    :try_start_2
    iget-object v4, v2, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    const-string v2, "true"

    const-string v5, "success"

    .line 1223
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1224
    sget-object v2, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    sget-object v5, Lcom/facebook/appevents/b/e;->a:Ljava/lang/String;

    const-string v6, "Successfully send UI component tree to server"

    invoke-static {v2, v5, v6}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iput-object v1, v3, Lcom/facebook/appevents/b/e;->d:Ljava/lang/String;

    .line 1229
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1230
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1231
    invoke-static {v0}, Lcom/facebook/appevents/b/b;->a(Ljava/lang/Boolean;)V

    return-void

    .line 1234
    :cond_3
    sget-object v0, Lcom/facebook/appevents/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error sending UI component tree to Facebook: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3111
    iget-object v2, v2, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;

    .line 1234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 1237
    :try_start_3
    sget-object v1, Lcom/facebook/appevents/b/e;->a:Ljava/lang/String;

    const-string v2, "Error decoding server response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1239
    :try_start_4
    invoke-static {v0, v3}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    .line 210
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
