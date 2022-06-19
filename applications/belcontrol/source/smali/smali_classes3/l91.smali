.class public Ll91;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/net/ConnectivityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Ll91;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-static {}, Ll91;->a()V

    :cond_0
    return-void
.end method
