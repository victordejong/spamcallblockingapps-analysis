.class final Lcom/facebook/appevents/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/b/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/facebook/appevents/b/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "0"

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 160
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/app_indexing_session"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/appevents/b/b$3;->a:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 163
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 161
    invoke-static {v2, v1, v2, v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1740
    iget-object v2, v1, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    :cond_1
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v4

    .line 174
    invoke-static {v4}, Lcom/facebook/internal/b;->b(Landroid/content/Context;)Lcom/facebook/internal/b;

    move-result-object v4

    .line 176
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 177
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ""

    if-eqz v7, :cond_2

    :try_start_1
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v7, v8

    :goto_0
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 178
    invoke-virtual {v4}, Lcom/facebook/internal/b;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 179
    invoke-virtual {v4}, Lcom/facebook/internal/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    :goto_1
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 184
    invoke-static {}, Lcom/facebook/appevents/f/b;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "1"

    :cond_4
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    invoke-static {}, Lcom/facebook/internal/ae;->e()Ljava/util/Locale;

    move-result-object v0

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 188
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "device_session_id"

    .line 191
    invoke-static {}, Lcom/facebook/appevents/b/b;->c()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "extinfo"

    .line 192
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iput-object v2, v1, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    .line 1962
    invoke-static {v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v0

    .line 2121
    iget-object v0, v0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 198
    invoke-static {}, Lcom/facebook/appevents/b/b;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    if-eqz v0, :cond_5

    const-string v2, "is_app_indexing_enabled"

    .line 200
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 198
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    invoke-static {}, Lcom/facebook/appevents/b/b;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    invoke-static {}, Lcom/facebook/appevents/b/b;->g()Ljava/lang/String;

    goto :goto_3

    .line 206
    :cond_6
    invoke-static {}, Lcom/facebook/appevents/b/b;->h()Lcom/facebook/appevents/b/e;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 207
    invoke-static {}, Lcom/facebook/appevents/b/b;->h()Lcom/facebook/appevents/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/b/e;->a()V

    .line 211
    :cond_7
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/facebook/appevents/b/b;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 212
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
