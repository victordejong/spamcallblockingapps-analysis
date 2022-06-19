.class final Lcom/google/android/gms/internal/ads/cc0;
.super Lcom/google/android/gms/internal/ads/ug0;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/ads/y/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dc0;Lcom/google/android/gms/ads/y/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cc0;->d:Lcom/google/android/gms/ads/y/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ug0;-><init>()V

    return-void
.end method


# virtual methods
.method public final N1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/y/b;

    new-instance v1, Lcom/google/android/gms/internal/ads/yu;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/yu;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/y/b;-><init>(Lcom/google/android/gms/internal/ads/yu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cc0;->d:Lcom/google/android/gms/ads/y/c;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/y/c;->b(Lcom/google/android/gms/ads/y/b;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cc0;->d:Lcom/google/android/gms/ads/y/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/y/c;->a(Ljava/lang/String;)V

    return-void
.end method
