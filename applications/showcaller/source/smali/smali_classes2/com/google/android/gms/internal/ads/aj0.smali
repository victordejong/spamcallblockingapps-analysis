.class final Lcom/google/android/gms/internal/ads/aj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/cj0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cj0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aj0;->a:Lcom/google/android/gms/internal/ads/cj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aj0;->a:Lcom/google/android/gms/internal/ads/cj0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cj0;->a(Lcom/google/android/gms/internal/ads/cj0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aj0;->a:Lcom/google/android/gms/internal/ads/cj0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cj0;->a(Lcom/google/android/gms/internal/ads/cj0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
