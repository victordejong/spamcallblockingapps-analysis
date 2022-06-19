.class final synthetic Lcom/google/android/gms/internal/ads/to0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vo0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/to0;->a:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/to0;->a:Lcom/google/android/gms/internal/ads/wn0;

    check-cast v0, Lcom/google/android/gms/internal/ads/oo0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oo0;->l1()Lcom/google/android/gms/internal/ads/do0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jp0;->y0(Landroid/net/Uri;)V

    return-void
.end method
