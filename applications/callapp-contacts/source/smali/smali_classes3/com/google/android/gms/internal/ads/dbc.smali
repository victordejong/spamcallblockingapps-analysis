.class public Lcom/google/android/gms/internal/ads/dbc;
.super Lcom/google/android/gms/internal/ads/dbl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dbl<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbl;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/dbc<",
            "TV;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/dbc;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/dbc;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dbe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dbe;-><init>(Lcom/google/android/gms/internal/ads/dbt;)V

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbc<",
            "TV;>;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dbc;

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cxu<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbc<",
            "TT;>;"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/dal;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dal;-><init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;)V

    .line 30
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dbv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dag;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/dbc;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/daq<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbc<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dai;-><init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;)V

    .line 23
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dbv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dag;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/dbc;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/cxu<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbc<",
            "TV;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dae;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dae;-><init>(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;)V

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dbv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dag;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/ads/dbc;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/daq<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbc<",
            "TV;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/daf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/daf;-><init>(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;)V

    .line 15
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dbv;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dag;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/dbc;

    return-object v0
.end method
