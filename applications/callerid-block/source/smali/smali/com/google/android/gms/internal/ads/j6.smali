.class public abstract Lcom/google/android/gms/internal/ads/j6;
.super Lcom/google/android/gms/internal/ads/jk2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/k6;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/jk2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/k6;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/k6;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/k6;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/i6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/i6;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final y6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->u6(Lcom/google/android/gms/dynamic/a;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/d6;

    if-eqz p4, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/d6;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/b6;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/b6;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->N2(Lcom/google/android/gms/internal/ads/d6;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->k2(Lcom/google/android/gms/dynamic/a;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->c0(Lcom/google/android/gms/dynamic/a;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    goto :goto_1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/k6;->a()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->X(Lcom/google/android/gms/dynamic/a;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/k6;->x(Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/kk2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/k6;->o4(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
