.class public final Lcom/google/android/gms/internal/consent_sdk/ag;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/consent_sdk/zzbe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Lcom/google/android/gms/internal/consent_sdk/ah;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/ag;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;)V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/ak;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/ak;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->b(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/ak;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->c(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Z

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/ak;

    move-result-object p1

    .line 1010
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/ak;->b:Lcom/google/android/gms/internal/consent_sdk/u;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1011
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p4, v2, p2

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const-string p3, "WebResourceError(%d, %s): %s"

    .line 1012
    invoke-static {v1, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 1013
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/u;->a(Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/ak;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/ak;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ag;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/ak;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/ak;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
