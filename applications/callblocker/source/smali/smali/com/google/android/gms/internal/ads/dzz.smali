.class public final Lcom/google/android/gms/internal/ads/dzz;
.super Lcom/google/android/gms/internal/ads/dkj;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dzx;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dkj;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/by;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 67
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 68
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 69
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/by;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 72
    return-object v1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/cg;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 125
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 126
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 127
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cf;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cg;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    return-object v1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzg;
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 41
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    return-object v0

    .line 46
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dzg;

    if-eqz v3, :cond_1

    .line 48
    check-cast v0, Lcom/google/android/gms/internal/ads/dzg;

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzi;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dzi;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 109
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 110
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 114
    if-nez v2, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 121
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    return-object v0

    .line 116
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dzn;

    if-eqz v3, :cond_1

    .line 118
    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dzq;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 4

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 8
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 19
    return-object v0

    .line 13
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 14
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dzn;

    if-eqz v3, :cond_1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dzq;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/eae;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 98
    if-nez v2, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    return-object v0

    .line 100
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/eae;

    if-eqz v3, :cond_1

    .line 102
    check-cast v0, Lcom/google/android/gms/internal/ads/eae;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/eag;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/eag;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/ny;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 89
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/nx;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ny;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    return-object v1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/qy;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 75
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 76
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qx;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/qy;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    return-object v1
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 4

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 22
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 23
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 25
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-object v0

    .line 30
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dzn;

    if-eqz v3, :cond_1

    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dzq;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/eae;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 55
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    return-object v0

    .line 59
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/eae;

    if-eqz v3, :cond_1

    .line 61
    check-cast v0, Lcom/google/android/gms/internal/ads/eae;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/eag;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/eag;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/ru;
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 133
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 135
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/rx;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ru;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-object v1
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 142
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 143
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 145
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 148
    if-nez v2, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    return-object v0

    .line 150
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dzn;

    if-eqz v3, :cond_1

    .line 152
    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dzq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dzq;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/oj;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 83
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/om;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/oj;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-object v1
.end method
