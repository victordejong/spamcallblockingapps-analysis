.class public final Lcom/facebook/ads/redexgen/X/6H;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:Landroid/view/OrientationEventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6F;

.field public final A01:Lcom/facebook/ads/redexgen/X/6i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V
    .locals 0

    .line 14539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14540
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:Lcom/facebook/ads/redexgen/X/6F;

    .line 14541
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:Lcom/facebook/ads/redexgen/X/6i;

    .line 14542
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6H;)Lcom/facebook/ads/redexgen/X/6F;
    .locals 0

    .line 14543
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:Lcom/facebook/ads/redexgen/X/6F;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 1

    monitor-enter p0

    .line 14544
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6H;->A02:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 14545
    sget-object v0, Lcom/facebook/ads/redexgen/X/6H;->A02:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 14546
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6H;->A02:Landroid/view/OrientationEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14547
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 14548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    .line 14549
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6H;->A02:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14550
    monitor-exit p0

    return-void

    .line 14551
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 14552
    .local v2, "timeStamp":J
    move-object v3, p1

    if-nez v3, :cond_1

    const-string v2, ""

    .line 14553
    .local p0, "contextPackageName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:Lcom/facebook/ads/redexgen/X/6i;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 14554
    .end local v7
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 14555
    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 14556
    :cond_2
    new-instance v7, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    .line 14557
    .local v0, "signalValueContext":Lcom/facebook/ads/redexgen/X/6r;
    :goto_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/6G;

    const/4 v4, 0x3

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/6G;-><init>(Lcom/facebook/ads/redexgen/X/6H;Landroid/content/Context;IJLcom/facebook/ads/redexgen/X/6r;)V

    sput-object v1, Lcom/facebook/ads/redexgen/X/6H;->A02:Landroid/view/OrientationEventListener;

    .line 14558
    sget-object v0, Lcom/facebook/ads/redexgen/X/6H;->A02:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14559
    monitor-exit p0

    return-void

    .line 14560
    .end local p0    # "contextPackageName":Ljava/lang/String;
    .end local v2    # "timeStamp":J
    .end local v0    # "signalValueContext":Lcom/facebook/ads/redexgen/X/6r;
    .end local v7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
