.class public final Lcom/google/android/gms/internal/ads/dwa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dvv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwa;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwa;->c:Landroid/content/Context;

    .line 4
    return-void
.end method

.method private final a()V
    .locals 2

    .prologue
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwa;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwa;->a:Lcom/google/android/gms/internal/ads/dvv;

    if-nez v0, :cond_0

    .line 18
    monitor-exit v1

    .line 22
    :goto_0
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwa;->a:Lcom/google/android/gms/internal/ads/dvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvv;->e()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwa;->a:Lcom/google/android/gms/internal/ads/dvv;

    .line 21
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 22
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwa;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dwa;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwa;Z)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwa;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dwa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwa;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dwa;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwa;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/dwa;)Lcom/google/android/gms/internal/ads/dvv;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwa;->a:Lcom/google/android/gms/internal/ads/dvv;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/dvu;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dvu;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dwd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dwd;-><init>(Lcom/google/android/gms/internal/ads/dwa;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/dwc;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/dwc;-><init>(Lcom/google/android/gms/internal/ads/dwa;Lcom/google/android/gms/internal/ads/dvu;Lcom/google/android/gms/internal/ads/yo;)V

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/ads/dwg;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/dwg;-><init>(Lcom/google/android/gms/internal/ads/dwa;Lcom/google/android/gms/internal/ads/yo;)V

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwa;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/dvv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dwa;->c:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/xc;->a()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/google/android/gms/internal/ads/dvv;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    .line 12
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwa;->a:Lcom/google/android/gms/internal/ads/dvv;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwa;->a:Lcom/google/android/gms/internal/ads/dvv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dvv;->o()V

    .line 14
    monitor-exit v3

    .line 15
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
