.class final Lcom/facebook/internal/m$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/internal/m$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/m$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/m$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/facebook/internal/m$1;->a:Landroid/content/Context;

    const-string/jumbo v2, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 165
    iget-object v1, p0, Lcom/facebook/internal/m$1;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v3}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    if-eqz v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/internal/m$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/l;

    move-result-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/m$1;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/m;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_1

    .line 181
    iget-object v3, p0, Lcom/facebook/internal/m$1;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/l;

    .line 183
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/internal/m$1;->b:Ljava/lang/String;

    .line 184
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    :cond_1
    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0}, Lcom/facebook/internal/l;->k()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/facebook/internal/m;->b()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 194
    invoke-static {v4}, Lcom/facebook/internal/m;->a(Z)Z

    .line 195
    invoke-static {}, Lcom/facebook/internal/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/m$1;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/facebook/internal/k;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 203
    invoke-static {}, Lcom/facebook/a/d/d;->a()V

    .line 206
    invoke-static {}, Lcom/facebook/a/d/g;->a()V

    .line 208
    invoke-static {}, Lcom/facebook/internal/m;->e()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-static {}, Lcom/facebook/internal/m;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/internal/m$1;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/internal/m$a;->c:Lcom/facebook/internal/m$a;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/facebook/internal/m;->f()V

    .line 210
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string/jumbo v3, "FacebookSDK"

    invoke-static {v3, v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v0

    goto :goto_0

    .line 208
    :cond_3
    sget-object v0, Lcom/facebook/internal/m$a;->d:Lcom/facebook/internal/m$a;

    goto :goto_1
.end method
