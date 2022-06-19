.class public final Lcom/google/android/gms/internal/measurement/mk;
.super Lcom/google/android/gms/internal/measurement/a;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/mi;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 124
    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 60
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 129
    return-void
.end method

.method public final generateEventId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 118
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 119
    return-void
.end method

.method public final getAppInstanceId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 110
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 111
    return-void
.end method

.method public final getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 106
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 107
    return-void
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 66
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method public final getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 98
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 99
    return-void
.end method

.method public final getCurrentScreenName(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 94
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 95
    return-void
.end method

.method public final getGmpAppId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 114
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 115
    return-void
.end method

.method public final getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 44
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method public final getTestFlag(Lcom/google/android/gms/internal/measurement/mj;I)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 201
    return-void
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Z)V

    .line 38
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 39
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method public final initForTests(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 195
    const/16 v1, 0x25

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 196
    return-void
.end method

.method public final initialize(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/b;J)V
    .locals 3

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 8
    return-void
.end method

.method public final isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 208
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 209
    return-void
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Z)V

    .line 14
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Z)V

    .line 15
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 17
    return-void
.end method

.method public final logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 22
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 23
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method public final logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 177
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 178
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 179
    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 180
    return-void
.end method

.method public final onActivityCreated(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;J)V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 142
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 143
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 145
    return-void
.end method

.method public final onActivityDestroyed(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 148
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 150
    return-void
.end method

.method public final onActivityPaused(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 153
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method public final onActivityResumed(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 158
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 160
    return-void
.end method

.method public final onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 163
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 164
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 166
    return-void
.end method

.method public final onActivityStarted(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 132
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 134
    return-void
.end method

.method public final onActivityStopped(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 137
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method public final performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 169
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 170
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 172
    return-void
.end method

.method public final registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/mn;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 187
    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 188
    return-void
.end method

.method public final resetAnalyticsData(J)V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 52
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 53
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method public final setCurrentScreen(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 87
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method public final setDataCollectionEnabled(Z)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Z)V

    .line 204
    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 205
    return-void
.end method

.method public final setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 212
    const/16 v1, 0x2a

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 213
    return-void
.end method

.method public final setEventInterceptor(Lcom/google/android/gms/internal/measurement/mn;)V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 183
    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 184
    return-void
.end method

.method public final setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/mo;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 102
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 103
    return-void
.end method

.method public final setMeasurementEnabled(ZJ)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Z)V

    .line 70
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method public final setUserId(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/a;ZJ)V
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 30
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Z)V

    .line 31
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method public final unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/mn;)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/u;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 191
    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/a;->b(ILandroid/os/Parcel;)V

    .line 192
    return-void
.end method
