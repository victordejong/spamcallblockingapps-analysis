.class public final Lcom/google/android/gms/maps/a/y;
.super Lcom/google/android/gms/internal/e/a;

# interfaces
.implements Lcom/google/android/gms/maps/a/g;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/a/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x7

    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e()Lcom/google/android/gms/dynamic/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xa

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xb

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method
