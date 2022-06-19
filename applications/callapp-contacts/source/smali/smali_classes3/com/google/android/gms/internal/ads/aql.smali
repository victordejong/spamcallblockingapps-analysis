.class final synthetic Lcom/google/android/gms/internal/ads/aql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aql;->a:Lcom/google/android/gms/internal/ads/aqm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aql;->a:Lcom/google/android/gms/internal/ads/aqm;

    .line 1039
    monitor-enter v0

    .line 1040
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dag;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    monitor-exit v0

    return-void

    .line 1042
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dcc;->b(Ljava/lang/Object;)Z

    .line 1043
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
