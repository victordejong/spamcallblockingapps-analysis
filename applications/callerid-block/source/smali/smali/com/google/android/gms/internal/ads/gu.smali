.class final synthetic Lcom/google/android/gms/internal/ads/gu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/iu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gu;->a:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gu;->a:Lcom/google/android/gms/internal/ads/jt;

    check-cast v0, Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/au;->j1()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/wu;->y0(Landroid/net/Uri;)V

    return-void
.end method
