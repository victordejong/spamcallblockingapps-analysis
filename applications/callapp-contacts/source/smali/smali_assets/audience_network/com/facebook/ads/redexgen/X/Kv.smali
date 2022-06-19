.class public final Lcom/facebook/ads/redexgen/X/Kv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ku;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/Kv;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Ku;

.field public final A03:Lcom/facebook/ads/redexgen/X/LY;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 42040
    new-instance v2, Lcom/facebook/ads/redexgen/X/cS;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/cS;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/cT;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/cT;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Kv;-><init>(Lcom/facebook/ads/redexgen/X/LY;Lcom/facebook/ads/redexgen/X/Ku;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kv;->A04:Lcom/facebook/ads/redexgen/X/Kv;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LY;Lcom/facebook/ads/redexgen/X/Ku;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 42041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42042
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kv;->A03:Lcom/facebook/ads/redexgen/X/LY;

    .line 42043
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Kv;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    .line 42044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A01:Z

    .line 42045
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A00:J

    .line 42046
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Kv;
    .locals 1

    .line 42047
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kv;->A04:Lcom/facebook/ads/redexgen/X/Kv;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 42048
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A01:Z

    .line 42049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A03:Lcom/facebook/ads/redexgen/X/LY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LY;->A4f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42050
    monitor-exit p0

    return-void

    .line 42051
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .locals 2

    monitor-enter p0

    .line 42052
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42053
    monitor-exit p0

    return-void

    .line 42054
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kv;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .locals 7

    .line 42055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ku;->A6g()Landroid/app/Activity;

    move-result-object v0

    .line 42056
    .local p0, "lastResumedActivity":Landroid/app/Activity;
    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 42057
    return v6

    .line 42058
    :cond_0
    const-class v5, Lcom/facebook/ads/redexgen/X/Kv;

    monitor-enter v5

    .line 42059
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A01:Z

    if-eqz v0, :cond_1

    .line 42060
    monitor-exit v5

    return v6

    .line 42061
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Kv;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A03:Lcom/facebook/ads/redexgen/X/LY;

    .line 42062
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LY;->A4f()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Kv;->A00:J

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

    .line 42063
    :goto_1
    return v6

    .line 42064
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
