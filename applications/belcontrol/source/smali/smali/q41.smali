.class public Lq41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq31;
.implements Lm41$b;


# static fields
.field public static f:Lq41;


# instance fields
.field public a:F

.field public final b:Ls31;

.field public final c:Lp31;

.field public d:Lr31;

.field public e:Ll41;


# direct methods
.method public constructor <init>(Ls31;Lp31;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lq41;->a:F

    iput-object p1, p0, Lq41;->b:Ls31;

    iput-object p2, p0, Lq41;->c:Lp31;

    return-void
.end method

.method public static c()Lq41;
    .locals 3

    sget-object v0, Lq41;->f:Lq41;

    if-nez v0, :cond_0

    new-instance v0, Lp31;

    invoke-direct {v0}, Lp31;-><init>()V

    new-instance v1, Ls31;

    invoke-direct {v1}, Ls31;-><init>()V

    new-instance v2, Lq41;

    invoke-direct {v2, v1, v0}, Lq41;-><init>(Ls31;Lp31;)V

    sput-object v2, Lq41;->f:Lq41;

    :cond_0
    sget-object v0, Lq41;->f:Lq41;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iput p1, p0, Lq41;->a:F

    invoke-virtual {p0}, Lq41;->h()Ll41;

    move-result-object v0

    invoke-virtual {v0}, Ll41;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf41;

    invoke-virtual {v1}, Lf41;->t()Lf51;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf51;->b(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Li51;->p()Li51;

    move-result-object p1

    invoke-virtual {p1}, Li51;->c()V

    goto :goto_0

    :cond_0
    invoke-static {}, Li51;->p()Li51;

    move-result-object p1

    invoke-virtual {p1}, Li51;->k()V

    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lq41;->c:Lp31;

    invoke-virtual {v0}, Lp31;->a()Lo31;

    move-result-object v0

    iget-object v1, p0, Lq41;->b:Ls31;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Ls31;->a(Landroid/os/Handler;Landroid/content/Context;Lo31;Lq31;)Lr31;

    move-result-object p1

    iput-object p1, p0, Lq41;->d:Lr31;

    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lm41;->a()Lm41;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm41;->c(Lm41$b;)V

    invoke-static {}, Lm41;->a()Lm41;

    move-result-object v0

    invoke-virtual {v0}, Lm41;->f()V

    invoke-static {}, Lm41;->a()Lm41;

    move-result-object v0

    invoke-virtual {v0}, Lm41;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li51;->p()Li51;

    move-result-object v0

    invoke-virtual {v0}, Li51;->c()V

    :cond_0
    iget-object v0, p0, Lq41;->d:Lr31;

    invoke-virtual {v0}, Lr31;->a()V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, Li51;->p()Li51;

    move-result-object v0

    invoke-virtual {v0}, Li51;->h()V

    invoke-static {}, Lm41;->a()Lm41;

    move-result-object v0

    invoke-virtual {v0}, Lm41;->g()V

    iget-object v0, p0, Lq41;->d:Lr31;

    invoke-virtual {v0}, Lr31;->c()V

    return-void
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lq41;->a:F

    return v0
.end method

.method public final h()Ll41;
    .locals 1

    iget-object v0, p0, Lq41;->e:Ll41;

    if-nez v0, :cond_0

    invoke-static {}, Ll41;->a()Ll41;

    move-result-object v0

    iput-object v0, p0, Lq41;->e:Ll41;

    :cond_0
    iget-object v0, p0, Lq41;->e:Ll41;

    return-object v0
.end method
