.class public final Lcom/google/android/gms/internal/ads/xh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:J

.field private b:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xh;->b:J

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xh;->c:Ljava/lang/Object;

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xh;->a:J

    .line 5
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xh;->a:J

    .line 15
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 8

    .prologue
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xh;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 8
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/xh;->b:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/xh;->a:J

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    monitor-exit v1

    .line 11
    :goto_0
    return v0

    .line 10
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/xh;->b:J

    .line 11
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
