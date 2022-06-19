.class final Lcom/google/android/gms/internal/ads/am0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/bm0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bm0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/am0;->d:Lcom/google/android/gms/internal/ads/bm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->z()Lcom/google/android/gms/internal/ads/cm0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/am0;->d:Lcom/google/android/gms/internal/ads/bm0;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cm0;->h(Lcom/google/android/gms/internal/ads/bm0;)V

    return-void
.end method
