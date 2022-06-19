.class public final Lcom/google/android/gms/internal/ads/f8;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/d$b;

.field private final b:Lcom/google/android/gms/ads/formats/d$a;

.field private c:Lcom/google/android/gms/ads/formats/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d$b;Lcom/google/android/gms/ads/formats/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f8;->a:Lcom/google/android/gms/ads/formats/d$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f8;->b:Lcom/google/android/gms/ads/formats/d$a;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/w6;)Lcom/google/android/gms/ads/formats/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->f(Lcom/google/android/gms/internal/ads/w6;)Lcom/google/android/gms/ads/formats/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/ads/formats/d$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f8;->a:Lcom/google/android/gms/ads/formats/d$b;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f8;->b:Lcom/google/android/gms/ads/formats/d$a;

    return-object p0
.end method

.method private final declared-synchronized f(Lcom/google/android/gms/internal/ads/w6;)Lcom/google/android/gms/ads/formats/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->c:Lcom/google/android/gms/ads/formats/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/x6;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/x6;-><init>(Lcom/google/android/gms/internal/ads/w6;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->c:Lcom/google/android/gms/ads/formats/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/j7;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/e8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/e8;-><init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/c8;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/g7;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f8;->b:Lcom/google/android/gms/ads/formats/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/d8;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/d8;-><init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/c8;)V

    return-object v0
.end method
