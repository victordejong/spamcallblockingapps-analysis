.class final Lcom/google/android/gms/internal/ads/mk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/ok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ok;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/ok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/ok;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ok;->h:Lcom/google/android/gms/internal/ads/qk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ok;->e:Lcom/google/android/gms/internal/ads/fk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ok;->f:Landroid/webkit/WebView;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ok;->g:Z

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/qk;->d(Lcom/google/android/gms/internal/ads/fk;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mk;->a(Ljava/lang/String;)V

    return-void
.end method
