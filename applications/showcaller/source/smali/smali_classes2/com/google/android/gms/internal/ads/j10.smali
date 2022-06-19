.class public final Lcom/google/android/gms/internal/ads/j10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/d$b;

.field private final b:Lcom/google/android/gms/ads/formats/d$a;

.field private c:Lcom/google/android/gms/ads/formats/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d$b;Lcom/google/android/gms/ads/formats/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j10;->a:Lcom/google/android/gms/ads/formats/d$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j10;->b:Lcom/google/android/gms/ads/formats/d$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/j10;)Lcom/google/android/gms/ads/formats/d$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j10;->a:Lcom/google/android/gms/ads/formats/d$b;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/j10;)Lcom/google/android/gms/ads/formats/d$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j10;->b:Lcom/google/android/gms/ads/formats/d$a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/zz;)Lcom/google/android/gms/ads/formats/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/j10;->f(Lcom/google/android/gms/internal/ads/zz;)Lcom/google/android/gms/ads/formats/d;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized f(Lcom/google/android/gms/internal/ads/zz;)Lcom/google/android/gms/ads/formats/d;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j10;->c:Lcom/google/android/gms/ads/formats/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/a00;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/a00;-><init>(Lcom/google/android/gms/internal/ads/zz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j10;->c:Lcom/google/android/gms/ads/formats/d;
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
.method public final c()Lcom/google/android/gms/internal/ads/m00;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/i10;-><init>(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/g10;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/j00;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j10;->b:Lcom/google/android/gms/ads/formats/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/h10;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/h10;-><init>(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/g10;)V

    return-object v0
.end method
