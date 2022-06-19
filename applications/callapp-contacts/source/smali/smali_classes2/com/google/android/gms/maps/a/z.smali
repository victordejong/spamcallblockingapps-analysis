.class public final Lcom/google/android/gms/maps/a/z;
.super Lcom/google/android/gms/internal/e/a;

# interfaces
.implements Lcom/google/android/gms/maps/a/h;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Z)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Z)V

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    .line 80
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Z)V

    const/16 v0, 0x12

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method
