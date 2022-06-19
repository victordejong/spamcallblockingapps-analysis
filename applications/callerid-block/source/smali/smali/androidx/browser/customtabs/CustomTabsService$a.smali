.class Landroidx/browser/customtabs/CustomTabsService$a;
.super Lc/b/a/b$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    invoke-direct {p0}, Lc/b/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public L1(Lc/b/a/a;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/f;

    invoke-direct {v1, p1}, Landroidx/browser/customtabs/f;-><init>(Lc/b/a/a;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->e(Landroidx/browser/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public Y3(Lc/b/a/a;Landroid/net/Uri;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/f;

    invoke-direct {v1, p1}, Landroidx/browser/customtabs/f;-><init>(Lc/b/a/a;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->f(Landroidx/browser/customtabs/f;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public a2(Lc/b/a/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/f;

    invoke-direct {v1, p1}, Landroidx/browser/customtabs/f;-><init>(Lc/b/a/a;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->c(Landroidx/browser/customtabs/f;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public d2(Lc/b/a/a;)Z
    .locals 5

    new-instance v0, Landroidx/browser/customtabs/f;

    invoke-direct {v0, p1}, Landroidx/browser/customtabs/f;-><init>(Lc/b/a/a;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/browser/customtabs/CustomTabsService$a$a;

    invoke-direct {v2, p0, v0}, Landroidx/browser/customtabs/CustomTabsService$a$a;-><init>(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/f;)V

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->b:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsService;->b:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsService;->d(Landroidx/browser/customtabs/f;)Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v1
.end method

.method public h2(Lc/b/a/a;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/f;

    invoke-direct {v1, p1}, Landroidx/browser/customtabs/f;-><init>(Lc/b/a/a;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->h(Landroidx/browser/customtabs/f;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public k4(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public l3(Lc/b/a/a;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/f;

    invoke-direct {v1, p1}, Landroidx/browser/customtabs/f;-><init>(Lc/b/a/a;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->g(Landroidx/browser/customtabs/f;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public s5(J)Z
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->b:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->i(J)Z

    move-result p1

    return p1
.end method
