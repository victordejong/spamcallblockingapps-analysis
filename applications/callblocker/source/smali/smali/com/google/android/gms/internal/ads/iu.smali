.class public final Lcom/google/android/gms/internal/ads/iu;
.super Lcom/google/android/gms/internal/ads/yv;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/yv",
        "<",
        "Lcom/google/android/gms/internal/ads/hp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/wj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yv;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iu;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iu;->b:Lcom/google/android/gms/internal/ads/wj;

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/iu;->c:Z

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/iu;)Lcom/google/android/gms/internal/ads/wj;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iu;->b:Lcom/google/android/gms/internal/ads/wj;

    return-object v0
.end method

.method private final f()V
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/iu;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    if-nez v0, :cond_1

    .line 29
    const-string/jumbo v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/ja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ja;-><init>(Lcom/google/android/gms/internal/ads/iu;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/yt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/yt;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 32
    :goto_1
    monitor-exit v1

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/iq;
    .locals 4

    .prologue
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/iq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/iq;-><init>(Lcom/google/android/gms/internal/ads/iu;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iu;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ix;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ix;-><init>(Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/iq;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/iw;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/iw;-><init>(Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/iq;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    .line 12
    monitor-exit v2

    .line 13
    return-object v1

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 16
    const-string/jumbo v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/iu;->f()V

    .line 19
    monitor-exit v1

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/iu;->d:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 22
    const-string/jumbo v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/iu;->c:Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/iu;->f()V

    .line 25
    monitor-exit v1

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
