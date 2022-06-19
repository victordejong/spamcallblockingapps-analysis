.class public Lvd0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field public a:Lnd0;

.field public b:Lnd0;

.field public c:Lnd0;

.field public d:Lnd0;

.field public e:Lpd0;

.field public f:Lpd0;

.field public g:Lpd0;

.field public h:Lpd0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lrd0;->a()Lnd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->q(Lnd0;)V

    invoke-static {}, Lrd0;->a()Lnd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->r(Lnd0;)V

    invoke-static {}, Lrd0;->a()Lnd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->m(Lnd0;)V

    invoke-static {}, Lrd0;->a()Lnd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->l(Lnd0;)V

    invoke-static {}, Lrd0;->b()Lpd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->p(Lpd0;)V

    invoke-static {}, Lrd0;->b()Lpd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->o(Lpd0;)V

    invoke-static {}, Lrd0;->b()Lpd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->k(Lpd0;)V

    invoke-static {}, Lrd0;->b()Lpd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvd0;->n(Lpd0;)V

    return-void
.end method

.method public constructor <init>(Lvd0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lvd0;->g()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->a:Lnd0;

    invoke-virtual {p1}, Lvd0;->h()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->b:Lnd0;

    invoke-virtual {p1}, Lvd0;->c()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->c:Lnd0;

    invoke-virtual {p1}, Lvd0;->b()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->d:Lnd0;

    invoke-virtual {p1}, Lvd0;->f()Lpd0;

    move-result-object v0

    invoke-virtual {v0}, Lpd0;->b()Lpd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->e:Lpd0;

    invoke-virtual {p1}, Lvd0;->e()Lpd0;

    move-result-object v0

    invoke-virtual {v0}, Lpd0;->b()Lpd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->f:Lpd0;

    invoke-virtual {p1}, Lvd0;->d()Lpd0;

    move-result-object v0

    invoke-virtual {v0}, Lpd0;->b()Lpd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->h:Lpd0;

    invoke-virtual {p1}, Lvd0;->a()Lpd0;

    move-result-object p1

    invoke-virtual {p1}, Lpd0;->b()Lpd0;

    move-result-object p1

    iput-object p1, p0, Lvd0;->g:Lpd0;

    return-void
.end method


# virtual methods
.method public a()Lpd0;
    .locals 1

    iget-object v0, p0, Lvd0;->g:Lpd0;

    return-object v0
.end method

.method public b()Lnd0;
    .locals 1

    iget-object v0, p0, Lvd0;->d:Lnd0;

    return-object v0
.end method

.method public c()Lnd0;
    .locals 1

    iget-object v0, p0, Lvd0;->c:Lnd0;

    return-object v0
.end method

.method public d()Lpd0;
    .locals 1

    iget-object v0, p0, Lvd0;->h:Lpd0;

    return-object v0
.end method

.method public e()Lpd0;
    .locals 1

    iget-object v0, p0, Lvd0;->f:Lpd0;

    return-object v0
.end method

.method public f()Lpd0;
    .locals 1

    iget-object v0, p0, Lvd0;->e:Lpd0;

    return-object v0
.end method

.method public g()Lnd0;
    .locals 1

    iget-object v0, p0, Lvd0;->a:Lnd0;

    return-object v0
.end method

.method public h()Lnd0;
    .locals 1

    iget-object v0, p0, Lvd0;->b:Lnd0;

    return-object v0
.end method

.method public i()Z
    .locals 5

    iget-object v0, p0, Lvd0;->h:Lpd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lpd0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvd0;->f:Lpd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lpd0;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvd0;->e:Lpd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lpd0;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvd0;->g:Lpd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lpd0;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lvd0;->a:Lnd0;

    invoke-virtual {v3}, Lnd0;->d()F

    move-result v3

    iget-object v4, p0, Lvd0;->b:Lnd0;

    invoke-virtual {v4}, Lnd0;->d()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lvd0;->d:Lnd0;

    invoke-virtual {v4}, Lnd0;->d()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lvd0;->c:Lnd0;

    invoke-virtual {v4}, Lnd0;->d()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lvd0;->b:Lnd0;

    instance-of v4, v4, Lsd0;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lvd0;->a:Lnd0;

    instance-of v4, v4, Lsd0;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lvd0;->c:Lnd0;

    instance-of v4, v4, Lsd0;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lvd0;->d:Lnd0;

    instance-of v4, v4, Lsd0;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public j(Lnd0;)V
    .locals 1

    invoke-virtual {p1}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->a:Lnd0;

    invoke-virtual {p1}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->b:Lnd0;

    invoke-virtual {p1}, Lnd0;->b()Lnd0;

    move-result-object v0

    iput-object v0, p0, Lvd0;->c:Lnd0;

    invoke-virtual {p1}, Lnd0;->b()Lnd0;

    move-result-object p1

    iput-object p1, p0, Lvd0;->d:Lnd0;

    return-void
.end method

.method public k(Lpd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->g:Lpd0;

    return-void
.end method

.method public l(Lnd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->d:Lnd0;

    return-void
.end method

.method public m(Lnd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->c:Lnd0;

    return-void
.end method

.method public n(Lpd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->h:Lpd0;

    return-void
.end method

.method public o(Lpd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->f:Lpd0;

    return-void
.end method

.method public p(Lpd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->e:Lpd0;

    return-void
.end method

.method public q(Lnd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->a:Lnd0;

    return-void
.end method

.method public r(Lnd0;)V
    .locals 0

    iput-object p1, p0, Lvd0;->b:Lnd0;

    return-void
.end method
