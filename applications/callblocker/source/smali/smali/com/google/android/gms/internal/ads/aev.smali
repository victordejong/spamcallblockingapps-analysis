.class public Lcom/google/android/gms/internal/ads/aev;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/google/android/gms/internal/ads/afc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string/jumbo v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string/jumbo v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/aev;->a:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string/jumbo v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string/jumbo v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/aev;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/afc;)V
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aev;->c:Lcom/google/android/gms/internal/ads/afc;

    .line 3
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public c(Lcom/google/android/gms/internal/ads/aey;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 12
    if-nez p2, :cond_0

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    const-string/jumbo v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aev;->b(Lcom/google/android/gms/internal/ads/aey;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4
    if-nez p2, :cond_0

    .line 10
    :goto_0
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aey;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aev;->c:Lcom/google/android/gms/internal/ads/afc;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aev;->c:Lcom/google/android/gms/internal/ads/afc;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/afc;->a(Lcom/google/android/gms/internal/ads/aey;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/aey;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/aev;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 33
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    :cond_1
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 35
    if-nez p3, :cond_0

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 38
    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/aev;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 39
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    :cond_2
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 28
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aey;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aev;->d(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 25
    if-nez p2, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aev;->d(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 21
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aey;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aev;->c(Lcom/google/android/gms/internal/ads/aey;)Z

    move-result v0

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aev;->c(Lcom/google/android/gms/internal/ads/aey;)Z

    move-result v0

    goto :goto_0
.end method
