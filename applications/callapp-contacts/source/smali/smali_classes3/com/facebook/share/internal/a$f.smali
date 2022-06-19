.class final Lcom/facebook/share/internal/a$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/share/internal/a;

.field private f:Z

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/facebook/share/widget/LikeView$e;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 2

    .line 1412
    iput-object p1, p0, Lcom/facebook/share/internal/a$f;->e:Lcom/facebook/share/internal/a;

    .line 1413
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/a$a;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1407
    invoke-static {p1}, Lcom/facebook/share/internal/a;->l(Lcom/facebook/share/internal/a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/share/internal/a$f;->f:Z

    .line 1414
    iput-object p2, p0, Lcom/facebook/share/internal/a$f;->h:Ljava/lang/String;

    .line 1415
    iput-object p3, p0, Lcom/facebook/share/internal/a$f;->i:Lcom/facebook/share/widget/LikeView$e;

    .line 1417
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "fields"

    const-string v0, "id,application"

    .line 1418
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "object"

    .line 1419
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance p2, Lcom/facebook/GraphRequest;

    .line 1423
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    sget-object v0, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const-string v1, "me/og.likes"

    invoke-direct {p2, p3, v1, p1, v0}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;)V

    .line 1421
    invoke-virtual {p0, p2}, Lcom/facebook/share/internal/a$f;->a(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    .line 1449
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1451
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/internal/a$f;->h:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/share/internal/a$f;->i:Lcom/facebook/share/widget/LikeView$e;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string v3, "Error fetching like status for object \'%s\' with type \'%s\' : %s"

    .line 1449
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1456
    iget-object v0, p0, Lcom/facebook/share/internal/a$f;->e:Lcom/facebook/share/internal/a;

    const-string v1, "get_og_object_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method protected final a(Lcom/facebook/j;)V
    .locals 5

    .line 2121
    iget-object p1, p1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v0, "data"

    .line 1428
    invoke-static {p1, v0}, Lcom/facebook/internal/ae;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1430
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1431
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1433
    iput-boolean v2, p0, Lcom/facebook/share/internal/a$f;->f:Z

    const-string v2, "application"

    .line 1434
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1435
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 1437
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1439
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    invoke-static {v3, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1440
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/a$f;->g:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1461
    iget-boolean v0, p0, Lcom/facebook/share/internal/a$f;->f:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/facebook/share/internal/a$f;->g:Ljava/lang/String;

    return-object v0
.end method
