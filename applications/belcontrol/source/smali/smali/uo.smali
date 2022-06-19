.class public abstract Luo;
.super Lpo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luo$a;,
        Luo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpo;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Luo$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/os/Handler;

.field public j:Lht;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lpo;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luo;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public k(Lht;)V
    .locals 0

    iput-object p1, p0, Luo;->j:Lht;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Luo;->h:Landroid/os/Handler;

    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Luo;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luo$b;

    iget-object v2, v1, Luo$b;->a:Lhp;

    iget-object v3, v1, Luo$b;->b:Lhp$b;

    invoke-interface {v2, v3}, Lhp;->a(Lhp$b;)V

    iget-object v2, v1, Luo$b;->a:Lhp;

    iget-object v1, v1, Luo$b;->c:Lqp;

    invoke-interface {v2, v1}, Lhp;->d(Lqp;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Luo;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2

    iget-object v0, p0, Luo;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luo$b;

    iget-object v1, v1, Luo$b;->a:Lhp;

    invoke-interface {v1}, Lhp;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Object;Lhp$a;)Lhp$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhp$a;",
            ")",
            "Lhp$a;"
        }
    .end annotation

    return-object p2
.end method

.method public o(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method public p(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method public final synthetic q(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Luo;->r(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract r(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhp;",
            "Lph;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public final s(Ljava/lang/Object;Lhp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhp;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Luo;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lit;->a(Z)V

    new-instance v0, Lto;

    invoke-direct {v0, p0, p1}, Lto;-><init>(Luo;Ljava/lang/Object;)V

    new-instance v1, Luo$a;

    invoke-direct {v1, p0, p1}, Luo$a;-><init>(Luo;Ljava/lang/Object;)V

    iget-object v2, p0, Luo;->g:Ljava/util/HashMap;

    new-instance v3, Luo$b;

    invoke-direct {v3, p2, v0, v1}, Luo$b;-><init>(Lhp;Lhp$b;Lqp;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Luo;->h:Landroid/os/Handler;

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v1}, Lhp;->f(Landroid/os/Handler;Lqp;)V

    iget-object p1, p0, Luo;->j:Lht;

    invoke-interface {p2, v0, p1}, Lhp;->h(Lhp$b;Lht;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Luo;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luo$b;

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Luo$b;

    iget-object v0, p1, Luo$b;->a:Lhp;

    iget-object v1, p1, Luo$b;->b:Lhp$b;

    invoke-interface {v0, v1}, Lhp;->a(Lhp$b;)V

    iget-object v0, p1, Luo$b;->a:Lhp;

    iget-object p1, p1, Luo$b;->c:Lqp;

    invoke-interface {v0, p1}, Lhp;->d(Lqp;)V

    return-void
.end method
