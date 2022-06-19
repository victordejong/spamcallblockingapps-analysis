.class Lcom/facebook/c$3;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c;->b(Lcom/facebook/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c$a;

.field final synthetic b:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;Lcom/facebook/c$a;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/c$3;->b:Lcom/facebook/c;

    iput-object p2, p0, Lcom/facebook/c$3;->a:Lcom/facebook/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .locals 4

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/facebook/c$3;->a:Lcom/facebook/c$a;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/c$a;->a:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/facebook/c$3;->a:Lcom/facebook/c$a;

    const-string/jumbo v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/facebook/c$a;->b:I

    .line 321
    iget-object v1, p0, Lcom/facebook/c$3;->a:Lcom/facebook/c$a;

    const-string/jumbo v2, "data_access_expiration_time"

    .line 322
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/c$a;->c:Ljava/lang/Long;

    .line 323
    iget-object v1, p0, Lcom/facebook/c$3;->a:Lcom/facebook/c$a;

    const-string/jumbo v2, "graph_domain"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/c$a;->d:Ljava/lang/String;

    goto :goto_0
.end method
