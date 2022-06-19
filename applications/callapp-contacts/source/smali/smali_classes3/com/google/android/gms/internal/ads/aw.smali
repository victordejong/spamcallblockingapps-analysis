.class final synthetic Lcom/google/android/gms/internal/ads/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aw;->a:Lcom/google/android/gms/internal/ads/ax;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aw;->a:Lcom/google/android/gms/internal/ads/ax;

    .line 1097
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ax;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bi;

    .line 1098
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bi;->a()Lcom/google/android/gms/internal/ads/bh;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bh;->a:Ljava/lang/String;

    .line 1103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1104
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ax;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bi;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/ax;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ax;->a(Ljava/util/Map;Lcom/google/android/gms/internal/ads/bh;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CsiReporter:reporter interrupted"

    .line 1101
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
