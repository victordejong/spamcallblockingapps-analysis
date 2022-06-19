.class public final Lcom/google/android/gms/internal/ads/q11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/vz0<",
        "Lcom/google/android/gms/internal/ads/u10;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s20;

.field private final b:Lcom/google/android/gms/internal/ads/w01;

.field private final c:Lcom/google/android/gms/internal/ads/sz1;

.field private final d:Lcom/google/android/gms/internal/ads/u70;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s20;Lcom/google/android/gms/internal/ads/w01;Lcom/google/android/gms/internal/ads/u70;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/sz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q11;->a:Lcom/google/android/gms/internal/ads/s20;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q11;->b:Lcom/google/android/gms/internal/ads/w01;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q11;->d:Lcom/google/android/gms/internal/ads/u70;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/q11;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/q11;->c:Lcom/google/android/gms/internal/ads/sz1;

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/q11;)Lcom/google/android/gms/internal/ads/s20;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q11;->a:Lcom/google/android/gms/internal/ads/s20;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/q11;)Lcom/google/android/gms/internal/ads/u70;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q11;->d:Lcom/google/android/gms/internal/ads/u70;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/al1;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/u10;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q11;->c:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v1, Lcom/google/android/gms/internal/ads/n11;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/n11;-><init>(Lcom/google/android/gms/internal/ads/q11;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sz1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Z
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sl1;->a()Lcom/google/android/gms/internal/ads/t7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q11;->b:Lcom/google/android/gms/internal/ads/w01;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/w01;->b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Lcom/google/android/gms/internal/ads/u10;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q11;->a:Lcom/google/android/gms/internal/ads/s20;

    new-instance v1, Lcom/google/android/gms/internal/ads/k40;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/f30;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/sl1;->a()Lcom/google/android/gms/internal/ads/t7;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/o11;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/o11;-><init>(Lcom/google/android/gms/internal/ads/q11;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/f30;-><init>(Lcom/google/android/gms/internal/ads/t7;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/s20;->e(Lcom/google/android/gms/internal/ads/k40;Lcom/google/android/gms/internal/ads/f30;)Lcom/google/android/gms/internal/ads/e30;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/e30;->zza()Lcom/google/android/gms/internal/ads/u10;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q11;->b:Lcom/google/android/gms/internal/ads/w01;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/w01;->a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/al1;->M:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q11;->e:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    invoke-static {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/kz1;->g(Lcom/google/android/gms/internal/ads/rz1;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/p11;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/p11;-><init>(Lcom/google/android/gms/internal/ads/q11;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q11;->c:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void
.end method
