.class final Lcom/google/android/gms/internal/ads/kq2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Landroid/webkit/WebView;

.field final synthetic e:Lcom/google/android/gms/internal/ads/lq2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lq2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kq2;->e:Lcom/google/android/gms/internal/ads/lq2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/lq2;->l(Lcom/google/android/gms/internal/ads/lq2;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kq2;->d:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kq2;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
