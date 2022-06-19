.class final Lcom/google/android/gms/internal/ads/ehf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zp;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/egz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/egz;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ehf;->b:Lcom/google/android/gms/internal/ads/egz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ehf;->a:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ehf;->b:Lcom/google/android/gms/internal/ads/egz;

    .line 1024
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/egz;->c:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehf;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
