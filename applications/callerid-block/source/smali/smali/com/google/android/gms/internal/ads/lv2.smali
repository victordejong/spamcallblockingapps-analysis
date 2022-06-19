.class final Lcom/google/android/gms/internal/ads/lv2;
.super Lcom/google/android/gms/internal/ads/fp;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/fp<",
        "Lcom/google/android/gms/internal/ads/uv2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/gms/internal/ads/sv2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sv2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lv2;->c:Lcom/google/android/gms/internal/ads/sv2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sv2;->b(Lcom/google/android/gms/internal/ads/sv2;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/fp;->cancel(Z)Z

    move-result p1

    return p1
.end method
