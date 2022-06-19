.class public final Lcom/google/android/gms/internal/ads/aoa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ljava/util/concurrent/ScheduledExecutorService;

.field final c:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aoa;->d:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoa;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aoa;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aoa;->c:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aoa;)V
    .locals 2

    .line 1022
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/aoe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aoe;-><init>(Lcom/google/android/gms/internal/ads/aoa;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
