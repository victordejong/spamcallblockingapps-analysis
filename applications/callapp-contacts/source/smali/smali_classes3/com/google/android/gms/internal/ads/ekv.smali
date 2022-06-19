.class public abstract Lcom/google/android/gms/internal/ads/ekv;
.super Lcom/google/android/gms/internal/ads/dvd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ekw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ekw;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/ekw;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/eky;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/eky;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 216
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    .line 219
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 220
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/elm;

    if-eqz p4, :cond_1

    .line 221
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/elm;

    goto :goto_0

    .line 222
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/elo;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/elo;-><init>(Landroid/os/IBinder;)V

    .line 224
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/elm;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 212
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zze(Lcom/google/android/gms/dynamic/b;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 200
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.client.IAdLoadCallback"

    .line 204
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 205
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/ekj;

    if-eqz v0, :cond_3

    .line 206
    check-cast p4, Lcom/google/android/gms/internal/ads/ekj;

    goto :goto_1

    .line 207
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/ekl;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/ekl;-><init>(Landroid/os/IBinder;)V

    .line 209
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/ekj;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 189
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 192
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 193
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/emd;

    if-eqz p4, :cond_5

    .line 194
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/emd;

    goto :goto_2

    .line 195
    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/ads/emf;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/emf;-><init>(Landroid/os/IBinder;)V

    .line 197
    :goto_2
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/emd;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 185
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzkm()Lcom/google/android/gms/internal/ads/emj;

    move-result-object p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 181
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback"

    .line 5005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 5006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/egc;

    if-eqz p4, :cond_7

    .line 5007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/egc;

    goto :goto_3

    .line 5008
    :cond_7
    new-instance p4, Lcom/google/android/gms/internal/ads/ege;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/ege;-><init>(Landroid/os/IBinder;)V

    .line 182
    :goto_3
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/egc;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 177
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwc;

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 173
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zzbl(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 169
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    .line 158
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    .line 161
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 162
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ekz;

    if-eqz p4, :cond_9

    .line 163
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/ekz;

    goto :goto_4

    .line 164
    :cond_9
    new-instance p4, Lcom/google/android/gms/internal/ads/elb;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/elb;-><init>(Landroid/os/IBinder;)V

    .line 166
    :goto_4
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/ekz;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 154
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzkl()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 150
    :pswitch_c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->setImmersiveMode(Z)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 146
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzko()Lcom/google/android/gms/internal/ads/eki;

    move-result-object p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 142
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzkn()Lcom/google/android/gms/internal/ads/ele;

    move-result-object p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 138
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 134
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzj;

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/zzzj;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 130
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaaz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaaz;

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 126
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->getVideoController()Lcom/google/android/gms/internal/ads/emk;

    move-result-object p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 122
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->setUserId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 118
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 4005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 4006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/tz;

    if-eqz p4, :cond_b

    .line 4007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/tz;

    goto :goto_5

    .line 4008
    :cond_b
    new-instance p4, Lcom/google/android/gms/internal/ads/ub;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/ub;-><init>(Landroid/os/IBinder;)V

    .line 119
    :goto_5
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/tz;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 114
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->isLoading()Z

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_d

    .line 110
    :pswitch_16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->setManualImpressionsEnabled(Z)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 99
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 102
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 103
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/elk;

    if-eqz p4, :cond_d

    .line 104
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/elk;

    goto :goto_6

    .line 105
    :cond_d
    new-instance p4, Lcom/google/android/gms/internal/ads/elj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/elj;-><init>(Landroid/os/IBinder;)V

    .line 107
    :goto_6
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/elk;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 88
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    .line 91
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 92
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ekc;

    if-eqz p4, :cond_f

    .line 93
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/ekc;

    goto :goto_7

    .line 94
    :cond_f
    new-instance p4, Lcom/google/android/gms/internal/ads/eke;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/eke;-><init>(Landroid/os/IBinder;)V

    .line 96
    :goto_7
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/ekc;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 84
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    const-string p2, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener"

    .line 3005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 3006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/bn;

    if-eqz p4, :cond_11

    .line 3007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/bn;

    goto :goto_8

    .line 3008
    :cond_11
    new-instance p4, Lcom/google/android/gms/internal/ads/bp;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/bp;-><init>(Landroid/os/IBinder;)V

    .line 85
    :goto_8
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/bn;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 80
    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 75
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_12
    const-string p4, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener"

    .line 2003
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 2004
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/rn;

    if-eqz v0, :cond_13

    .line 2005
    check-cast p4, Lcom/google/android/gms/internal/ads/rn;

    goto :goto_9

    .line 2006
    :cond_13
    new-instance p4, Lcom/google/android/gms/internal/ads/rp;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/rp;-><init>(Landroid/os/IBinder;)V

    .line 76
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/rn;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 71
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_a

    :cond_14
    const-string p2, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"

    .line 1003
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 1004
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ri;

    if-eqz p4, :cond_15

    .line 1005
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/ri;

    goto :goto_a

    .line 1006
    :cond_15
    new-instance p4, Lcom/google/android/gms/internal/ads/rk;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/rk;-><init>(Landroid/os/IBinder;)V

    .line 72
    :goto_a
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/ri;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 67
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvt;

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 63
    :pswitch_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzkk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    .line 60
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzkj()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 57
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->stopLoading()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 54
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->showInterstitial()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 43
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_b

    :cond_16
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 46
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 47
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ele;

    if-eqz p4, :cond_17

    .line 48
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/ele;

    goto :goto_b

    .line 49
    :cond_17
    new-instance p4, Lcom/google/android/gms/internal/ads/elg;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/elg;-><init>(Landroid/os/IBinder;)V

    .line 51
    :goto_b
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/ele;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 32
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_c

    :cond_18
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 35
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 36
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/eki;

    if-eqz p4, :cond_19

    .line 37
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/eki;

    goto :goto_c

    .line 38
    :cond_19
    new-instance p4, Lcom/google/android/gms/internal/ads/ekk;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/ekk;-><init>(Landroid/os/IBinder;)V

    .line 40
    :goto_c
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/eki;)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 29
    :pswitch_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->resume()V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 26
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->pause()V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 21
    :pswitch_26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ekv;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Z)V

    goto :goto_d

    .line 17
    :pswitch_27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->isReady()Z

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Z)V

    goto :goto_d

    .line 14
    :pswitch_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->destroy()V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 10
    :pswitch_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekv;->zzki()Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
