.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/eaa;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/by;
    .locals 4

    .prologue
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/azt;

    const v3, 0xbfb13e0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/azt;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/cg;
    .locals 4

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 46
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 47
    new-instance v3, Lcom/google/android/gms/internal/ads/azq;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/azq;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v3
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzg;
    .locals 3

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 12
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/bsv;

    invoke-direct {v2, v1, v0, p2}, Lcom/google/android/gms/internal/ads/bsv;-><init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Ljava/lang/String;)V

    return-object v2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 5

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/ads/yd;

    const v2, 0xbfb13e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, p4, v3, v4}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZZ)V

    .line 42
    new-instance v2, Lcom/google/android/gms/ads/internal/l;

    invoke-direct {v2, v0, p2, p3, v1}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yd;)V

    return-object v2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 3

    .prologue
    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4
    invoke-static {v0, p4, p5}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/bsx;

    invoke-direct {v2, v1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/bsx;-><init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;)V

    return-object v2
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/eae;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 37
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->g()Lcom/google/android/gms/internal/ads/ahl;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/ny;
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    .line 35
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget v1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    packed-switch v1, :pswitch_data_0

    .line 34
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    .line 35
    goto :goto_0

    .line 30
    :pswitch_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/s;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    .line 31
    :pswitch_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/u;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/internal/overlay/u;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    .line 32
    :pswitch_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/x;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    .line 33
    :pswitch_3
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/z;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/z;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/qy;
    .locals 2

    .prologue
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 18
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afh;->n()Lcom/google/android/gms/internal/ads/cgi;

    move-result-object v1

    .line 20
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cgi;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cgi;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cgi;->a()Lcom/google/android/gms/internal/ads/cgj;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cgj;->a()Lcom/google/android/gms/internal/ads/cgl;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 3

    .prologue
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 8
    invoke-static {v0, p4, p5}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/btg;

    invoke-direct {v2, v1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/btg;-><init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;)V

    return-object v2
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/eae;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/ru;
    .locals 2

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 49
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afh;->n()Lcom/google/android/gms/internal/ads/cgi;

    move-result-object v1

    .line 51
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cgi;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cgi;

    move-result-object v0

    .line 52
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/cgi;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cgi;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cgi;->a()Lcom/google/android/gms/internal/ads/cgj;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cgj;->b()Lcom/google/android/gms/internal/ads/cgf;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;
    .locals 2

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 58
    invoke-static {v0, p4, p5}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afh;->j()Lcom/google/android/gms/internal/ads/cdo;

    move-result-object v1

    .line 60
    invoke-interface {v1, p3}, Lcom/google/android/gms/internal/ads/cdo;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cdo;

    move-result-object v1

    .line 61
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cdo;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cdo;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cdo;->a()Lcom/google/android/gms/internal/ads/cdl;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cdl;->a()Lcom/google/android/gms/internal/ads/cdf;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/oj;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
