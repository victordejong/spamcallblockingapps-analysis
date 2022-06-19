.class public Lk91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static a:Landroid/net/ConnectivityManager;

.field public static b:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    sput-object v0, Lk91;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public static a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Ll91;->b()V

    return-void

    :cond_0
    sget-object v0, Lk91;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    sget-object v1, Lk91;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    sput-object v0, Lk91;->b:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
