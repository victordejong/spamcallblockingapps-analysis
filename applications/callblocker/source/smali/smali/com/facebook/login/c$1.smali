.class Lcom/facebook/login/c$1;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->a(Lcom/facebook/login/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/login/c;

    invoke-static {v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/login/c;

    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/i;->f()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/c;->a(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/facebook/login/c$a;

    invoke-direct {v1}, Lcom/facebook/login/c$a;-><init>()V

    .line 204
    :try_start_0
    const-string/jumbo v2, "user_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/c$a;->a(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/c$a;->b(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/c$a;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object v0, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/login/c;

    invoke-static {v0, v1}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;Lcom/facebook/login/c$a;)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    iget-object v1, p0, Lcom/facebook/login/c$1;->a:Lcom/facebook/login/c;

    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/login/c;->a(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method
