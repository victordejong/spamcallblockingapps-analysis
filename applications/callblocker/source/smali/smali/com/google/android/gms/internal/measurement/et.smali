.class public abstract Lcom/google/android/gms/internal/measurement/et;
.super Lcom/google/android/gms/internal/measurement/as;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bt;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/bt;
    .locals 2

    .prologue
    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 6
    :goto_0
    return-object v0

    .line 3
    :cond_0
    const-string/jumbo v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/bt;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/measurement/bt;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/du;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/du;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
