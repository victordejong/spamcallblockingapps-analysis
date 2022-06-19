.class final Lcom/google/android/gms/internal/ads/btf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/avq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/awq;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/btg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btg;Lcom/google/android/gms/internal/ads/awq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btf;->b:Lcom/google/android/gms/internal/ads/btg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btf;->a:Lcom/google/android/gms/internal/ads/awq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/avq;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btf;->b:Lcom/google/android/gms/internal/ads/btg;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btf;->b:Lcom/google/android/gms/internal/ads/btg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/btg;->a(Lcom/google/android/gms/internal/ads/btg;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btf;->b:Lcom/google/android/gms/internal/ads/btg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/btg;->a(Lcom/google/android/gms/internal/ads/btg;Lcom/google/android/gms/internal/ads/avq;)Lcom/google/android/gms/internal/ads/avq;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amh;->g_()V

    .line 14
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btf;->b:Lcom/google/android/gms/internal/ads/btg;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btf;->b:Lcom/google/android/gms/internal/ads/btg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/btg;->a(Lcom/google/android/gms/internal/ads/btg;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btf;->a:Lcom/google/android/gms/internal/ads/awq;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awq;->a()Lcom/google/android/gms/internal/ads/apt;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/apt;->a(I)V

    .line 7
    const-string/jumbo v0, "InterstitialAdManagerShim.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chp;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
