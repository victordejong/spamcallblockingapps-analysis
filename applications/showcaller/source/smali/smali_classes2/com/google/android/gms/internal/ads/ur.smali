.class public final Lcom/google/android/gms/internal/ads/ur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tq;

.field private final b:Lcom/google/android/gms/internal/ads/rq;

.field private final c:Lcom/google/android/gms/internal/ads/av;

.field private final d:Lcom/google/android/gms/internal/ads/e10;

.field private final e:Lcom/google/android/gms/internal/ads/se0;

.field private final f:Lcom/google/android/gms/internal/ads/hb0;

.field private final g:Lcom/google/android/gms/internal/ads/f10;

.field private h:Lcom/google/android/gms/internal/ads/kc0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tq;Lcom/google/android/gms/internal/ads/rq;Lcom/google/android/gms/internal/ads/av;Lcom/google/android/gms/internal/ads/e10;Lcom/google/android/gms/internal/ads/se0;Lcom/google/android/gms/internal/ads/hb0;Lcom/google/android/gms/internal/ads/f10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Lcom/google/android/gms/internal/ads/tq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/rq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/av;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/e10;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ur;->e:Lcom/google/android/gms/internal/ads/se0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ur;->f:Lcom/google/android/gms/internal/ads/hb0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ur;->g:Lcom/google/android/gms/internal/ads/f10;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/tq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Lcom/google/android/gms/internal/ads/tq;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/rq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/rq;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/av;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/av;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/e10;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/e10;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/hb0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ur;->f:Lcom/google/android/gms/internal/ads/hb0;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/kc0;)Lcom/google/android/gms/internal/ads/kc0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ur;->h:Lcom/google/android/gms/internal/ads/kc0;

    return-object p1
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/kc0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ur;->h:Lcom/google/android/gms/internal/ads/kc0;

    return-object p0
.end method

.method static synthetic h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 2
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 3
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->d()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xh0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ts;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/kr;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/kr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ts;

    return-object p1
.end method

.method public final j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ts;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/mr;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/mr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ts;

    return-object p1
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ps;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/or;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/or;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ps;

    return-object p1
.end method

.method public final l(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/kz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/sr;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/sr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/kz;

    return-object p1
.end method

.method public final m(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/fe0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/tr;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/tr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/fe0;

    return-object p1
.end method

.method public final n(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/kb0;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 6
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/kb0;

    return-object p1
.end method

.method public final o(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/yg0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/fr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/yg0;

    return-object p1
.end method

.method public final p(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ab0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/hr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ab0;

    return-object p1
.end method
