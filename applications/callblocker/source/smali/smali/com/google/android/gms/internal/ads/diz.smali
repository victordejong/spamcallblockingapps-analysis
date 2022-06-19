.class final Lcom/google/android/gms/internal/ads/diz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dts;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aza;Lcom/google/android/gms/internal/ads/dts;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/diz;->b:Lcom/google/android/gms/internal/ads/aza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/diz;->a:Lcom/google/android/gms/internal/ads/dts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diz;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aza;->a(Lcom/google/android/gms/internal/ads/aza;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/diz;->a:Lcom/google/android/gms/internal/ads/dts;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    return-void

    .line 5
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
