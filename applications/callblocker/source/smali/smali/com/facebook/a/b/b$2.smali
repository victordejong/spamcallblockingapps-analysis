.class final Lcom/facebook/a/b/b$2;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/b;->c(Ljava/lang/String;)V
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

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/a/b/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 148
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s/app_indexing_session"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/a/b/b$2;->a:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 150
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v8, v0, v8, v8}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lcom/facebook/k;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    :cond_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/facebook/internal/a;->b(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v5

    .line 163
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 164
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {v5}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    :goto_1
    const-string/jumbo v1, "0"

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 171
    invoke-static {}, Lcom/facebook/a/d/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "1"

    :goto_2
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    invoke-static {}, Lcom/facebook/internal/x;->c()Ljava/util/Locale;

    move-result-object v1

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 175
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string/jumbo v5, "device_session_id"

    .line 177
    invoke-static {}, Lcom/facebook/a/b/b;->c()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v5, "extinfo"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {v4}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_5

    const-string/jumbo v1, "is_app_indexing_enabled"

    .line 184
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 183
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/b;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 185
    invoke-static {}, Lcom/facebook/a/b/b;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 186
    invoke-static {v8}, Lcom/facebook/a/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    :cond_1
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/b;->c(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 194
    return-void

    .line 164
    :cond_2
    const-string/jumbo v1, ""

    goto/16 :goto_0

    .line 168
    :cond_3
    const-string/jumbo v1, ""

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 171
    :cond_4
    const-string/jumbo v1, "0"

    goto/16 :goto_2

    :cond_5
    move v0, v3

    .line 184
    goto :goto_3

    .line 188
    :cond_6
    invoke-static {}, Lcom/facebook/a/b/b;->f()Lcom/facebook/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Lcom/facebook/a/b/b;->f()Lcom/facebook/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b/e;->a()V

    goto :goto_4
.end method
