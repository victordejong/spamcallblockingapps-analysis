.class public Lcom/google/android/gms/internal/ads/crb;
.super Lcom/google/android/gms/internal/ads/crl;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/crl",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crl;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;)",
            "Lcom/google/android/gms/internal/ads/crb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/crb;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/crb;

    .line 5
    :goto_0
    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/crd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/crd;-><init>(Lcom/google/android/gms/internal/ads/crt;)V

    move-object p0, v0

    .line 5
    goto :goto_0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/crb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crb;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/coe",
            "<-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/cqk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cqk;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;)V

    .line 24
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/crb;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 13
    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/cql;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cql;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;)V

    .line 17
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/crb;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/android/gms/internal/ads/coe",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/crb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 6
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/cqg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cqg;-><init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;)V

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/ads/crb;

    return-object v0
.end method
