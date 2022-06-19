.class public Lvy;
.super Lzy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvy$c;,
        Lvy$d;,
        Lvy$b;,
        Lvy$f;,
        Lvy$e;,
        Lvy$a;
    }
.end annotation


# instance fields
.field public final k:Landroid/media/MediaRouter2;

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaRouter2$RoutingController;",
            "Lvy$c;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Landroid/media/MediaRouter2$RouteCallback;

.field public final n:Landroid/media/MediaRouter2$TransferCallback;

.field public final o:Landroid/media/MediaRouter2$ControllerCallback;

.field public final p:Landroid/os/Handler;

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MR2Provider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lvy$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzy;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lvy;->l:Ljava/util/Map;

    new-instance p2, Lvy$e;

    invoke-direct {p2, p0}, Lvy$e;-><init>(Lvy;)V

    iput-object p2, p0, Lvy;->m:Landroid/media/MediaRouter2$RouteCallback;

    new-instance p2, Lvy$f;

    invoke-direct {p2, p0}, Lvy$f;-><init>(Lvy;)V

    iput-object p2, p0, Lvy;->n:Landroid/media/MediaRouter2$TransferCallback;

    new-instance p2, Lvy$b;

    invoke-direct {p2, p0}, Lvy$b;-><init>(Lvy;)V

    iput-object p2, p0, Lvy;->o:Landroid/media/MediaRouter2$ControllerCallback;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lvy;->r:Ljava/util/List;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lvy;->s:Ljava/util/Map;

    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lvy;->p:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Luy;

    invoke-direct {p2, p1}, Luy;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lvy;->q:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static B(Lzy$e;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lvy$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lvy$c;

    iget-object p0, p0, Lvy$c;->g:Landroid/media/MediaRouter2$RoutingController;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public A(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lvy;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lvy;->A(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferTo: Specified route not found. routeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2Provider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->transferTo(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public final D(Lyy;Z)Lyy;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lyy;

    sget-object v0, Lcz;->c:Lcz;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lyy;-><init>(Lcz;Z)V

    :cond_0
    invoke-virtual {p1}, Lyy;->d()Lcz;

    move-result-object v0

    invoke-virtual {v0}, Lcz;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    if-eqz p2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    new-instance p2, Lcz$a;

    invoke-direct {p2}, Lcz$a;-><init>()V

    invoke-virtual {p2, v0}, Lcz$a;->a(Ljava/util/Collection;)Lcz$a;

    invoke-virtual {p2}, Lcz$a;->d()Lcz;

    move-result-object p2

    new-instance v0, Lyy;

    invoke-virtual {p1}, Lyy;->e()Z

    move-result p1

    invoke-direct {v0, p2, p1}, Lyy;-><init>(Lcz;Z)V

    return-object v0
.end method

.method public s(Ljava/lang/String;)Lzy$b;
    .locals 3

    iget-object v0, p0, Lvy;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvy$c;

    iget-object v2, v1, Lvy$c;->f:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Ljava/lang/String;)Lzy$e;
    .locals 2

    iget-object v0, p0, Lvy;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lvy$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lvy$d;-><init>(Lvy;Ljava/lang/String;Lvy$c;)V

    return-object v0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Lzy$e;
    .locals 4

    iget-object v0, p0, Lvy;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lvy;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvy$c;

    iget-object v3, v2, Lvy$c;->g:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lvy$d;

    invoke-direct {p1, p0, v0, v2}, Lvy$d;-><init>(Lvy;Ljava/lang/String;Lvy$c;)V

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the matching GroupRouteController. routeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", routeGroupId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MR2Provider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lvy$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lvy$d;-><init>(Lvy;Ljava/lang/String;Lvy$c;)V

    return-object p1
.end method

.method public v(Lyy;)V
    .locals 3

    invoke-static {}, Ldz;->f()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ldz;->n()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lvy;->D(Lyy;Z)Lyy;

    move-result-object p1

    iget-object v0, p0, Lvy;->k:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lvy;->q:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lvy;->m:Landroid/media/MediaRouter2$RouteCallback;

    invoke-static {p1}, Lez;->a(Lyy;)Landroid/media/RouteDiscoveryPreference;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    iget-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    iget-object v0, p0, Lvy;->q:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lvy;->n:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRouter2;->registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    iget-object v0, p0, Lvy;->q:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lvy;->o:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    iget-object v0, p0, Lvy;->m:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    iget-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    iget-object v0, p0, Lvy;->n:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object p1, p0, Lvy;->k:Landroid/media/MediaRouter2;

    iget-object v0, p0, Lvy;->o:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    :goto_0
    return-void
.end method
