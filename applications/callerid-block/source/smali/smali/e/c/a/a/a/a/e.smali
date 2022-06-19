.class public abstract Le/c/a/a/a/a/e;
.super Le/c/a/a/a/a/b;
.source ""

# interfaces
.implements Le/c/a/a/a/a/d;


# direct methods
.method public static h0(Landroid/os/IBinder;)Le/c/a/a/a/a/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le/c/a/a/a/a/d;

    if-eqz v1, :cond_1

    check-cast v0, Le/c/a/a/a/a/d;

    return-object v0

    :cond_1
    new-instance v0, Le/c/a/a/a/a/f;

    invoke-direct {v0, p0}, Le/c/a/a/a/a/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
