.class final Lcom/facebook/share/internal/a$k;
.super Lcom/facebook/share/internal/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field final synthetic f:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 2

    .line 1278
    iput-object p1, p0, Lcom/facebook/share/internal/a$k;->f:Lcom/facebook/share/internal/a;

    .line 1279
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/a$a;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1281
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "object"

    .line 1282
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    new-instance p2, Lcom/facebook/GraphRequest;

    .line 1286
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    sget-object v0, Lcom/facebook/k;->POST:Lcom/facebook/k;

    const-string v1, "me/og.likes"

    invoke-direct {p2, p3, v1, p1, v0}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;)V

    .line 1284
    invoke-virtual {p0, p2}, Lcom/facebook/share/internal/a$k;->a(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    .line 1299
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    const/16 v1, 0xdad

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 1305
    iput-object p1, p0, Lcom/facebook/share/internal/a$k;->c:Lcom/facebook/FacebookRequestError;

    return-void

    .line 1307
    :cond_0
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1309
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/a$k;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/share/internal/a$k;->b:Lcom/facebook/share/widget/LikeView$e;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string v3, "Error liking object \'%s\' with type \'%s\' : %s"

    .line 1307
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    iget-object v0, p0, Lcom/facebook/share/internal/a$k;->f:Lcom/facebook/share/internal/a;

    const-string v1, "publish_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method protected final a(Lcom/facebook/j;)V
    .locals 1

    .line 2121
    iget-object p1, p1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v0, "id"

    .line 1294
    invoke-static {p1, v0}, Lcom/facebook/internal/ae;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/a$k;->e:Ljava/lang/String;

    return-void
.end method
