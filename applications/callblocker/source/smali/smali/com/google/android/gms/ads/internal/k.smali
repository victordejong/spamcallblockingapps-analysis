.class final Lcom/google/android/gms/ads/internal/k;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dza;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :goto_0
    return v0

    .line 4
    :cond_0
    const-string/jumbo v2, "gmsg://noAdLoaded"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dza;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/l;->a(I)V

    move v0, v1

    .line 11
    goto :goto_0

    .line 8
    :catch_0
    move-exception v2

    .line 9
    const-string/jumbo v3, "#007 Could not call remote method."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    const-string/jumbo v2, "gmsg://scriptLoadFailed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dza;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/l;->a(I)V

    move v0, v1

    .line 19
    goto :goto_0

    .line 16
    :catch_1
    move-exception v2

    .line 17
    const-string/jumbo v3, "#007 Could not call remote method."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 20
    :cond_4
    const-string/jumbo v0, "gmsg://adResized"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->c()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 26
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/l;->c(Ljava/lang/String;)I

    move-result v0

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/l;->a(I)V

    move v0, v1

    .line 28
    goto :goto_0

    .line 24
    :catch_2
    move-exception v0

    .line 25
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 29
    :cond_6
    const-string/jumbo v0, "gmsg://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 30
    goto/16 :goto_0

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 32
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->b()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 36
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/l;->b(Lcom/google/android/gms/ads/internal/l;Ljava/lang/String;)V

    move v0, v1

    .line 38
    goto/16 :goto_0

    .line 34
    :catch_3
    move-exception v0

    .line 35
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
