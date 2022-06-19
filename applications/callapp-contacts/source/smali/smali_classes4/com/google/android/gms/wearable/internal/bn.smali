.class public final Lcom/google/android/gms/wearable/internal/bn;
.super Lcom/google/android/gms/internal/wearable/a;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/bh;Lcom/google/android/gms/wearable/internal/bf;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 99
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Lcom/google/android/gms/wearable/internal/zzd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 72
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Lcom/google/android/gms/wearable/internal/zzfw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 76
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 77
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x11

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x2a

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x26

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 119
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x27

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 31
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 p1, 0xc

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/bh;Lcom/google/android/gms/wearable/internal/bf;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 105
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 92
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 93
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x21

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method
