.class public abstract Lcom/google/android/gms/internal/ads/v;
.super Lcom/google/android/gms/internal/ads/jk2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/jk2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final y6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/l0;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/l0;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/j0;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/j0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->q3(Lcom/google/android/gms/internal/ads/l0;)V

    goto/16 :goto_b

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->r1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->c2(Lcom/google/android/gms/dynamic/a;)V

    goto/16 :goto_b

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kk2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.client.IAdLoadCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/m;

    if-eqz v0, :cond_3

    check-cast p4, Lcom/google/android/gms/internal/ads/m;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/k;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/k;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/w;->F4(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/m;)V

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/g1;

    if-eqz p4, :cond_5

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/g1;

    goto :goto_2

    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/ads/e1;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/e1;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->h5(Lcom/google/android/gms/internal/ads/g1;)V

    goto/16 :goto_b

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->r()Lcom/google/android/gms/internal/ads/j1;

    move-result-object p1

    goto/16 :goto_c

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uu2;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/vu2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->o3(Lcom/google/android/gms/internal/ads/vu2;)V

    goto/16 :goto_b

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kk2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->i2(Lcom/google/android/gms/internal/ads/zzzd;)V

    goto/16 :goto_b

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->X2(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->j()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_7

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/a0;

    if-eqz p4, :cond_7

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/a0;

    goto :goto_3

    :cond_7
    new-instance p4, Lcom/google/android/gms/internal/ads/y;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/y;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->t3(Lcom/google/android/gms/internal/ads/a0;)V

    goto/16 :goto_b

    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->o()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_6

    :pswitch_c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/kk2;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->S0(Z)V

    goto/16 :goto_b

    :pswitch_d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->A()Lcom/google/android/gms/internal/ads/j;

    move-result-object p1

    goto/16 :goto_c

    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->D()Lcom/google/android/gms/internal/ads/e0;

    move-result-object p1

    goto/16 :goto_c

    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->t()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_6

    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kk2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->H4(Lcom/google/android/gms/internal/ads/zzacn;)V

    goto/16 :goto_b

    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzady;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kk2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzady;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->p5(Lcom/google/android/gms/internal/ads/zzady;)V

    goto/16 :goto_b

    :pswitch_12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->I()Lcom/google/android/gms/internal/ads/m1;

    move-result-object p1

    goto/16 :goto_c

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->b4(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ek;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/fk;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->e4(Lcom/google/android/gms/internal/ads/fk;)V

    goto/16 :goto_b

    :pswitch_15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->B()Z

    move-result p1

    goto/16 :goto_a

    :pswitch_16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/kk2;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->p2(Z)V

    goto/16 :goto_b

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/i0;

    if-eqz p4, :cond_9

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/i0;

    goto :goto_4

    :cond_9
    new-instance p4, Lcom/google/android/gms/internal/ads/i0;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/i0;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->d5(Lcom/google/android/gms/internal/ads/i0;)V

    goto/16 :goto_b

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/g;

    if-eqz p4, :cond_b

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/g;

    goto :goto_5

    :cond_b
    new-instance p4, Lcom/google/android/gms/internal/ads/e;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/e;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->Y2(Lcom/google/android/gms/internal/ads/g;)V

    goto/16 :goto_b

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/h4;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/i4;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->l4(Lcom/google/android/gms/internal/ads/i4;)V

    goto/16 :goto_b

    :pswitch_1a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->w()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ii;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ji;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/w;->f5(Lcom/google/android/gms/internal/ads/ji;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fi;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gi;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->q6(Lcom/google/android/gms/internal/ads/gi;)V

    goto/16 :goto_b

    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzyx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kk2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->y4(Lcom/google/android/gms/internal/ads/zzyx;)V

    goto/16 :goto_b

    :pswitch_1e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->p()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    :goto_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/kk2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_1f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->m()V

    goto/16 :goto_b

    :pswitch_20
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->k()V

    goto :goto_b

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/e0;

    if-eqz p4, :cond_d

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/e0;

    goto :goto_8

    :cond_d
    new-instance p4, Lcom/google/android/gms/internal/ads/b0;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/b0;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->E4(Lcom/google/android/gms/internal/ads/e0;)V

    goto :goto_b

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_9

    :cond_e
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/j;

    if-eqz p4, :cond_f

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/j;

    goto :goto_9

    :cond_f
    new-instance p4, Lcom/google/android/gms/internal/ads/h;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/h;-><init>(Landroid/os/IBinder;)V

    :goto_9
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/w;->S3(Lcom/google/android/gms/internal/ads/j;)V

    goto :goto_b

    :pswitch_23
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->g()V

    goto :goto_b

    :pswitch_24
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->d()V

    goto :goto_b

    :pswitch_25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kk2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzys;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w;->q0(Lcom/google/android/gms/internal/ads/zzys;)Z

    move-result p1

    goto :goto_a

    :pswitch_26
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->B3()Z

    move-result p1

    :goto_a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/kk2;->b(Landroid/os/Parcel;Z)V

    goto :goto_d

    :pswitch_27
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->c()V

    :goto_b
    :pswitch_28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    :pswitch_29
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/w;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    :goto_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/kk2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_28
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
