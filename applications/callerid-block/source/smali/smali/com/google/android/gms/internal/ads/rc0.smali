.class final synthetic Lcom/google/android/gms/internal/ads/rc0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/sc0;

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sc0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rc0;->b:Lcom/google/android/gms/internal/ads/sc0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rc0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc0;->b:Lcom/google/android/gms/internal/ads/sc0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rc0;->c:Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sc0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v1

    const-string v2, "EventEmitter.notify"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zn;->h(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Event emitter exception."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/y0;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
