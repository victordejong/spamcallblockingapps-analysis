.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/g0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public final C4(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/ck;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->w()Lcom/google/android/gms/internal/ads/tk1;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/tk1;->N(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/tk1;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/tk1;->zza()Lcom/google/android/gms/internal/ads/uk1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/uk1;->zza()Lcom/google/android/gms/internal/ads/xk1;

    move-result-object p1

    return-object p1
.end method

.method public final E2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/oh;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->z()Lcom/google/android/gms/internal/ads/rz0;

    move-result-object p1

    return-object p1
.end method

.method public final F1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/n6;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/mj0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/mj0;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final G2(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/rk;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/fv;->w()Lcom/google/android/gms/internal/ads/tk1;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/tk1;->N(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/tk1;

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/tk1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/tk1;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/tk1;->zza()Lcom/google/android/gms/internal/ads/uk1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/uk1;->b()Lcom/google/android/gms/internal/ads/rk1;

    move-result-object p1

    return-object p1
.end method

.method public final G5(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/w;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/fv;->o()Lcom/google/android/gms/internal/ads/mh1;

    move-result-object p4

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/mh1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/mh1;

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/mh1;->b(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/mh1;

    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/mh1;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mh1;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/mh1;->zza()Lcom/google/android/gms/internal/ads/nh1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/nh1;->zza()Lcom/google/android/gms/internal/ads/m61;

    move-result-object p1

    return-object p1
.end method

.method public final P5(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/w;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/fv;->t()Lcom/google/android/gms/internal/ads/gj1;

    move-result-object p4

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/gj1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/gj1;

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/gj1;->b(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/gj1;

    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/gj1;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gj1;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/gj1;->zza()Lcom/google/android/gms/internal/ads/hj1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hj1;->zza()Lcom/google/android/gms/internal/ads/n71;

    move-result-object p1

    return-object p1
.end method

.method public final S1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/w;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbq;

    const v1, 0xc91ed10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbq;-><init>(IIZZ)V

    new-instance p4, Lcom/google/android/gms/ads/internal/q;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbq;)V

    return-object p4
.end method

.method public final T0(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/w;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->r()Lcom/google/android/gms/internal/ads/cg1;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/cg1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cg1;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/cg1;->N(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cg1;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/cg1;->zza()Lcom/google/android/gms/internal/ads/dg1;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->a3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dg1;->b()Lcom/google/android/gms/internal/ads/eh1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dg1;->zza()Lcom/google/android/gms/internal/ads/ag1;

    move-result-object p1

    return-object p1
.end method

.method public final V5(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/s;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p3

    new-instance p4, Lcom/google/android/gms/internal/ads/j61;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/j61;-><init>(Lcom/google/android/gms/internal/ads/fv;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final X0(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/he;ILcom/google/android/gms/internal/ads/aa;)Lcom/google/android/gms/internal/ads/ca;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->c()Lcom/google/android/gms/internal/ads/qs0;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/qs0;->N(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/qs0;

    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/qs0;->a(Lcom/google/android/gms/internal/ads/aa;)Lcom/google/android/gms/internal/ads/qs0;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/qs0;->zza()Lcom/google/android/gms/internal/ads/rs0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/rs0;->zza()Lcom/google/android/gms/internal/ads/os0;

    move-result-object p1

    return-object p1
.end method

.method public final c0(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/zh;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/t;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/t;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:I

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

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/t;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/t;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/z;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/v;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/v;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/s;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0
.end method

.method public final h1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/ln;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/fv;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->y()Lcom/google/android/gms/ads/x/a/t;

    move-result-object p1

    return-object p1
.end method

.method public final m1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/k6;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/gms/internal/ads/oj0;

    const v1, 0xc91ed10

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/oj0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final z3(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/o0;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/fv;->e(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->m()Lcom/google/android/gms/internal/ads/by;

    move-result-object p1

    return-object p1
.end method
