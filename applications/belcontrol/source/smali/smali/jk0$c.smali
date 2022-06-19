.class public Ljk0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk0;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljk0;


# direct methods
.method public constructor <init>(Ljk0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljk0$c;->b:Ljk0;

    iput-object p2, p0, Ljk0$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "is_app_indexing_enabled"

    iget-object v1, p0, Ljk0$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lfn0;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v3, p0, Ljk0$c;->b:Ljk0;

    invoke-static {v3}, Ljk0;->g(Ljk0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Ljk0$c;->a:Ljava/lang/String;

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_indexing"

    invoke-static {v3, v2, v4, v5}, Ljk0;->i(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->g()Laj0;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "true"

    const-string v4, "success"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ldj0;->f:Ldj0;

    invoke-static {}, Ljk0;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Successfully send UI component tree to server"

    invoke-static {v2, v4, v5}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Ljk0$c;->b:Ljk0;

    invoke-static {v2, v1}, Ljk0;->h(Ljk0;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lgk0;->o(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljk0;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending UI component tree to Facebook: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljk0;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error decoding server response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method
