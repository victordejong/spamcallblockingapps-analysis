.class public abstract Lcom/google/android/gms/internal/ads/jl;
.super Lcom/google/android/gms/internal/ads/k2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final D6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bu;->E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cu;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/kl;->f3(Lcom/google/android/gms/internal/ads/cu;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 4
    :pswitch_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/l2;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/kl;->y0(Z)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 7
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kl;->zzg()Lcom/google/android/gms/internal/ads/fu;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 10
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->D0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

    .line 12
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 13
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/sl;

    if-eqz v0, :cond_1

    .line 14
    check-cast p4, Lcom/google/android/gms/internal/ads/sl;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/ql;

    .line 15
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/ql;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_0
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/kl;->j1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/sl;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 18
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 19
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 20
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/pl;

    if-eqz p4, :cond_3

    .line 21
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/pl;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/pl;

    .line 22
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/pl;-><init>(Landroid/os/IBinder;)V

    .line 23
    :goto_1
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/kl;->I1(Lcom/google/android/gms/internal/ads/pl;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 25
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kl;->a()Lcom/google/android/gms/internal/ads/ts;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

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
