.class public Lno0$x;
.super Lno0$m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "x"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public final synthetic f:Lno0;


# direct methods
.method public constructor <init>(Lno0;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lno0$x;->f:Lno0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lno0$m;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    iput-object p2, p0, Lno0$x;->e:Ljava/lang/String;

    new-instance p1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lbj0;->c:Lbj0;

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;)V

    invoke-virtual {p0, p1}, Lno0$m;->f(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    sget-object v0, Ldj0;->a:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lno0$x;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "Error unliking object with unlike token \'%s\' : %s"

    invoke-static {v0, v1, v3, v2}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lno0$x;->f:Lno0;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lno0;->t(Lno0;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public e(Laj0;)V
    .locals 0

    return-void
.end method
