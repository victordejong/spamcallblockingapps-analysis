.class final Lcom/google/android/gms/internal/ads/dun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/duk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/duk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dun;->a:Lcom/google/android/gms/internal/ads/duk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dun;->a:Lcom/google/android/gms/internal/ads/duk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/duk;->d:Lcom/google/android/gms/internal/ads/dui;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dun;->a:Lcom/google/android/gms/internal/ads/duk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/duk;->a:Lcom/google/android/gms/internal/ads/duc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dun;->a:Lcom/google/android/gms/internal/ads/duk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/duk;->b:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dun;->a:Lcom/google/android/gms/internal/ads/duk;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/duk;->c:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/dui;->a(Lcom/google/android/gms/internal/ads/duc;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 4
    return-void
.end method
