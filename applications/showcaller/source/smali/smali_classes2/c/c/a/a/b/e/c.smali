.class public abstract Lc/c/a/a/b/e/c;
.super Lc/c/a/a/b/e/f;
.source "com.android.billingclient:billing@@3.0.3"

# interfaces
.implements Lc/c/a/a/b/e/d;


# direct methods
.method public static c0(Landroid/os/IBinder;)Lc/c/a/a/b/e/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc/c/a/a/b/e/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/c/a/a/b/e/d;

    return-object v0

    :cond_1
    new-instance v0, Lc/c/a/a/b/e/b;

    .line 4
    invoke-direct {v0, p0}, Lc/c/a/a/b/e/b;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
