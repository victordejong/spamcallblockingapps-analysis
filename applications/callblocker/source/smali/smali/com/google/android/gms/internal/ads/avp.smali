.class public final Lcom/google/android/gms/internal/ads/avp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dvk;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/coa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avp;->a:Lcom/google/android/gms/internal/ads/coa;

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/coa;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/coa;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/coa;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/avp;->a:Lcom/google/android/gms/internal/ads/coa;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :goto_0
    return-void

    .line 4
    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, " Failed to initialize the internal ArWebView: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avp;->a:Lcom/google/android/gms/internal/ads/coa;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/coa;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 17
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avp;->a:Lcom/google/android/gms/internal/ads/coa;

    if-nez v0, :cond_0

    .line 7
    const-string/jumbo v0, "ArWebView is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 10
    :goto_0
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/coa;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avp;->a:Lcom/google/android/gms/internal/ads/coa;

    return-object v0
.end method
