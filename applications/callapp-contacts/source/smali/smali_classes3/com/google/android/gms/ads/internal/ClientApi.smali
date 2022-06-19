.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/eli;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eli;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/dv;
    .locals 2

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/bdm;

    const v1, 0xc365f90

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/bdm;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/ed;
    .locals 1

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 57
    invoke-static {p3}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/bdj;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bdj;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ekp;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 22
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p3

    .line 23
    new-instance p4, Lcom/google/android/gms/internal/ads/byw;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/byw;-><init>(Lcom/google/android/gms/internal/ads/afq;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/ekw;
    .locals 4

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbar;

    const v1, 0xc365f90

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZZ)V

    .line 53
    new-instance p4, Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V

    return-object p4
.end method

.method public final zza(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ekw;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 3
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/afq;->j()Lcom/google/android/gms/internal/ads/clg;

    move-result-object p4

    .line 5
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/clg;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/clg;

    move-result-object p1

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/clg;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/clg;

    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/clg;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/clg;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/clg;->a()Lcom/google/android/gms/internal/ads/clh;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/clh;->a()Lcom/google/android/gms/internal/ads/byy;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/b;I)Lcom/google/android/gms/internal/ads/eln;
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 48
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afq;->h()Lcom/google/android/gms/internal/ads/aib;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ts;
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 28
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/afq;->r()Lcom/google/android/gms/internal/ads/coq;

    move-result-object p2

    .line 30
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/coq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/coq;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/coq;->a()Lcom/google/android/gms/internal/ads/con;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/con;->a()Lcom/google/android/gms/internal/ads/cop;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ekw;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 12
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p4

    .line 13
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/afq;->o()Lcom/google/android/gms/internal/ads/cnd;

    move-result-object p4

    .line 14
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/cnd;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cnd;

    move-result-object p1

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/cnd;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/cnd;

    move-result-object p1

    .line 16
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/cnd;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cnd;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cnd;->a()Lcom/google/android/gms/internal/ads/cmz;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cmz;->a()Lcom/google/android/gms/internal/ads/caa;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/qz;
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 39
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

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
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 41
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 43
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzac;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 42
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 40
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/uq;
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 60
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/afq;->r()Lcom/google/android/gms/internal/ads/coq;

    move-result-object p3

    .line 62
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/coq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/coq;

    move-result-object p1

    .line 63
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/coq;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/coq;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/coq;->a()Lcom/google/android/gms/internal/ads/con;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/con;->b()Lcom/google/android/gms/internal/ads/coj;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/xo;
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 81
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afq;->t()Lcom/google/android/gms/internal/ads/caw;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ekw;
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 69
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/afq;->m()Lcom/google/android/gms/internal/ads/cjv;

    move-result-object p2

    .line 71
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/cjv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cjv;

    move-result-object p2

    .line 72
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/cjv;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cjv;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cjv;->a()Lcom/google/android/gms/internal/ads/cjs;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/google/android/gms/internal/ads/aq;->cZ:Lcom/google/android/gms/internal/ads/af;

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cjs;->b()Lcom/google/android/gms/internal/ads/ckr;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cjs;->a()Lcom/google/android/gms/internal/ads/cjm;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/eln;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ql;
    .locals 0

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 85
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/afq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/afq;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afq;->u()Lcom/google/android/gms/internal/ads/bsc;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/rj;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
