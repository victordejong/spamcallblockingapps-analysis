.class public abstract Lcom/google/android/gms/internal/ads/dzj;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dzg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 69
    :pswitch_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzj;->a()Lcom/google/android/gms/internal/ads/dzf;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 70
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 16
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/dza;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 11
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 12
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/dza;

    if-eqz v2, :cond_1

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/dza;

    goto :goto_2

    .line 14
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dzc;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 19
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cy;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cv;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/cv;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 23
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cz;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/da;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 27
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/df;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dg;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/de;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/db;

    move-result-object v2

    .line 30
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dzj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/db;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 33
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/ads/bl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bl;

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/bl;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 37
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 38
    if-nez v1, :cond_2

    .line 45
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/eac;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 40
    :cond_2
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/eac;

    if-eqz v2, :cond_3

    .line 42
    check-cast v0, Lcom/google/android/gms/internal/ads/eac;

    goto :goto_3

    .line 43
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/eab;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/eab;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 48
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dj;

    move-result-object v1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/dyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dyd;

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/dyd;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 53
    :pswitch_9
    sget-object v0, Lcom/google/android/gms/ads/b/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/j;

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/ads/b/j;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 57
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dn;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/do;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/do;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 61
    :pswitch_b
    sget-object v0, Lcom/google/android/gms/internal/ads/gn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/gn;

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/gn;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 65
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gy;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gv;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dzj;->a(Lcom/google/android/gms/internal/ads/gv;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 3
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
