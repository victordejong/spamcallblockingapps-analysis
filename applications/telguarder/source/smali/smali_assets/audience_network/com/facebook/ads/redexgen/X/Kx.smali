.class public final Lcom/facebook/ads/redexgen/X/Kx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Kw;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/Kx;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Kw;

.field public final A03:Lcom/facebook/ads/redexgen/X/La;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 42026
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Sq;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Sp;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kx;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Kx;-><init>(Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/Kw;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kx;->A04:Lcom/facebook/ads/redexgen/X/Kx;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/Kw;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 42027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42028
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/La;

    .line 42029
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Kx;->A02:Lcom/facebook/ads/redexgen/X/Kw;

    .line 42030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A01:Z

    .line 42031
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A00:J

    .line 42032
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Kx;
    .locals 1

    .line 42033
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kx;->A04:Lcom/facebook/ads/redexgen/X/Kx;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 42034
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A01:Z

    .line 42035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/La;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/La;->A4d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42036
    monitor-exit p0

    return-void

    .line 42037
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .locals 2

    monitor-enter p0

    .line 42038
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42039
    monitor-exit p0

    return-void

    .line 42040
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kx;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .locals 7

    .line 42041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A02:Lcom/facebook/ads/redexgen/X/Kw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kw;->A6g()Landroid/app/Activity;

    move-result-object v0

    .line 42042
    .local p0, "lastResumedActivity":Landroid/app/Activity;
    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 42043
    return v6

    .line 42044
    :cond_0
    const-class v5, Lcom/facebook/ads/redexgen/X/Kx;

    monitor-enter v5

    .line 42045
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A01:Z

    if-eqz v0, :cond_1

    .line 42046
    monitor-exit v5

    return v6

    .line 42047
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Kx;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/La;

    .line 42048
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/La;->A4d()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x3e8

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    monitor-exit v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 42049
    :goto_1
    return v6

    .line 42050
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
