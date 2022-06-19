.class public Lcom/verizon/ads/webcontroller/WebController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/webcontroller/WebController$LoadListener;,
        Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;,
        Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Landroid/os/Handler;


# instance fields
.field private volatile e:Ljava/lang/Runnable;

.field private f:Z

.field private g:Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

.field private h:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/webcontroller/WebController;->b:Ljava/lang/String;

    .line 33
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    sput-object v1, Lcom/verizon/ads/webcontroller/WebController;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/webcontroller/WebController;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 21
    sget-object v0, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/webcontroller/WebController;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController;->h:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/webcontroller/WebController;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/verizon/ads/webcontroller/WebController;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/verizon/ads/webcontroller/WebController;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/verizon/ads/webcontroller/WebController;->j:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/verizon/ads/webcontroller/WebController;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/verizon/ads/webcontroller/WebController;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/verizon/ads/webcontroller/WebController;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/verizon/ads/webcontroller/WebController;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/verizon/ads/webcontroller/WebController;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/verizon/ads/webcontroller/WebController;)V
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1253
    sget-object v0, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Stopping load timer"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1255
    sget-object v0, Lcom/verizon/ads/webcontroller/WebController;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/ads/webcontroller/WebController;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1256
    iput-object v0, p0, Lcom/verizon/ads/webcontroller/WebController;->e:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/verizon/ads/webcontroller/WebController;->h:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    return-object p0
.end method

.method static synthetic e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/verizon/ads/webcontroller/WebController;->g:Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    return-object p0
.end method

.method static synthetic f(Lcom/verizon/ads/webcontroller/WebController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/verizon/ads/webcontroller/WebController;->f:Z

    return v0
.end method


# virtual methods
.method public fireImpression()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController;->h:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->fireImpression()V

    :cond_0
    return-void
.end method

.method public getVASAdsMRAIDWebView()Landroid/view/View;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController;->h:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/verizon/ads/webcontroller/WebController;->j:Z

    return v0
.end method

.method public isResized()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/verizon/ads/webcontroller/WebController;->k:Z

    return v0
.end method

.method public load(Landroid/content/Context;ILcom/verizon/ads/webcontroller/WebController$LoadListener;Z)V
    .locals 6

    if-nez p3, :cond_0

    .line 83
    sget-object p1, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    const-string p2, "loadListener cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 89
    sget-object p1, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    const-string p2, "context cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 90
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/webcontroller/WebController;->b:Ljava/lang/String;

    const-string p4, "context cannot be null."

    const/4 v0, -0x3

    invoke-direct {p1, p2, p4, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p1}, Lcom/verizon/ads/webcontroller/WebController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_1
    int-to-long v0, p2

    .line 1218
    monitor-enter p0

    .line 1219
    :try_start_0
    iget-object p2, p0, Lcom/verizon/ads/webcontroller/WebController;->e:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    .line 1220
    sget-object p2, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Timeout timer already running"

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1222
    monitor-exit p0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 1227
    monitor-exit p0

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    .line 1231
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1232
    sget-object p2, Lcom/verizon/ads/webcontroller/WebController;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Load will timeout in %d ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1235
    :cond_4
    new-instance p2, Lcom/verizon/ads/webcontroller/WebController$3;

    invoke-direct {p2, p0}, Lcom/verizon/ads/webcontroller/WebController$3;-><init>(Lcom/verizon/ads/webcontroller/WebController;)V

    iput-object p2, p0, Lcom/verizon/ads/webcontroller/WebController;->e:Ljava/lang/Runnable;

    .line 1244
    sget-object p2, Lcom/verizon/ads/webcontroller/WebController;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/verizon/ads/webcontroller/WebController;->e:Ljava/lang/Runnable;

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    new-instance p2, Lcom/verizon/ads/webcontroller/WebController$1;

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/verizon/ads/webcontroller/WebController$1;-><init>(Lcom/verizon/ads/webcontroller/WebController;Landroid/content/Context;ZLcom/verizon/ads/webcontroller/WebController$LoadListener;)V

    invoke-static {p2}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1245
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public prepare(Lcom/verizon/ads/AdSession;Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;
    .locals 2

    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/webcontroller/WebController;->b:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "Ad content is empty."

    invoke-direct {p1, p2, v1, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 66
    :cond_0
    iput-object p2, p0, Lcom/verizon/ads/webcontroller/WebController;->i:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 131
    new-instance v0, Lcom/verizon/ads/webcontroller/WebController$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webcontroller/WebController$2;-><init>(Lcom/verizon/ads/webcontroller/WebController;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImmersiveEnabled(Z)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController;->h:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setImmersive(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController;->g:Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    return-void
.end method
