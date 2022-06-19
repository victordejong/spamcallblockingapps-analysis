.class public abstract Lcom/google/android/gms/internal/e/p;
.super Lcom/google/android/gms/internal/e/f;

# interfaces
.implements Lcom/google/android/gms/internal/e/o;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e/o;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/e/o;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/e/o;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/e/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/q;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
