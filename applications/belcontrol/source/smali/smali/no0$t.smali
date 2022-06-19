.class public Lno0$t;
.super Lno0$m;
.source ""

# interfaces
.implements Lno0$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field public final synthetic g:Lno0;


# direct methods
.method public constructor <init>(Lno0;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lno0$t;->g:Lno0;

    sget-object v0, Lcom/facebook/share/widget/LikeView$g;->f:Lcom/facebook/share/widget/LikeView$g;

    invoke-direct {p0, p1, p2, v0}, Lno0$m;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    invoke-static {p1}, Lno0;->u(Lno0;)Z

    move-result p1

    iput-boolean p1, p0, Lno0$t;->e:Z

    iput-object p2, p0, Lno0$t;->f:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "me/likes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lbj0;->a:Lbj0;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;)V

    invoke-virtual {p0, v0}, Lno0$m;->f(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lno0$t;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    sget-object v0, Ldj0;->a:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lno0$t;->f:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "Error fetching like status for page id \'%s\': %s"

    invoke-static {v0, v1, v3, v2}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lno0$t;->g:Lno0;

    const-string v1, "get_page_like"

    invoke-static {v0, v1, p1}, Lno0;->t(Lno0;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public e(Laj0;)V
    .locals 1

    invoke-virtual {p1}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "data"

    invoke-static {p1, v0}, Lfn0;->u0(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lno0$t;->e:Z

    :cond_0
    return-void
.end method
