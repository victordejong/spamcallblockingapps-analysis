.class public abstract Lcom/google/android/gms/internal/measurement/l2;
.super Lcom/google/android/gms/internal/measurement/u;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/k3;


# direct methods
.method public static r1(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/k3;
    .locals 2

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/k3;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/k3;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/m1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
