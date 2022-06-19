.class abstract Lcom/google/android/gms/measurement/internal/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field private static volatile b:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/gb;

.field private final c:Ljava/lang/Runnable;

.field private volatile d:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gb;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/gb;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/gb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->c:Ljava/lang/Runnable;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/j;J)J
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:J

    return-wide v0
.end method

.method private final d()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/measurement/internal/j;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/google/android/gms/measurement/internal/j;->b:Landroid/os/Handler;

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-class v1, Lcom/google/android/gms/measurement/internal/j;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/j;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/ku;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/gb;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/gb;->r()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ku;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/j;->b:Landroid/os/Handler;

    .line 25
    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/j;->b:Landroid/os/Handler;

    monitor-exit v1

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 7
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/gb;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/gb;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:J

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/gb;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/gb;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to schedule delayed post. time"

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:J

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method
