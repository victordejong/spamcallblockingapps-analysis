.class public Lxj0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lsj0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsj0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lsj0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lxj0;->a:Lsj0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsj0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lsj0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lxj0;->a:Lsj0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsj0;

    invoke-direct {v0, p1, p2, p3}, Lsj0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lxj0;->a:Lsj0;

    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lsj0;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lrj0$a;
    .locals 1

    invoke-static {}, Lsj0;->f()Lrj0$a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsj0;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lak0;->j(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0}, Lsj0;->c()V

    return-void
.end method

.method public e(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsj0;->l(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2}, Lsj0;->m(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2}, Lsj0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lsj0;->p(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lsj0;->p(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2, p3}, Lsj0;->p(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsj0;->q(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public l(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2, p3}, Lsj0;->s(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
