.class final Lcom/google/android/gms/internal/ads/ok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final d:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/google/android/gms/internal/ads/fk;

.field final synthetic f:Landroid/webkit/WebView;

.field final synthetic g:Z

.field final synthetic h:Lcom/google/android/gms/internal/ads/qk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qk;Lcom/google/android/gms/internal/ads/fk;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->h:Lcom/google/android/gms/internal/ads/qk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ok;->e:Lcom/google/android/gms/internal/ads/fk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ok;->f:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/ok;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/mk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/mk;-><init>(Lcom/google/android/gms/internal/ads/ok;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->d:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->f:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ok;->d:Landroid/webkit/ValueCallback;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->d:Landroid/webkit/ValueCallback;

    check-cast v0, Lcom/google/android/gms/internal/ads/mk;

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mk;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
