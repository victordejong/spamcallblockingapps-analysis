.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeChangeContentObserver"
.end annotation


# instance fields
.field a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 1836
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1838
    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->f:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;

    .line 1839
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->c:Landroid/content/Context;

    .line 1841
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "VolumeChangeDispatcher"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a:Landroid/os/HandlerThread;

    .line 1842
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 1844
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->b:Landroid/os/Handler;

    const-string p2, "audio"

    .line 1847
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    .line 1849
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->d:I

    .line 1850
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    iput p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->e:I

    goto :goto_0

    .line 1852
    :cond_0
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string v1, "Unable to get a reference to the AudioManager."

    invoke-virtual {p2, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 1855
    :goto_0
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1856
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "VolumeChangeContentObserver created with initial vol = %d, max vol = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1859
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;
    .locals 0

    .line 1823
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->f:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;

    return-object p0
.end method

.method static synthetic b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;)I
    .locals 0

    .line 1823
    iget p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->e:I

    return p0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 1871
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1872
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "Setting changed for URI = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1875
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content://settings/system/volume_music_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2885
    iget-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->c:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    if-nez p2, :cond_2

    .line 2887
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string p2, "Unable to obtain a reference to the AudioManager."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 2892
    :cond_2
    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 2894
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 2895
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Current volume vol = %d, last vol = %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2898
    :cond_3
    iget v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->d:I

    if-eq p2, v0, :cond_5

    .line 2903
    iput p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->d:I

    .line 2905
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2906
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Dispatching volume change old vol = %d, new vol = %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2909
    :cond_4
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->b:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
