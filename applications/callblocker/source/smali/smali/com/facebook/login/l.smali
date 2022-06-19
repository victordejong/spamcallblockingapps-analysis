.class Lcom/facebook/login/l;
.super Ljava/lang/Object;
.source "LoginLogger.java"


# instance fields
.field private final a:Lcom/facebook/a/m;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/facebook/login/l;->b:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/facebook/a/m;

    invoke-direct {v0, p1, p2}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/login/l;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string/jumbo v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    const-string/jumbo v1, "0_auth_logger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "3_method"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "2_result"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "5_error_message"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "4_error_code"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "6_extras"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/login/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/facebook/login/j$c;)V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 118
    const-string/jumbo v2, "login_behavior"

    .line 119
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->b()Lcom/facebook/login/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/i;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v2, "request_code"

    invoke-static {}, Lcom/facebook/login/j;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v2, "permissions"

    const-string/jumbo v3, ","

    .line 122
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v2, "default_audience"

    .line 124
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->c()Lcom/facebook/login/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/b;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v2, "isReauthorize"

    invoke-virtual {p1}, Lcom/facebook/login/j$c;->f()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 126
    iget-object v2, p0, Lcom/facebook/login/l;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    const-string/jumbo v2, "facebookVersion"

    iget-object v3, p0, Lcom/facebook/login/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_0
    const-string/jumbo v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    const-string/jumbo v2, "fb_mobile_login_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 134
    return-void

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Lcom/facebook/login/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    const-string/jumbo v2, "fb_mobile_login_method_start"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/facebook/login/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 241
    const-string/jumbo v1, "2_result"

    sget-object v2, Lcom/facebook/login/j$d$a;->c:Lcom/facebook/login/j$d$a;

    .line 242
    invoke-virtual {v2}, Lcom/facebook/login/j$d$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "5_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p1}, Lcom/facebook/login/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 182
    if-eqz p3, :cond_0

    .line 183
    const-string/jumbo v1, "2_result"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    if-eqz p4, :cond_1

    .line 186
    const-string/jumbo v1, "5_error_message"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    if-eqz p5, :cond_2

    .line 189
    const-string/jumbo v1, "4_error_code"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_2
    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 193
    const-string/jumbo v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    const-string/jumbo v2, "fb_mobile_login_method_complete"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/j$d$a;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/j$d$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p1}, Lcom/facebook/login/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 140
    if-eqz p3, :cond_0

    .line 141
    const-string/jumbo v0, "2_result"

    invoke-virtual {p3}, Lcom/facebook/login/j$d$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    const-string/jumbo v0, "5_error_message"

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    const/4 v0, 0x0

    .line 149
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 152
    :cond_2
    if-eqz p4, :cond_3

    .line 153
    if-nez v0, :cond_6

    .line 154
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 157
    :goto_0
    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 163
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 164
    const-string/jumbo v1, "6_extras"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    const-string/jumbo v1, "fb_mobile_login_complete"

    invoke-virtual {v0, v1, v3}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    return-void

    :cond_5
    move-object v0, v2

    .line 161
    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    invoke-static {p1}, Lcom/facebook/login/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/facebook/login/l;->a:Lcom/facebook/a/m;

    const-string/jumbo v2, "fb_mobile_login_method_not_tried"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
