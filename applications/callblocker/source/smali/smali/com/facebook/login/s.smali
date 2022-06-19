.class abstract Lcom/facebook/login/s;
.super Lcom/facebook/login/n;
.source "WebLoginMethodHandler.java"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Lcom/facebook/login/j;)V

    .line 56
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "TOKEN"

    .line 212
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "TOKEN"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Lcom/facebook/login/j$c;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 115
    const-string/jumbo v0, "redirect_uri"

    invoke-virtual {p0}, Lcom/facebook/login/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "client_id"

    invoke-virtual {p2}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "e2e"

    iget-object v1, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-static {}, Lcom/facebook/login/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "response_type"

    const-string/jumbo v1, "token,signed_request,graph_domain"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "return_scopes"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "auth_type"

    .line 126
    invoke-virtual {p2}, Lcom/facebook/login/j$c;->i()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "sdk"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "android-%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 129
    invoke-static {}, Lcom/facebook/j;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/login/s;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "sso"

    invoke-virtual {p0}, Lcom/facebook/login/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-object p1
.end method

.method protected a(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-object v2, p0, Lcom/facebook/login/s;->c:Ljava/lang/String;

    .line 140
    if-eqz p2, :cond_2

    .line 142
    const-string/jumbo v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/s;->c:Ljava/lang/String;

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/facebook/login/s;->d_()Lcom/facebook/d;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v0, p2, v1, v3}, Lcom/facebook/login/s;->a(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/d;Ljava/lang/String;)Lcom/facebook/a;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    .line 153
    invoke-virtual {v0}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v0

    .line 152
    invoke-static {v0, v1}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 159
    iget-object v3, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    .line 160
    invoke-virtual {v3}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 162
    invoke-virtual {v1}, Lcom/facebook/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/login/s;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/facebook/login/s;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/facebook/login/s;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/login/s;->b(Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->a(Lcom/facebook/login/j$d;)V

    .line 196
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    .line 165
    invoke-virtual {v1}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v1

    .line 167
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v1, v2, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_2
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v0

    const-string/jumbo v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_3
    iput-object v2, p0, Lcom/facebook/login/s;->c:Ljava/lang/String;

    .line 179
    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 180
    instance-of v1, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v1, :cond_4

    .line 181
    check-cast p3, Lcom/facebook/FacebookServiceException;

    .line 182
    invoke-virtual {p3}, Lcom/facebook/FacebookServiceException;->a()Lcom/facebook/i;

    move-result-object v0

    .line 183
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/facebook/i;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Lcom/facebook/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_1
    iget-object v3, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-virtual {v3}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method protected b(Lcom/facebook/login/j$c;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, ","

    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string/jumbo v2, "scope"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v2, "scope"

    invoke-virtual {p0, v2, v0}, Lcom/facebook/login/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->c()Lcom/facebook/login/b;

    move-result-object v0

    .line 77
    const-string/jumbo v2, "default_audience"

    .line 78
    invoke-virtual {v0}, Lcom/facebook/login/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "state"

    .line 80
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/login/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/facebook/login/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "access_token"

    const-string/jumbo v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/login/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :goto_1
    const-string/jumbo v0, "cbt"

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "ies"

    .line 107
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "1"

    .line 105
    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v1

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/s;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->b(Landroid/content/Context;)V

    .line 97
    const-string/jumbo v0, "access_token"

    const-string/jumbo v2, "0"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/login/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_3
    const-string/jumbo v0, "0"

    goto :goto_2
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract d_()Lcom/facebook/d;
.end method
