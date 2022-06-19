.class final Lcom/google/android/gms/internal/ads/bit;
.super Lcom/google/android/gms/internal/ads/gg;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Ljava/lang/Object;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:Lcom/google/android/gms/internal/ads/yo;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/bij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bit;->e:Lcom/google/android/gms/internal/ads/bij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bit;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bit;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/bit;->c:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bit;->d:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bit;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bit;->e:Lcom/google/android/gms/internal/ads/bij;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bit;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/bit;->c:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    .line 5
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bit;->e:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bij;->d(Lcom/google/android/gms/internal/ads/bij;)Lcom/google/android/gms/internal/ads/bht;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bit;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bht;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bit;->d:Lcom/google/android/gms/internal/ads/yo;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bit;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bit;->e:Lcom/google/android/gms/internal/ads/bij;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bit;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/bit;->c:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 12
    invoke-static {v0, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bit;->e:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bij;->d(Lcom/google/android/gms/internal/ads/bij;)Lcom/google/android/gms/internal/ads/bht;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bit;->b:Ljava/lang/String;

    const-string/jumbo v3, "error"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bht;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bit;->d:Lcom/google/android/gms/internal/ads/yo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

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
