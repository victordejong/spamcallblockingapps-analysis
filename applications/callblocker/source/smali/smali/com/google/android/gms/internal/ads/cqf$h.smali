.class final Lcom/google/android/gms/internal/ads/cqf$h;
.super Lcom/google/android/gms/internal/ads/cqf$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cqf$a;-><init>(Lcom/google/android/gms/internal/ads/cqf$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/cqf$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cqf$h;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)V
    .locals 0

    .prologue
    .line 4
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/cqf$k;->c:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 5
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/cqf$k;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 2
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/cqf$k;->b:Ljava/lang/Thread;

    .line 3
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$d;Lcom/google/android/gms/internal/ads/cqf$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqf",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/cqf$d;",
            "Lcom/google/android/gms/internal/ads/cqf$d;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqf;->d(Lcom/google/android/gms/internal/ads/cqf;)Lcom/google/android/gms/internal/ads/cqf$d;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 14
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$d;)Lcom/google/android/gms/internal/ads/cqf$d;

    .line 15
    const/4 v0, 0x1

    monitor-exit p1

    .line 16
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqf",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/cqf$k;",
            "Lcom/google/android/gms/internal/ads/cqf$k;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqf;->c(Lcom/google/android/gms/internal/ads/cqf;)Lcom/google/android/gms/internal/ads/cqf$k;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;)Lcom/google/android/gms/internal/ads/cqf$k;

    .line 9
    const/4 v0, 0x1

    monitor-exit p1

    .line 10
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqf",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 20
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/4 v0, 0x1

    monitor-exit p1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
