.class public abstract Lcom/google/android/gms/internal/ads/pl;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

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
    sget-object v0, Lcom/google/android/gms/internal/ads/pg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pg;

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/pl;->a(Lcom/google/android/gms/internal/ads/pg;)Lcom/google/android/gms/internal/ads/pi;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 70
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 9
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/pg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pg;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 18
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pl;->a(Lcom/google/android/gms/internal/ads/pg;Lcom/google/android/gms/internal/ads/po;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 13
    :cond_0
    const-string/jumbo v1, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 14
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/po;

    if-eqz v3, :cond_1

    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/po;

    goto :goto_2

    .line 16
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/pr;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/pr;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 21
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/pw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pw;

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 23
    if-nez v2, :cond_2

    .line 30
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pl;->a(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 25
    :cond_2
    const-string/jumbo v1, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 26
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/pq;

    if-eqz v3, :cond_3

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/ads/pq;

    goto :goto_3

    .line 28
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/ps;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ps;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 33
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/pw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pw;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 35
    if-nez v2, :cond_4

    .line 42
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pl;->b(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 37
    :cond_4
    const-string/jumbo v1, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 38
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/pq;

    if-eqz v3, :cond_5

    .line 39
    check-cast v1, Lcom/google/android/gms/internal/ads/pq;

    goto :goto_4

    .line 40
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/ps;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ps;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 45
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/pw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pw;

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 47
    if-nez v2, :cond_6

    .line 54
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pl;->c(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 49
    :cond_6
    const-string/jumbo v1, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 50
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/pq;

    if-eqz v3, :cond_7

    .line 51
    check-cast v1, Lcom/google/android/gms/internal/ads/pq;

    goto :goto_5

    .line 52
    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/ps;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ps;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    .line 57
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 59
    if-nez v3, :cond_8

    .line 66
    :goto_6
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ads/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/pq;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 61
    :cond_8
    const-string/jumbo v0, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/pq;

    if-eqz v1, :cond_9

    .line 63
    check-cast v0, Lcom/google/android/gms/internal/ads/pq;

    move-object v1, v0

    goto :goto_6

    .line 64
    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/ps;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/ps;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    .line 3
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
