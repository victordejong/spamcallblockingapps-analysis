.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/ct;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ct;-><init>()V

    return-void
.end method


# virtual methods
.method public final D5(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/ts;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgz;

    const v1, 0xcbe6bb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(IIZZ)V

    new-instance p4, Lcom/google/android/gms/ads/internal/r;

    .line 3
    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/r;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgz;)V

    return-object p4
.end method

.method public final M(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/kb0;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k0(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

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

    .line 4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/x;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/t;

    .line 6
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/t;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 8
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/b;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 9
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0
.end method

.method public final O3(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/pz;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/lf1;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/lf1;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final R0(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/kz;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/nf1;

    const v1, 0xcbe6bb0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/nf1;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final Z4(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/lt;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/sp0;->e(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->m()Lcom/google/android/gms/internal/ads/rs0;

    move-result-object p1

    return-object p1
.end method

.method public final e1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/yg0;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->y()Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    move-result-object p1

    return-object p1
.end method

.method public final h3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/fe0;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sp0;->w()Lcom/google/android/gms/internal/ads/xi2;

    move-result-object p3

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/xi2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xi2;

    .line 5
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/xi2;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xi2;

    .line 6
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/xi2;->zza()Lcom/google/android/gms/internal/ads/yi2;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yi2;->b()Lcom/google/android/gms/internal/ads/vi2;

    move-result-object p1

    return-object p1
.end method

.method public final j2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ts;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->r()Lcom/google/android/gms/internal/ads/yd2;

    move-result-object p2

    .line 4
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/yd2;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yd2;

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/yd2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/yd2;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/yd2;->zza()Lcom/google/android/gms/internal/ads/zd2;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->C3:Lcom/google/android/gms/internal/ads/cw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd2;->b()Lcom/google/android/gms/internal/ads/gf2;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zd2;->zza()Lcom/google/android/gms/internal/ads/wd2;

    move-result-object p1

    return-object p1
.end method

.method public final n5(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/rd0;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->w()Lcom/google/android/gms/internal/ads/xi2;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/xi2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xi2;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/xi2;->zza()Lcom/google/android/gms/internal/ads/yi2;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yi2;->zza()Lcom/google/android/gms/internal/ads/bj2;

    move-result-object p1

    return-object p1
.end method

.method public final p4(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ps;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p3

    new-instance p4, Lcom/google/android/gms/internal/ads/c32;

    .line 3
    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/c32;-><init>(Lcom/google/android/gms/internal/ads/sp0;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final p6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ab0;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->A()Lcom/google/android/gms/internal/ads/lw1;

    move-result-object p1

    return-object p1
.end method

.method public final t1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/s70;ILcom/google/android/gms/internal/ads/h30;)Lcom/google/android/gms/internal/ads/j30;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->c()Lcom/google/android/gms/internal/ads/ap1;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ap1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ap1;

    .line 5
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/ap1;->b(Lcom/google/android/gms/internal/ads/h30;)Lcom/google/android/gms/internal/ads/ap1;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ap1;->zza()Lcom/google/android/gms/internal/ads/bp1;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bp1;->c()Lcom/google/android/gms/internal/ads/yo1;

    move-result-object p1

    return-object p1
.end method

.method public final u4(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ts;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/sp0;->o()Lcom/google/android/gms/internal/ads/of2;

    move-result-object p4

    .line 4
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/of2;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/of2;

    .line 5
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/of2;->a(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/of2;

    .line 6
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/of2;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/of2;

    .line 7
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/of2;->zza()Lcom/google/android/gms/internal/ads/pf2;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pf2;->zza()Lcom/google/android/gms/internal/ads/f32;

    move-result-object p1

    return-object p1
.end method

.method public final w2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ts;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/sp0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/sp0;->t()Lcom/google/android/gms/internal/ads/ih2;

    move-result-object p4

    .line 4
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/ih2;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ih2;

    .line 5
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/ih2;->a(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/ih2;

    .line 6
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/ih2;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih2;

    .line 7
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/ih2;->zza()Lcom/google/android/gms/internal/ads/jh2;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jh2;->zza()Lcom/google/android/gms/internal/ads/i42;

    move-result-object p1

    return-object p1
.end method
