.class final Lcom/google/android/gms/internal/ads/bs1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/google/android/gms/internal/ads/cs1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cs1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bs1;->c:Lcom/google/android/gms/internal/ads/cs1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cs1;->l(Lcom/google/android/gms/internal/ads/cs1;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bs1;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bs1;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
