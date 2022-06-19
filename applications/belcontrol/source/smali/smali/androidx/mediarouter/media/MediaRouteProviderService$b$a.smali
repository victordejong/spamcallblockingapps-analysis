.class public Landroidx/mediarouter/media/MediaRouteProviderService$b$a;
.super Landroidx/mediarouter/media/MediaRouteProviderService$c$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzy$e;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/os/Handler;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Landroidx/mediarouter/media/MediaRouteProviderService$b;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService$b;Landroid/os/Messenger;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k:Landroidx/mediarouter/media/MediaRouteProviderService$b;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService$c;Landroid/os/Messenger;ILjava/lang/String;)V

    new-instance p1, Lb4;

    invoke-direct {p1}, Lb4;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h:Ljava/util/Map;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->i:Landroid/os/Handler;

    const/4 p1, 0x4

    if-ge p3, p1, :cond_0

    new-instance p1, Lb4;

    invoke-direct {p1}, Lb4;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->j:Ljava/util/Map;

    return-void
.end method

.method private synthetic o(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->l(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Laz;)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->a(Laz;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Laz;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxy;

    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->j:Ljava/util/Map;

    invoke-virtual {v2}, Lxy;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lxy$a;

    invoke-direct {v3, v2}, Lxy$a;-><init>(Lxy;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lxy$a;->g(Z)Lxy$a;

    invoke-virtual {v3}, Lxy$a;->c()Lxy;

    move-result-object v2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Laz$a;

    invoke-direct {v1, p1}, Laz$a;-><init>(Laz;)V

    invoke-virtual {v1, v0}, Laz$a;->c(Ljava/util/Collection;)Laz$a;

    invoke-virtual {v1}, Laz$a;->b()Laz;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->a(Laz;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8

    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->b(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k:Landroidx/mediarouter/media/MediaRouteProviderService$b;

    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lzy$e;

    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->c:Ljava/lang/String;

    move-object v3, p0

    move v5, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lwy;->l(Landroidx/mediarouter/media/MediaRouteProviderService$b$a;Lzy$e;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$e;

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k:Landroidx/mediarouter/media/MediaRouteProviderService$b;

    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lzy$e;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->c:Ljava/lang/String;

    move-object v2, p0

    move v4, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lwy;->l(Landroidx/mediarouter/media/MediaRouteProviderService$b$a;Lzy$e;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h:Ljava/util/Map;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzy$e;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public h(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k:Landroidx/mediarouter/media/MediaRouteProviderService$b;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    invoke-virtual {v0, p1}, Lwy;->m(I)V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->l(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->h(I)Z

    move-result p1

    return p1
.end method

.method public i(Lzy$b;Lxy;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$b;",
            "Lxy;",
            "Ljava/util/Collection<",
            "Lzy$b$c;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->i(Lzy$b;Lxy;Ljava/util/Collection;)V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k:Landroidx/mediarouter/media/MediaRouteProviderService$b;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lwy;->p(Lzy$b;Lxy;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->i:Landroid/os/Handler;

    new-instance v0, Lly;

    invoke-direct {v0, p0, p1}, Lly;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService$b$a;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->r()V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->r()V

    return-void
.end method

.method public m(Ljava/lang/String;)Lzy$e;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$e;

    return-object p1
.end method

.method public n(Lzy$e;)I
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public synthetic p(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public q(Lzy$e;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->n(Lzy$e;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->h(I)Z

    iget p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->b:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    if-gez v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "releaseControllerByProvider: Can\'t find the controller. route ID="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouteProviderSrv"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->a:Landroid/os/Messenger;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/mediarouter/media/MediaRouteProviderService;->h(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v3}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public r()V
    .locals 7

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->k:Landroidx/mediarouter/media/MediaRouteProviderService$b;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderService$c;->v()Landroidx/mediarouter/media/MediaRouteProviderService;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderService;->d()Lzy;

    move-result-object v0

    invoke-virtual {v0}, Lzy;->o()Laz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c$b;->a:Landroid/os/Messenger;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;->a(Laz;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->h(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
