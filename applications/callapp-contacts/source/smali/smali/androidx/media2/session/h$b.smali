.class final Landroidx/media2/session/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/h;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Landroid/os/Bundle;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-object p2, p0, Landroidx/media2/session/h$b;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1394
    iget-object p1, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object p1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->close()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "MC2ImplBase"

    .line 1351
    :try_start_0
    sget-boolean v1, Landroidx/media2/session/h;->a:Z

    if-eqz v1, :cond_0

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object v1, v1, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media2/session/SessionToken;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1355
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Expected connection to "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object v1, v1, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media2/session/SessionToken;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but is connected to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :goto_0
    iget-object p1, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object p1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->close()V

    return-void

    .line 1359
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroidx/media2/session/d$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/d;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "Service interface is missing."

    .line 1361
    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1364
    :cond_2
    new-instance v1, Landroidx/media2/session/ConnectionRequest;

    iget-object v2, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    .line 1807
    iget-object v2, v2, Landroidx/media2/session/h;->c:Landroid/content/Context;

    .line 1364
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget-object v4, p0, Landroidx/media2/session/h$b;->b:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1366
    iget-object v2, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object v2, v2, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroidx/media2/session/d;->a(Landroidx/media2/session/b;Landroidx/versionedparcelable/ParcelImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1369
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Service "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has died prematurely"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1372
    :goto_1
    iget-object p2, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object p2, p2, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {p2}, Landroidx/media2/session/MediaController;->close()V

    .line 1374
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1383
    sget-boolean v0, Landroidx/media2/session/h;->a:Z

    if-eqz v0, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is disconnected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MC2ImplBase"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/h$b;->a:Landroidx/media2/session/h;

    iget-object p1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->close()V

    return-void
.end method
