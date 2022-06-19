.class public abstract Landroidx/mediarouter/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteProviderService$b;,
        Landroidx/mediarouter/media/MediaRouteProviderService$c;,
        Landroidx/mediarouter/media/MediaRouteProviderService$e;,
        Landroidx/mediarouter/media/MediaRouteProviderService$d;,
        Landroidx/mediarouter/media/MediaRouteProviderService$a;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouteProviderService$e;

.field public final b:Landroid/os/Messenger;

.field public final c:Landroidx/mediarouter/media/MediaRouteProviderService$d;

.field public final d:Lzy$a;

.field public f:Lzy;

.field public final g:Landroidx/mediarouter/media/MediaRouteProviderService$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/media/MediaRouteProviderService;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$e;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$e;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->a:Landroidx/mediarouter/media/MediaRouteProviderService$e;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->b:Landroid/os/Messenger;

    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$d;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$d;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->c:Landroidx/mediarouter/media/MediaRouteProviderService$d;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$b;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$b;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$c;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$c;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->g:Landroidx/mediarouter/media/MediaRouteProviderService$a;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->g:Landroidx/mediarouter/media/MediaRouteProviderService$a;

    invoke-interface {v0}, Landroidx/mediarouter/media/MediaRouteProviderService$a;->n()Lzy$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lzy$a;

    return-void
.end method

.method public static a(Laz;I)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Laz$a;

    invoke-direct {v1, p0}, Laz$a;-><init>(Laz;)V

    invoke-virtual {v1, v0}, Laz$a;->c(Ljava/util/Collection;)Laz$a;

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Laz$a;->d(Z)Laz$a;

    :cond_1
    invoke-virtual {p0}, Laz;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxy;

    invoke-virtual {v0}, Lxy;->o()I

    move-result v2

    if-lt p1, v2, :cond_2

    invoke-virtual {v0}, Lxy;->n()I

    move-result v2

    if-gt p1, v2, :cond_2

    invoke-virtual {v1, v0}, Laz$a;->a(Lxy;)Laz$a;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Laz$a;->b()Laz;

    move-result-object p0

    invoke-virtual {p0}, Laz;->a()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/os/Messenger;I)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Landroidx/mediarouter/media/MediaRouteProviderService;->h(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static g(Landroid/os/Messenger;I)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Landroidx/mediarouter/media/MediaRouteProviderService;->h(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static h(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not send message to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;->c(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaRouteProviderSrv"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_0
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->g:Landroidx/mediarouter/media/MediaRouteProviderService$a;

    invoke-interface {v0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$a;->d(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:Lzy;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;->e()Lzy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzy;->r()Lzy$d;

    move-result-object v1

    invoke-virtual {v1}, Lzy$d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:Lzy;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lzy$a;

    invoke-virtual {v0, v1}, Lzy;->w(Lzy$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".  Service package name: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lzy;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:Lzy;

    return-object v0
.end method

.method public abstract e()Lzy;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->g:Landroidx/mediarouter/media/MediaRouteProviderService$a;

    invoke-interface {v0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$a;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:Lzy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzy;->w(Lzy$a;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
