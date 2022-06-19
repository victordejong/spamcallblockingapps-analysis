.class final Landroidx/media/MediaBrowserServiceCompat$k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroidx/media/MediaBrowserServiceCompat$k;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 969
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->b:Ljava/lang/String;

    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->c:I

    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->d:I

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 972
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$l;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 975
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/b/a;

    invoke-virtual {v1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$b;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v3, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->b:Ljava/lang/String;

    iget v5, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->c:I

    iget v6, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->d:I

    iget-object v7, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->e:Landroid/os/Bundle;

    iget-object v8, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$l;)V

    .line 979
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iput-object v1, v2, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 980
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->b:Ljava/lang/String;

    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->d:I

    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->e:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$a;

    move-result-object v2

    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat$b;->h:Landroidx/media/MediaBrowserServiceCompat$a;

    .line 981
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 984
    iget-object v2, v1, Landroidx/media/MediaBrowserServiceCompat$b;->h:Landroidx/media/MediaBrowserServiceCompat$a;

    const-string v3, "MBServiceCompat"

    if-nez v2, :cond_0

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No root for client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :try_start_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$l;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 990
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 995
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/b/a;

    invoke-virtual {v2, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 996
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 997
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 998
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    iget-object v4, v1, Landroidx/media/MediaBrowserServiceCompat$b;->h:Landroidx/media/MediaBrowserServiceCompat$a;

    .line 2963
    iget-object v4, v4, Landroidx/media/MediaBrowserServiceCompat$a;->a:Ljava/lang/String;

    .line 998
    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v5, v5, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v5, v5, Landroidx/media/MediaBrowserServiceCompat;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$b;->h:Landroidx/media/MediaBrowserServiceCompat$a;

    .line 2970
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$a;->b:Landroid/os/Bundle;

    .line 998
    invoke-interface {v2, v4, v5, v1}, Landroidx/media/MediaBrowserServiceCompat$l;->a(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    .line 1002
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling onConnect() failed. Dropping client. pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$1;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/b/a;

    invoke-virtual {v1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
