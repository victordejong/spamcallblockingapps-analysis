.class public final Lcom/google/android/gms/maps/a/ae;
.super Lcom/google/android/gms/internal/e/a;

# interfaces
.implements Lcom/google/android/gms/maps/a/b;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/internal/e/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/e/s;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e/r;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/maps/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x19

    .line 121
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    .line 125
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 126
    instance-of v3, v2, Lcom/google/android/gms/maps/a/h;

    if-eqz v3, :cond_1

    .line 127
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/maps/a/h;

    goto :goto_0

    .line 128
    :cond_1
    new-instance v2, Lcom/google/android/gms/maps/a/z;

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/a/z;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 130
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 v0, 0x5d

    .line 305
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/a/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1c

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x2a

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/a/u;Lcom/google/android/gms/dynamic/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object p2

    .line 187
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x0

    .line 188
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x26

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/e/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/a;->N_()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x5b

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/a;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 333
    invoke-static {p1}, Lcom/google/android/gms/internal/e/g;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
