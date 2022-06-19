.class public final Lcom/google/android/gms/internal/ads/dtz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dtg;

.field private final b:Lcom/google/android/gms/internal/ads/beb$a$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dtg;Lcom/google/android/gms/internal/ads/beb$a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtz;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dtz;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    return-void
.end method

.method private final a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtz;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 1084
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtz;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 2084
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->g:Ljava/util/concurrent/Future;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtz;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 3083
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->f:Lcom/google/android/gms/internal/ads/beb$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtz;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    monitor-enter v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dtz;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->g()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v4

    .line 11
    array-length v5, v0

    invoke-virtual {v3, v0, v5, v4}, Lcom/google/android/gms/internal/ads/dlm;->a([BILcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dlm;

    .line 12
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtz;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
