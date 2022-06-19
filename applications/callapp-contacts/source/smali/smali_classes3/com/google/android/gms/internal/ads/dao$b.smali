.class final Lcom/google/android/gms/internal/ads/dao$b;
.super Lcom/google/android/gms/internal/ads/dao$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dao$a;-><init>(Lcom/google/android/gms/internal/ads/dap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dap;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dao$b;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/dao;)I
    .locals 1

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dao;->b(Lcom/google/android/gms/internal/ads/dao;)I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dao;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dao;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dao;->a(Lcom/google/android/gms/internal/ads/dao;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dao;->a(Lcom/google/android/gms/internal/ads/dao;Ljava/util/Set;)Ljava/util/Set;

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
