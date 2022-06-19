.class public abstract Lcom/google/android/gms/internal/ads/bs;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/bt;
    .locals 2

    .prologue
    .line 3
    if-nez p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 8
    :goto_0
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/bt;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/bt;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/bv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bs;->a()F

    move-result v0

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bs;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 18
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bs;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 22
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bs;->c()F

    move-result v0

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 26
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bs;->d()F

    move-result v0

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 30
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bs;->e()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 34
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bs;->f()Z

    move-result v0

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 38
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bs;->a(Lcom/google/android/gms/internal/ads/dh;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 41
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/dh;

    if-eqz v2, :cond_1

    .line 43
    check-cast v0, Lcom/google/android/gms/internal/ads/dh;

    goto :goto_2

    .line 44
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dk;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
