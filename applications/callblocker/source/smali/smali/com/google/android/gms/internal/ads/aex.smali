.class public Lcom/google/android/gms/internal/ads/aex;
.super Lcom/google/android/gms/internal/ads/aew;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afc;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aev;

.field private b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aev;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aew;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->e()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aex;->a:Lcom/google/android/gms/internal/ads/aev;

    .line 4
    invoke-super {p0, p2}, Lcom/google/android/gms/internal/ads/aew;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5
    return-void
.end method

.method private final declared-synchronized a()V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aex;->c:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aex;->c:Z

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized B()Z
    .locals 1

    .prologue
    .line 6
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aex;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized C()V
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aex;->a()V

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/afa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/afa;-><init>(Lcom/google/android/gms/internal/ads/aex;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic O()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aew;->destroy()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aew;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aew;->d(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 8
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aex;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    monitor-exit p0

    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aex;->b:Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aex;->a:Lcom/google/android/gms/internal/ads/aev;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/afc;)V

    .line 12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aex;->g(Z)V

    .line 13
    const-string/jumbo v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    const-string/jumbo v0, "about:blank"

    invoke-super {p0, v0}, Lcom/google/android/gms/internal/ads/aew;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aew;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 28
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aex;->g(Z)V

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aex;->a()V

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    throw v0
.end method

.method protected g(Z)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 7
    return-void
.end method

.method public declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aew;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-super/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/aew;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aew;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aew;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aew;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aew;->onResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aew;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aew;->stopLoading()V

    goto :goto_0
.end method
