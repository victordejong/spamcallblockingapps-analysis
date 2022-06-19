.class final synthetic Lcom/google/android/gms/internal/ads/adr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/adt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adr;->a:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adr;->a:Lcom/google/android/gms/internal/ads/act;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    .line 3
    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 7
    :goto_0
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/aef;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method
