.class public abstract Lcom/google/android/gms/internal/measurement/mh;
.super Lcom/google/android/gms/internal/measurement/as;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/mi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/as;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/mi;
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
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/mi;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/mi;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/mk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/mk;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 306
    :pswitch_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    .line 10
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 13
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->initialize(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/b;J)V

    .line 307
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 15
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;)Z

    move-result v4

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;)Z

    move-result v5

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 21
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/mh;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_1

    .line 23
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 25
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 34
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/mh;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mj;J)V

    goto :goto_1

    .line 29
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    instance-of v5, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v5, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_2

    .line 32
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 37
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;)Z

    move-result v5

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    .line 42
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/mh;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/a;ZJ)V

    goto :goto_1

    .line 44
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;)Z

    move-result v3

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 48
    if-nez v4, :cond_2

    .line 55
    :goto_3
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/mh;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 50
    :cond_2
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    instance-of v5, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v5, :cond_3

    .line 52
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_3

    .line 53
    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 57
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 59
    if-nez v2, :cond_4

    .line 66
    :goto_4
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/measurement/mh;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 61
    :cond_4
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v3, :cond_5

    .line 63
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_4

    .line 64
    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 68
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 72
    :pswitch_8
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 74
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_1

    .line 76
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 79
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/mh;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 81
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 84
    if-nez v3, :cond_6

    .line 91
    :goto_5
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/measurement/mh;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 86
    :cond_6
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    instance-of v4, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v4, :cond_7

    .line 88
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_5

    .line 89
    :cond_7
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    .line 93
    :pswitch_b
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 95
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_1

    .line 97
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/mh;->resetAnalyticsData(J)V

    goto/16 :goto_1

    .line 100
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/mh;->setMinimumSessionDuration(J)V

    goto/16 :goto_1

    .line 103
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/mh;->setSessionTimeoutDuration(J)V

    goto/16 :goto_1

    .line 106
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/mh;->setCurrentScreen(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 112
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 113
    if-nez v1, :cond_8

    .line 120
    :goto_6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 115
    :cond_8
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_9

    .line 117
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_6

    .line 118
    :cond_9
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    .line 122
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 123
    if-nez v1, :cond_a

    .line 130
    :goto_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 125
    :cond_a
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 126
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_b

    .line 127
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_7

    .line 128
    :cond_b
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    .line 132
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 133
    if-nez v1, :cond_c

    .line 140
    :goto_8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/mo;)V

    goto/16 :goto_1

    .line 135
    :cond_c
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IStringProvider"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mo;

    if-eqz v2, :cond_d

    .line 137
    check-cast v0, Lcom/google/android/gms/internal/measurement/mo;

    move-object v5, v0

    goto :goto_8

    .line 138
    :cond_d
    new-instance v5, Lcom/google/android/gms/internal/measurement/c;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    .line 142
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 143
    if-nez v1, :cond_e

    .line 150
    :goto_9
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 145
    :cond_e
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_f

    .line 147
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_9

    .line 148
    :cond_f
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    .line 152
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 153
    if-nez v1, :cond_10

    .line 160
    :goto_a
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 155
    :cond_10
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_11

    .line 157
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_a

    .line 158
    :cond_11
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    .line 162
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 163
    if-nez v1, :cond_12

    .line 170
    :goto_b
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->getGmpAppId(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 165
    :cond_12
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_13

    .line 167
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_b

    .line 168
    :cond_13
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    .line 172
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 173
    if-nez v1, :cond_14

    .line 180
    :goto_c
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->generateEventId(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 175
    :cond_14
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 176
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_15

    .line 177
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_c

    .line 178
    :cond_15
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    .line 182
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 184
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 186
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 188
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 190
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 192
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivityStarted(Lcom/google/android/gms/dynamic/a;J)V

    goto/16 :goto_1

    .line 194
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 196
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivityStopped(Lcom/google/android/gms/dynamic/a;J)V

    goto/16 :goto_1

    .line 198
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 199
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 201
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivityCreated(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;J)V

    goto/16 :goto_1

    .line 203
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 205
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivityDestroyed(Lcom/google/android/gms/dynamic/a;J)V

    goto/16 :goto_1

    .line 207
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 209
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivityPaused(Lcom/google/android/gms/dynamic/a;J)V

    goto/16 :goto_1

    .line 211
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 213
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivityResumed(Lcom/google/android/gms/dynamic/a;J)V

    goto/16 :goto_1

    .line 215
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 217
    if-nez v2, :cond_16

    .line 224
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 225
    invoke-virtual {p0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/mj;J)V

    goto/16 :goto_1

    .line 219
    :cond_16
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 220
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v3, :cond_17

    .line 221
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_d

    .line 222
    :cond_17
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    .line 227
    :pswitch_20
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 229
    if-nez v2, :cond_18

    .line 236
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 237
    invoke-virtual {p0, v0, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/mh;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mj;J)V

    goto/16 :goto_1

    .line 231
    :cond_18
    const-string/jumbo v1, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 232
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v3, :cond_19

    .line 233
    check-cast v1, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v1

    goto :goto_e

    .line 234
    :cond_19
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_e

    .line 239
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v3

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v5

    move-object v0, p0

    .line 244
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/mh;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V

    goto/16 :goto_1

    .line 246
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 247
    if-nez v1, :cond_1a

    .line 254
    :goto_f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/mn;)V

    goto/16 :goto_1

    .line 249
    :cond_1a
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 250
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mn;

    if-eqz v2, :cond_1b

    .line 251
    check-cast v0, Lcom/google/android/gms/internal/measurement/mn;

    move-object v5, v0

    goto :goto_f

    .line 252
    :cond_1b
    new-instance v5, Lcom/google/android/gms/internal/measurement/mp;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/mp;-><init>(Landroid/os/IBinder;)V

    goto :goto_f

    .line 256
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 257
    if-nez v1, :cond_1c

    .line 264
    :goto_10
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/mn;)V

    goto/16 :goto_1

    .line 259
    :cond_1c
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 260
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mn;

    if-eqz v2, :cond_1d

    .line 261
    check-cast v0, Lcom/google/android/gms/internal/measurement/mn;

    move-object v5, v0

    goto :goto_10

    .line 262
    :cond_1d
    new-instance v5, Lcom/google/android/gms/internal/measurement/mp;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/mp;-><init>(Landroid/os/IBinder;)V

    goto :goto_10

    .line 266
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 267
    if-nez v1, :cond_1e

    .line 274
    :goto_11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/mn;)V

    goto/16 :goto_1

    .line 269
    :cond_1e
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 270
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mn;

    if-eqz v2, :cond_1f

    .line 271
    check-cast v0, Lcom/google/android/gms/internal/measurement/mn;

    move-object v5, v0

    goto :goto_11

    .line 272
    :cond_1f
    new-instance v5, Lcom/google/android/gms/internal/measurement/mp;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/mp;-><init>(Landroid/os/IBinder;)V

    goto :goto_11

    .line 276
    :pswitch_25
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->b(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/mh;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 279
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 280
    if-nez v1, :cond_20

    .line 287
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/measurement/mh;->getTestFlag(Lcom/google/android/gms/internal/measurement/mj;I)V

    goto/16 :goto_1

    .line 282
    :cond_20
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 283
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_21

    .line 284
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_12

    .line 285
    :cond_21
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_12

    .line 290
    :pswitch_27
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/mh;->setDataCollectionEnabled(Z)V

    goto/16 :goto_1

    .line 293
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 294
    if-nez v1, :cond_22

    .line 301
    :goto_13
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/mh;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/mj;)V

    goto/16 :goto_1

    .line 296
    :cond_22
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 297
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/mj;

    if-eqz v2, :cond_23

    .line 298
    check-cast v0, Lcom/google/android/gms/internal/measurement/mj;

    move-object v5, v0

    goto :goto_13

    .line 299
    :cond_23
    new-instance v5, Lcom/google/android/gms/internal/measurement/ml;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ml;-><init>(Landroid/os/IBinder;)V

    goto :goto_13

    .line 303
    :pswitch_29
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/mh;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 9
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_29
    .end packed-switch
.end method
