.class public abstract Lcom/google/android/gms/internal/ads/eks;
.super Lcom/google/android/gms/internal/ads/dvd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ekp;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 69
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 65
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback"

    .line 7005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 7006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/jf;

    if-eqz p4, :cond_1

    .line 7007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/jf;

    goto :goto_0

    .line 7008
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/jh;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/jh;-><init>(Landroid/os/IBinder;)V

    .line 66
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/jf;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 61
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzajy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajy;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/zzajy;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 57
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener"

    .line 6005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 6006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/fm;

    if-eqz p4, :cond_3

    .line 6007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/fm;

    goto :goto_1

    .line 6008
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/fo;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/fo;-><init>(Landroid/os/IBinder;)V

    .line 58
    :goto_1
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/fm;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 53
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 48
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p4, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    .line 5005
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 5006
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/fh;

    if-eqz v0, :cond_5

    .line 5007
    check-cast p4, Lcom/google/android/gms/internal/ads/fh;

    goto :goto_2

    .line 5008
    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/ads/fj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/fj;-><init>(Landroid/os/IBinder;)V

    .line 49
    :goto_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvt;

    .line 50
    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/fh;Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 37
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 40
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 41
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/elk;

    if-eqz p4, :cond_7

    .line 42
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/elk;

    goto :goto_3

    .line 43
    :cond_7
    new-instance p4, Lcom/google/android/gms/internal/ads/elj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/elj;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_3
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/elk;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 33
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaei;

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 27
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v1, p4

    goto :goto_4

    :cond_8
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    .line 3005
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3006
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/fe;

    if-eqz v2, :cond_9

    .line 3007
    check-cast v1, Lcom/google/android/gms/internal/ads/fe;

    goto :goto_4

    .line 3008
    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/fg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/fg;-><init>(Landroid/os/IBinder;)V

    .line 29
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    const-string p4, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    .line 4005
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 4006
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/ey;

    if-eqz v0, :cond_b

    .line 4007
    check-cast p4, Lcom/google/android/gms/internal/ads/ey;

    goto :goto_5

    .line 4008
    :cond_b
    new-instance p4, Lcom/google/android/gms/internal/ads/fb;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_5
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/ey;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 23
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener"

    .line 2005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 2006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ex;

    if-eqz p4, :cond_d

    .line 2007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/ex;

    goto :goto_6

    .line 2008
    :cond_d
    new-instance p4, Lcom/google/android/gms/internal/ads/ez;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/ez;-><init>(Landroid/os/IBinder;)V

    .line 24
    :goto_6
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/ex;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 19
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    .line 1005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 1006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/es;

    if-eqz p4, :cond_f

    .line 1007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/es;

    goto :goto_7

    .line 1008
    :cond_f
    new-instance p4, Lcom/google/android/gms/internal/ads/eu;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/eu;-><init>(Landroid/os/IBinder;)V

    .line 20
    :goto_7
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/es;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 8
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/eki;

    if-eqz p4, :cond_11

    .line 13
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/eki;

    goto :goto_8

    .line 14
    :cond_11
    new-instance p4, Lcom/google/android/gms/internal/ads/ekk;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/ekk;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_8
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/eks;->a(Lcom/google/android/gms/internal/ads/eki;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 4
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eks;->a()Lcom/google/android/gms/internal/ads/eko;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_9
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
