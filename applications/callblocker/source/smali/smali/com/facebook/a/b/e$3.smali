.class Lcom/facebook/a/b/e$3;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/a/b/e;


# direct methods
.method constructor <init>(Lcom/facebook/a/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/a/b/e$3;->b:Lcom/facebook/a/b/e;

    iput-object p2, p0, Lcom/facebook/a/b/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/a/b/e$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v1

    .line 193
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/facebook/a/b/e$3;->b:Lcom/facebook/a/b/e;

    invoke-static {v2}, Lcom/facebook/a/b/e;->d(Lcom/facebook/a/b/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/facebook/a/b/e$3;->a:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "app_indexing"

    .line 196
    invoke-static {v2, v1, v3, v4}, Lcom/facebook/a/b/e;->a(Ljava/lang/String;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/k;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v1

    .line 201
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_3

    .line 203
    const-string/jumbo v1, "true"

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    sget-object v1, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Successfully send UI component tree to server"

    invoke-static {v1, v3, v4}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/facebook/a/b/e$3;->b:Lcom/facebook/a/b/e;

    invoke-static {v1, v0}, Lcom/facebook/a/b/e;->b(Lcom/facebook/a/b/e;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_2
    const-string/jumbo v0, "is_app_indexing_enabled"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "is_app_indexing_enabled"

    .line 211
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/facebook/a/b/b;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error decoding server response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error sending UI component tree to Facebook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
