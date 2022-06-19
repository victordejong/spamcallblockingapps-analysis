.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzxx;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxx;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaev;
    .locals 2

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccx;

    const v1, 0xc2be7e0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzccx;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaey;
    .locals 1

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 57
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzccy;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzaur;
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 28
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafq()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p2

    .line 30
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzaib()Lcom/google/android/gms/internal/ads/zzdmo;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmo;->zzaie()Lcom/google/android/gms/internal/ads/zzdmq;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxi;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 22
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p3

    .line 23
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcxu;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcxu;-><init>(Lcom/google/android/gms/internal/ads/zzbgc;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 4

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazn;

    const v1, 0xc2be7e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzazn;-><init>(IIZZ)V

    .line 53
    new-instance p4, Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazn;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 3
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafi()Lcom/google/android/gms/internal/ads/zzdjn;

    move-result-object p4

    .line 5
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzdjn;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdjn;

    move-result-object p1

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdjn;->zzc(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdjn;

    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzdjn;->zzfp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdjn;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjn;->zzaht()Lcom/google/android/gms/internal/ads/zzdjk;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjk;->zzahw()Lcom/google/android/gms/internal/ads/zzcxw;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzyg;
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 48
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzh(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafg()Lcom/google/android/gms/internal/ads/zzbim;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaro;
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 39
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    .line 45
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 41
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 43
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzab;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzab;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 42
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzac;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 40
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzavm;
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 60
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafq()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p3

    .line 62
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    .line 63
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmr;->zzfr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzaib()Lcom/google/android/gms/internal/ads/zzdmo;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmo;->zzaif()Lcom/google/android/gms/internal/ads/zzdmk;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzaxy;
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 81
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafs()Lcom/google/android/gms/internal/ads/zzczo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 12
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p4

    .line 13
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafn()Lcom/google/android/gms/internal/ads/zzdle;

    move-result-object p4

    .line 14
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzdle;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdle;

    move-result-object p1

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdle;->zzd(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdle;

    move-result-object p1

    .line 16
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzdle;->zzfq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdle;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdle;->zzahy()Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzaic()Lcom/google/android/gms/internal/ads/zzcyt;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzarf;
    .locals 0

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 85
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzaft()Lcom/google/android/gms/internal/ads/zzcrb;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 69
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafl()Lcom/google/android/gms/internal/ads/zzdic;

    move-result-object p2

    .line 71
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzdic;->zzfo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdic;

    move-result-object p2

    .line 72
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdic;->zzbx(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdic;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdic;->zzahi()Lcom/google/android/gms/internal/ads/zzdid;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabp;->zzcvx:Lcom/google/android/gms/internal/ads/zzaba;

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdid;->zzahm()Lcom/google/android/gms/internal/ads/zzdiz;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdid;->zzahl()Lcom/google/android/gms/internal/ads/zzdhx;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzyg;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzasd;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
