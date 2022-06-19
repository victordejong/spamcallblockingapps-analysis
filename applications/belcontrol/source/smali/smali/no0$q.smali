.class public Lno0$q;
.super Lno0$m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lno0$m;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "fields"

    const-string v0, "og_object.fields(id)"

    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "ids"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object p3

    sget-object v0, Lbj0;->a:Lbj0;

    const-string v1, ""

    invoke-direct {p2, p3, v1, p1, v0}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;)V

    invoke-virtual {p0, p2}, Lno0$m;->f(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "og_object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lno0$m;->d:Lcom/facebook/FacebookRequestError;

    goto :goto_0

    :cond_0
    sget-object v0, Ldj0;->a:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lno0$m;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lno0$m;->c:Lcom/facebook/share/widget/LikeView$g;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string p1, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    invoke-static {v0, v1, p1, v2}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e(Laj0;)V
    .locals 1

    invoke-virtual {p1}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lno0$m;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lfn0;->v0(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "og_object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lno0$q;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method
