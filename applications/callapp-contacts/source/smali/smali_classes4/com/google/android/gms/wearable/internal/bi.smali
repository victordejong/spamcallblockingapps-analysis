.class public abstract Lcom/google/android/gms/wearable/internal/bi;
.super Lcom/google/android/gms/internal/wearable/b;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bh;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wearable/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 16
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->d()V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->e()V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->c()V

    goto/16 :goto_0

    .line 79
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->q()V

    goto/16 :goto_0

    .line 76
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->p()V

    goto/16 :goto_0

    .line 73
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->o()V

    goto/16 :goto_0

    .line 70
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdk;

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzdk;)V

    goto/16 :goto_0

    .line 61
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbp;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzbp;)V

    goto/16 :goto_0

    .line 58
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbn;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzbn;)V

    goto/16 :goto_0

    .line 55
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdo;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzdo;)V

    goto/16 :goto_0

    .line 52
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdm;

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzdm;)V

    goto/16 :goto_0

    .line 49
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbt;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->b(Lcom/google/android/gms/wearable/internal/zzbt;)V

    goto/16 :goto_0

    .line 46
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbt;

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzbt;)V

    goto/16 :goto_0

    .line 43
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->m()V

    goto/16 :goto_0

    .line 7
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->b()V

    goto :goto_0

    .line 67
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzge;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->n()V

    goto :goto_0

    .line 64
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 40
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->l()V

    goto :goto_0

    .line 37
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzeg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->k()V

    goto :goto_0

    .line 34
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->j()V

    goto :goto_0

    .line 31
    :pswitch_15
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzga;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzga;

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bi;->a(Lcom/google/android/gms/wearable/internal/zzga;)V

    goto :goto_0

    .line 28
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->i()V

    goto :goto_0

    .line 25
    :pswitch_17
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->h()V

    goto :goto_0

    .line 22
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->g()V

    goto :goto_0

    .line 19
    :pswitch_19
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->f()V

    goto :goto_0

    .line 4
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/bi;->a()V

    .line 83
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
