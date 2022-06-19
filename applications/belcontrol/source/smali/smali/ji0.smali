.class public Lji0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lji0$a;

.field public c:Lcj0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lji0$a;

    invoke-direct {v1}, Lji0$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lji0;-><init>(Landroid/content/SharedPreferences;Lji0$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lji0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji0;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lji0;->b:Lji0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lji0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lji0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lji0;->d()Lcj0;

    move-result-object v0

    invoke-virtual {v0}, Lcj0;->a()V

    :cond_0
    return-void
.end method

.method public final b()Lcom/facebook/AccessToken;
    .locals 3

    iget-object v0, p0, Lji0;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/AccessToken;->c(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v2
.end method

.method public final c()Lcom/facebook/AccessToken;
    .locals 2

    invoke-virtual {p0}, Lji0;->d()Lcj0;

    move-result-object v0

    invoke-virtual {v0}, Lcj0;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcj0;->g(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/facebook/AccessToken;->d(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Lcj0;
    .locals 1

    iget-object v0, p0, Lji0;->c:Lcj0;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lji0;->c:Lcj0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lji0;->b:Lji0$a;

    invoke-virtual {v0}, Lji0$a;->a()Lcj0;

    move-result-object v0

    iput-object v0, p0, Lji0;->c:Lcj0;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lji0;->c:Lcj0;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lji0;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/facebook/AccessToken;
    .locals 2

    invoke-virtual {p0}, Lji0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lji0;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lji0;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lji0;->c()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lji0;->g(Lcom/facebook/AccessToken;)V

    invoke-virtual {p0}, Lji0;->d()Lcj0;

    move-result-object v1

    invoke-virtual {v1}, Lcj0;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public g(Lcom/facebook/AccessToken;)V
    .locals 2

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->v()Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lji0;->a:Landroid/content/SharedPreferences;

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

.method public final h()Z
    .locals 1

    invoke-static {}, Lui0;->y()Z

    move-result v0

    return v0
.end method
