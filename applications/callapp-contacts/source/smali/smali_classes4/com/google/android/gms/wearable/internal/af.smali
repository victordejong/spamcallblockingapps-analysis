.class public final Lcom/google/android/gms/wearable/internal/af;
.super Lcom/google/android/gms/wearable/internal/bg;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/wearable/internal/ag;

.field private c:Lcom/google/android/gms/wearable/internal/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/bg;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/af;->b:Lcom/google/android/gms/wearable/internal/ag;

    .line 12
    new-instance v2, Lcom/google/android/gms/wearable/internal/m;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/wearable/internal/m;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/af;->c:Lcom/google/android/gms/wearable/internal/m;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ag;->a(Lcom/google/android/gms/wearable/internal/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ag;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/internal/ag;

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/af;->b:Lcom/google/android/gms/wearable/internal/ag;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/af;->c:Lcom/google/android/gms/wearable/internal/m;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/gms/wearable/internal/ag;->a(Lcom/google/android/gms/wearable/internal/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
