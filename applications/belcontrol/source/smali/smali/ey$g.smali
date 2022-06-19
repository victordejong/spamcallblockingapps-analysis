.class public final Ley$g;
.super Ldz$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Ley;


# direct methods
.method public constructor <init>(Ley;)V
    .locals 0

    iput-object p1, p0, Ley$g;->a:Ley;

    invoke-direct {p0}, Ldz$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->o()V

    return-void
.end method

.method public e(Ldz;Ldz$i;)V
    .locals 1

    iget-object p1, p0, Ley$g;->a:Ley;

    iget-object p1, p1, Ley;->d:Ldz$i;

    if-ne p2, p1, :cond_2

    invoke-virtual {p2}, Ldz$i;->g()Lzy$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ldz$i;->p()Ldz$h;

    move-result-object p1

    invoke-virtual {p1}, Ldz$h;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldz$i;

    iget-object v0, p0, Ley$g;->a:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ley$g;->a:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0, p2}, Ldz$i;->h(Ldz$i;)Ldz$i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldz$i$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ley$g;->a:Ley;

    iget-object v0, v0, Ley;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->p()V

    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->n()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->o()V

    :goto_2
    return-void
.end method

.method public g(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->o()V

    return-void
.end method

.method public h(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ley$g;->a:Ley;

    iput-object p2, p1, Ley;->d:Ldz$i;

    const/4 p2, 0x0

    iput-boolean p2, p1, Ley;->v:Z

    invoke-virtual {p1}, Ley;->p()V

    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->n()V

    return-void
.end method

.method public k(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ley$g;->a:Ley;

    invoke-virtual {p1}, Ley;->o()V

    return-void
.end method

.method public m(Ldz;Ldz$i;)V
    .locals 2

    invoke-virtual {p2}, Ldz$i;->r()I

    move-result p1

    sget-boolean v0, Ley;->Q:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteVolumeChanged(), route.getVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteCtrlDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Ley$g;->a:Ley;

    iget-object v0, p1, Ley;->t:Ldz$i;

    if-eq v0, p2, :cond_1

    iget-object p1, p1, Ley;->s:Ljava/util/Map;

    invoke-virtual {p2}, Ldz$i;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ley$f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ley$f;->e()V

    :cond_1
    return-void
.end method
