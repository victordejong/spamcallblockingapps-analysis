.class public abstract Lcom/google/android/gms/internal/ads/ega;
.super Lcom/google/android/gms/internal/ads/dvd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/egb;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 39
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/emh;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/emd;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ega;->a(Lcom/google/android/gms/internal/ads/emd;)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 35
    :pswitch_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ega;->a(Z)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 31
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ega;->b()Lcom/google/android/gms/internal/ads/emj;

    move-result-object p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 19
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

    .line 23
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 24
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/egi;

    if-eqz v0, :cond_1

    .line 25
    check-cast p4, Lcom/google/android/gms/internal/ads/egi;

    goto :goto_0

    .line 26
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/egk;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/egk;-><init>(Landroid/os/IBinder;)V

    .line 28
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/ega;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/egi;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 8
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/egh;

    if-eqz p4, :cond_3

    .line 13
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/egh;

    goto :goto_1

    .line 14
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/egj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/egj;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_1
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ega;->a(Lcom/google/android/gms/internal/ads/egh;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ega;->a()Lcom/google/android/gms/internal/ads/ekw;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
