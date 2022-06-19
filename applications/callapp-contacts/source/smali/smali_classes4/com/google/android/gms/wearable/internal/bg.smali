.class public abstract Lcom/google/android/gms/wearable/internal/bg;
.super Lcom/google/android/gms/internal/wearable/b;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bf;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IChannelStreamCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wearable/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/bg;->a(II)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
