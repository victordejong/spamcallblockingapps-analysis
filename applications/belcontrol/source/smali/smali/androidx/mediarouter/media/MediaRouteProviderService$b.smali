.class public Landroidx/mediarouter/media/MediaRouteProviderService$b;
.super Landroidx/mediarouter/media/MediaRouteProviderService$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteProviderService$b$a;
    }
.end annotation


# instance fields
.field public e:Lwy;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$c;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderService;->b()V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    if-nez v0, :cond_0

    new-instance v0, Lwy;

    invoke-direct {v0, p0}, Lwy;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService$b;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$c;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-virtual {v0, v1}, Lwy;->b(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$c;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    invoke-virtual {v0, p1}, Lwy;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lwy;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public s(Landroid/os/Messenger;ILjava/lang/String;)Landroidx/mediarouter/media/MediaRouteProviderService$c$b;
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$b$a;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService$b;Landroid/os/Messenger;ILjava/lang/String;)V

    return-object v0
.end method

.method public w(Laz;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$c;->w(Laz;)V

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$b;->e:Lwy;

    invoke-virtual {v0, p1}, Lwy;->q(Laz;)V

    return-void
.end method
