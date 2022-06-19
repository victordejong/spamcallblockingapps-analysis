.class public final Lcom/google/android/gms/internal/ads/je;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/internal/ads/jn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lockClient"
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/jn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lockService"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/je;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/je;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;
    .locals 4

    .prologue
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/je;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/je;->d:Lcom/google/android/gms/internal/ads/jn;

    if-nez v0, :cond_0

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/jn;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/je;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/internal/ads/av;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, p2, v0}, Lcom/google/android/gms/internal/ads/jn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/je;->d:Lcom/google/android/gms/internal/ads/jn;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/je;->d:Lcom/google/android/gms/internal/ads/jn;

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/jn;
    .locals 5

    .prologue
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/je;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/je;->c:Lcom/google/android/gms/internal/ads/jn;

    if-nez v0, :cond_0

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/jn;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/je;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->a:Lcom/google/android/gms/internal/ads/ect;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, p2, v0}, Lcom/google/android/gms/internal/ads/jn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/je;->c:Lcom/google/android/gms/internal/ads/jn;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/je;->c:Lcom/google/android/gms/internal/ads/jn;

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
