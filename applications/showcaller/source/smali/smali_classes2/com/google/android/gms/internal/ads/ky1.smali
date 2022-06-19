.class public final Lcom/google/android/gms/internal/ads/ky1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qw1<",
        "Lcom/google/android/gms/internal/ads/xw0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vx0;

.field private final b:Lcom/google/android/gms/internal/ads/rx1;

.field private final c:Lcom/google/android/gms/internal/ads/s03;

.field private final d:Lcom/google/android/gms/internal/ads/a31;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/vx0;Lcom/google/android/gms/internal/ads/rx1;Lcom/google/android/gms/internal/ads/a31;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/s03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ky1;->a:Lcom/google/android/gms/internal/ads/vx0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ky1;->b:Lcom/google/android/gms/internal/ads/rx1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ky1;->d:Lcom/google/android/gms/internal/ads/a31;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ky1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ky1;->c:Lcom/google/android/gms/internal/ads/s03;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ky1;)Lcom/google/android/gms/internal/ads/vx0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ky1;->a:Lcom/google/android/gms/internal/ads/vx0;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ky1;)Lcom/google/android/gms/internal/ads/a31;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ky1;->d:Lcom/google/android/gms/internal/ads/a31;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xj2;->a()Lcom/google/android/gms/internal/ads/w00;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ky1;->b:Lcom/google/android/gms/internal/ads/rx1;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rx1;->a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/xw0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ky1;->c:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/hy1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/hy1;-><init>(Lcom/google/android/gms/internal/ads/ky1;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/xw0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ky1;->a:Lcom/google/android/gms/internal/ads/vx0;

    new-instance v1, Lcom/google/android/gms/internal/ads/mz0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/iy0;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xj2;->a()Lcom/google/android/gms/internal/ads/w00;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/iy1;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/iy1;-><init>(Lcom/google/android/gms/internal/ads/ky1;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/iy0;-><init>(Lcom/google/android/gms/internal/ads/w00;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vx0;->e(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/iy0;)Lcom/google/android/gms/internal/ads/hy0;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hy0;->zza()Lcom/google/android/gms/internal/ads/xw0;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ky1;->b:Lcom/google/android/gms/internal/ads/rx1;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rx1;->b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/ej2;->N:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ky1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    .line 2
    invoke-static {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/jy1;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/jy1;-><init>(Lcom/google/android/gms/internal/ads/ky1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ky1;->c:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method
