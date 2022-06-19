.class public Lcom/google/android/gms/internal/ads/vj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vl;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/vj;
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/vu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vu;-><init>()V

    .line 53
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_1

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/vr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    goto :goto_0

    .line 43
    :cond_1
    const/16 v0, 0x18

    if-lt p0, v0, :cond_2

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/vs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vs;-><init>()V

    goto :goto_0

    .line 45
    :cond_2
    const/16 v0, 0x15

    if-lt p0, v0, :cond_3

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/vp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vp;-><init>()V

    goto :goto_0

    .line 47
    :cond_3
    const/16 v0, 0x13

    if-lt p0, v0, :cond_4

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/vq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vq;-><init>()V

    goto :goto_0

    .line 49
    :cond_4
    const/16 v0, 0x12

    if-lt p0, v0, :cond_5

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/vn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vn;-><init>()V

    goto :goto_0

    .line 51
    :cond_5
    const/16 v0, 0x11

    if-lt p0, v0, :cond_6

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    goto :goto_0

    .line 53
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/act;)Z
    .locals 1

    .prologue
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0

    .line 8
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/act;->onPause()V

    .line 9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/act;)Z
    .locals 1

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/act;->onResume()V

    .line 13
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 21
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x5

    return v0
.end method

.method public a(Landroid/content/ContentResolver;)I
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "wifi_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)Lcom/google/android/gms/internal/ads/acs;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/adu;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/adu;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/dxf;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->c:Lcom/google/android/gms/internal/ads/dxf;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/vm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vm;-><init>(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xj;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 5
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/ContentResolver;)I
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 18
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public c(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/vj;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    :goto_0
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 25
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    const-string/jumbo v2, "Failed to obtain CookieManager."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    return-wide v0
.end method
