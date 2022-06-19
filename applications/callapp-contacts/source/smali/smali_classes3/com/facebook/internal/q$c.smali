.class final Lcom/facebook/internal/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/q$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/q$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/q$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    return-void

    .line 124
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/internal/q$c;->a:Landroid/content/Context;

    const-string v1, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/facebook/internal/q$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "applicationId"

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    .line 131
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "FacebookSDK"

    .line 133
    check-cast v1, Ljava/lang/Exception;

    invoke-static {v3, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 136
    sget-object v1, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    iget-object v1, p0, Lcom/facebook/internal/q$c;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/facebook/internal/q;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/p;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v0, "Required value was null."

    .line 128
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 139
    :cond_3
    :goto_1
    sget-object v1, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    iget-object v1, p0, Lcom/facebook/internal/q$c;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/internal/q;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 141
    sget-object v3, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    iget-object v3, p0, Lcom/facebook/internal/q$c;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/facebook/internal/q;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/p;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/internal/q$c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    if-eqz v2, :cond_5

    .line 1047
    iget-object v0, v2, Lcom/facebook/internal/p;->i:Ljava/lang/String;

    .line 148
    sget-object v1, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    invoke-static {}, Lcom/facebook/internal/q;->b()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 149
    sget-object v1, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    invoke-static {}, Lcom/facebook/internal/q;->c()V

    .line 150
    sget-object v1, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    invoke-static {}, Lcom/facebook/internal/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/q$c;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 158
    invoke-static {}, Lcom/facebook/appevents/f/d;->a()V

    .line 160
    sget-object v0, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    invoke-static {}, Lcom/facebook/internal/q;->e()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    invoke-static {}, Lcom/facebook/internal/q;->f()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/q$c;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/facebook/internal/q$a;->SUCCESS:Lcom/facebook/internal/q$a;

    goto :goto_2

    .line 162
    :cond_6
    sget-object v1, Lcom/facebook/internal/q$a;->ERROR:Lcom/facebook/internal/q$a;

    .line 160
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/facebook/internal/q;->a:Lcom/facebook/internal/q;

    invoke-static {v0}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/q;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 164
    :try_start_4
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
