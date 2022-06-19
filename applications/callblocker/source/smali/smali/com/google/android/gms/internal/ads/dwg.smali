.class final Lcom/google/android/gms/internal/ads/dwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/yo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dwa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwa;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwg;->b:Lcom/google/android/gms/internal/ads/dwa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dwg;->a:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwg;->b:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->b(Lcom/google/android/gms/internal/ads/dwa;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwg;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Connection failed."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

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
