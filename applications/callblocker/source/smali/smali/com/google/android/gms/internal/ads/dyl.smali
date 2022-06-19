.class public Lcom/google/android/gms/internal/ads/dyl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dxy;

.field private final b:Lcom/google/android/gms/internal/ads/dxv;

.field private final c:Lcom/google/android/gms/internal/ads/ebx;

.field private final d:Lcom/google/android/gms/internal/ads/dy;

.field private final e:Lcom/google/android/gms/internal/ads/rf;

.field private final f:Lcom/google/android/gms/internal/ads/se;

.field private final g:Lcom/google/android/gms/internal/ads/nw;

.field private final h:Lcom/google/android/gms/internal/ads/eb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dxy;Lcom/google/android/gms/internal/ads/dxv;Lcom/google/android/gms/internal/ads/ebx;Lcom/google/android/gms/internal/ads/dy;Lcom/google/android/gms/internal/ads/rf;Lcom/google/android/gms/internal/ads/se;Lcom/google/android/gms/internal/ads/nw;Lcom/google/android/gms/internal/ads/eb;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->a:Lcom/google/android/gms/internal/ads/dxy;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dyl;->b:Lcom/google/android/gms/internal/ads/dxv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dyl;->c:Lcom/google/android/gms/internal/ads/ebx;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/dy;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/rf;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dyl;->f:Lcom/google/android/gms/internal/ads/se;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dyl;->g:Lcom/google/android/gms/internal/ads/nw;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dyl;->h:Lcom/google/android/gms/internal/ads/eb;

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/dxy;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->a:Lcom/google/android/gms/internal/ads/dxy;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dyl;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/dxv;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->b:Lcom/google/android/gms/internal/ads/dxv;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    const-string/jumbo v0, "action"

    const-string/jumbo v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->g()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 17
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/ebx;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->c:Lcom/google/android/gms/internal/ads/ebx;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/rf;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/rf;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/nw;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->g:Lcom/google/android/gms/internal/ads/nw;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;)Lcom/google/android/gms/internal/ads/dzg;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/dyt;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dyt;-><init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dyu;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/dzg;

    .line 27
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/ny;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/dyo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dyo;-><init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/app/Activity;)V

    const-string/jumbo v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    const-string/jumbo v2, "useClientJar flag not found in activity intent extras."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 50
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/dyu;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ny;

    .line 51
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
