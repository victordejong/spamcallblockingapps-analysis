.class final Lcom/google/android/gms/internal/ads/bth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bto;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bto",
        "<",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bti;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/bti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/bti;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/bti;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/bti;->a(Lcom/google/android/gms/internal/ads/bti;Z)Z

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/amh;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/bti;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/bti;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/bti;->a(Lcom/google/android/gms/internal/ads/bti;Z)Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/bti;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/bti;->a(Lcom/google/android/gms/internal/ads/bti;Lcom/google/android/gms/internal/ads/eav;)Lcom/google/android/gms/internal/ads/eav;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amh;->g_()V

    .line 10
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
