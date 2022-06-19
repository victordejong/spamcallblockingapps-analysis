.class Lcom/facebook/c/a/a$2;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/a/a;->au()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/c/a/a;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/facebook/c/a/a$2;->a:Lcom/facebook/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 5

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/facebook/c/a/a$2;->a:Lcom/facebook/c/a/a;

    invoke-static {v1, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/a;Lcom/facebook/i;)V

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/facebook/c/a/a$a;

    invoke-direct {v1}, Lcom/facebook/c/a/a$a;-><init>()V

    .line 209
    :try_start_0
    const-string/jumbo v2, "user_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/c/a/a$a;->a(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "expires_in"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/c/a/a$a;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    iget-object v0, p0, Lcom/facebook/c/a/a$2;->a:Lcom/facebook/c/a/a;

    invoke-static {v0, v1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/a;Lcom/facebook/c/a/a$a;)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    iget-object v0, p0, Lcom/facebook/c/a/a$2;->a:Lcom/facebook/c/a/a;

    new-instance v1, Lcom/facebook/i;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Malformed server response"

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/i;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/a;Lcom/facebook/i;)V

    goto :goto_0
.end method
