.class final Lcom/facebook/share/internal/a$l;
.super Lcom/facebook/share/internal/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/share/internal/a;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V
    .locals 3

    .line 1322
    iput-object p1, p0, Lcom/facebook/share/internal/a$l;->e:Lcom/facebook/share/internal/a;

    const/4 v0, 0x0

    .line 1323
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/share/internal/a$a;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1325
    iput-object p2, p0, Lcom/facebook/share/internal/a$l;->f:Ljava/lang/String;

    .line 1327
    new-instance p1, Lcom/facebook/GraphRequest;

    .line 1329
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lcom/facebook/k;->DELETE:Lcom/facebook/k;

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;)V

    .line 1327
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/a$l;->a(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    .line 1337
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1339
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/internal/a$l;->f:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "Error unliking object with unlike token \'%s\' : %s"

    .line 1337
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    iget-object v0, p0, Lcom/facebook/share/internal/a$l;->e:Lcom/facebook/share/internal/a;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method protected final a(Lcom/facebook/j;)V
    .locals 0

    return-void
.end method
