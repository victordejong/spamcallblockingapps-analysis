.class final Lcom/facebook/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/facebook/a$a;

.field private c:Lcom/facebook/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/facebook/a$a;

    invoke-direct {v1}, Lcom/facebook/a$a;-><init>()V

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/facebook/a;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/a$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/a$a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    .line 41
    iput-object p2, p0, Lcom/facebook/a;->b:Lcom/facebook/a$a;

    return-void
.end method

.method private c()Lcom/facebook/AccessToken;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v1}, Lcom/facebook/AccessToken;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v2
.end method

.method private d()Lcom/facebook/l;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/l;

    if-nez v0, :cond_1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/l;

    if-nez v0, :cond_0

    .line 2132
    new-instance v0, Lcom/facebook/l;

    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/l;-><init>(Landroid/content/Context;)V

    .line 123
    iput-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/l;

    .line 125
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/l;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/AccessToken;
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/facebook/a;->c()Lcom/facebook/AccessToken;

    move-result-object v1

    goto :goto_0

    .line 1106
    :cond_0
    invoke-static {}, Lcom/facebook/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    invoke-direct {p0}, Lcom/facebook/a;->d()Lcom/facebook/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/l;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    invoke-static {v0}, Lcom/facebook/AccessToken;->createFromLegacyCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0, v1}, Lcom/facebook/a;->a(Lcom/facebook/AccessToken;)V

    .line 62
    invoke-direct {p0}, Lcom/facebook/a;->d()Lcom/facebook/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/l;->b()V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final a(Lcom/facebook/AccessToken;)V
    .locals 2

    const-string v0, "accessToken"

    .line 70
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2106
    invoke-static {}, Lcom/facebook/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/facebook/a;->d()Lcom/facebook/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/l;->b()V

    :cond_0
    return-void
.end method
