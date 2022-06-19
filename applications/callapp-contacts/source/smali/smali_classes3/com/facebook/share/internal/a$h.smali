.class final Lcom/facebook/share/internal/a$h;
.super Lcom/facebook/share/internal/a$a;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/share/internal/a;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V
    .locals 3

    .line 1358
    iput-object p1, p0, Lcom/facebook/share/internal/a$h;->e:Lcom/facebook/share/internal/a;

    .line 1359
    sget-object v0, Lcom/facebook/share/widget/LikeView$e;->PAGE:Lcom/facebook/share/widget/LikeView$e;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/internal/a$a;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1355
    invoke-static {p1}, Lcom/facebook/share/internal/a;->l(Lcom/facebook/share/internal/a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/share/internal/a$h;->f:Z

    .line 1360
    iput-object p2, p0, Lcom/facebook/share/internal/a$h;->g:Ljava/lang/String;

    .line 1362
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id"

    .line 1363
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1367
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "me/likes/"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/facebook/k;->GET:Lcom/facebook/k;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;)V

    .line 1365
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/a$h;->a(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    .line 1383
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1385
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/internal/a$h;->g:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "Error fetching like status for page id \'%s\': %s"

    .line 1383
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lcom/facebook/share/internal/a$h;->e:Lcom/facebook/share/internal/a;

    const-string v1, "get_page_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method protected final a(Lcom/facebook/j;)V
    .locals 1

    .line 2121
    iget-object p1, p1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v0, "data"

    .line 1375
    invoke-static {p1, v0}, Lcom/facebook/internal/ae;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1376
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 1377
    iput-boolean p1, p0, Lcom/facebook/share/internal/a$h;->f:Z

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1394
    iget-boolean v0, p0, Lcom/facebook/share/internal/a$h;->f:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
