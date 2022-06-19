.class public final Lcom/google/android/gms/internal/ads/acd;
.super Lcom/google/android/gms/internal/ads/abt;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aad;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/abt;-><init>(Lcom/google/android/gms/internal/ads/aad;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acd;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aad;

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V

    .line 6
    :cond_0
    const-string/jumbo v0, "VideoStreamNoopCache is doing nothing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "noop"

    const-string/jumbo v2, "Noop cache is a noop."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method
