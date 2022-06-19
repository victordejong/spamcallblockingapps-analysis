.class public abstract Lcom/google/android/gms/internal/ads/mq;
.super Lcom/google/android/gms/internal/ads/dvd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/mn;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 239
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mq;->c(Lcom/google/android/gms/dynamic/b;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 235
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->s()Lcom/google/android/gms/internal/ads/mt;

    move-result-object p1

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 219
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 220
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvt;

    .line 221
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzvq;

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 227
    :cond_0
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 228
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ms;

    if-eqz p4, :cond_1

    .line 229
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_0

    .line 230
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    move-object v1, p0

    .line 232
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/mq;->b(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 215
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->r()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 211
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->q()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 197
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 198
    sget-object v1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 203
    :cond_2
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 204
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/ms;

    if-eqz v0, :cond_3

    .line 205
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_2

    .line 206
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    .line 208
    :goto_2
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/mq;->c(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 191
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback"

    .line 1005
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1006
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/io;

    if-eqz v1, :cond_5

    .line 1007
    check-cast v0, Lcom/google/android/gms/internal/ads/io;

    goto :goto_3

    .line 1008
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/iq;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/iq;-><init>(Landroid/os/IBinder;)V

    .line 193
    :goto_3
    sget-object p4, Lcom/google/android/gms/internal/ads/zzajw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 194
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/io;Ljava/util/List;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 187
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mq;->b(Lcom/google/android/gms/dynamic/b;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 173
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 174
    sget-object v1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_4

    .line 179
    :cond_6
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 180
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/ms;

    if-eqz v0, :cond_7

    .line 181
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_4

    .line 182
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    .line 184
    :goto_4
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/mq;->b(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 169
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->p()Lcom/google/android/gms/internal/ads/nh;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 165
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->o()Lcom/google/android/gms/internal/ads/emk;

    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 161
    :pswitch_c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mq;->a(Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 157
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->n()Lcom/google/android/gms/internal/ads/eo;

    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 151
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/ui;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/uf;

    move-result-object p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/uf;Ljava/util/List;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 147
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->m()Z

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_e

    .line 143
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 137
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 133
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->l()Landroid/os/Bundle;

    move-result-object p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 129
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->k()Landroid/os/Bundle;

    move-result-object p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 125
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->j()Landroid/os/Bundle;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 121
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->i()Lcom/google/android/gms/internal/ads/nc;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 117
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->h()Lcom/google/android/gms/internal/ads/nb;

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 100
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 101
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvq;

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    :goto_5
    move-object v6, v0

    goto :goto_6

    .line 107
    :cond_8
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 108
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/ms;

    if-eqz v0, :cond_9

    .line 109
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_5

    .line 110
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    .line 112
    :goto_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaei;

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object v1, p0

    .line 114
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/zzaei;Ljava/util/List;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 96
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->g()Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_e

    .line 93
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->f()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 88
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 80
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    .line 81
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvq;

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ui;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/uf;

    move-result-object v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/uf;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 77
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->e()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 74
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->d()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 59
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 60
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvq;

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_7
    move-object v6, v0

    goto :goto_8

    .line 66
    :cond_a
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 67
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ms;

    if-eqz p4, :cond_b

    .line 68
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_7

    .line 69
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    :goto_8
    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 43
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 44
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvt;

    .line 45
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzvq;

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    :goto_9
    move-object v7, v0

    goto :goto_a

    .line 51
    :cond_c
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 52
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ms;

    if-eqz p4, :cond_d

    .line 53
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_9

    .line 54
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    :goto_a
    move-object v1, p0

    .line 56
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 40
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->c()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 37
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->b()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 23
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_b

    .line 29
    :cond_e
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 30
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/ms;

    if-eqz v0, :cond_f

    .line 31
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_b

    .line 32
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    .line 34
    :goto_b
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_e

    .line 19
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mq;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_e

    .line 4
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvt;

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzvq;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    :goto_c
    move-object v6, v0

    goto :goto_d

    .line 11
    :cond_10
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ms;

    if-eqz p4, :cond_11

    .line 13
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    goto :goto_c

    .line 14
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    :goto_d
    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ms;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_e
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
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
