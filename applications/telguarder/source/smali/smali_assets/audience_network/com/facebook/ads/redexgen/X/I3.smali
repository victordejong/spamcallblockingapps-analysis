.class public final Lcom/facebook/ads/redexgen/X/I3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I3;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RxjPiQnZrkPC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VFszKINXzAGrfPAdatypuG2pEp56OQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nnSe6iQSEEzHo667gwQ1svg6912evUk0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OS77sWlkXK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZrCKTOS3J85x8dIpvYpmeB471foz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nv2tcZz9QmiT94KrcRKFsfkC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C5zKDORI17xwa3HeaCXmK7G8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Eu4ZvAHfDTseI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I3;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 37564
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Z

    if-nez v0, :cond_0

    .line 37565
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37566
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 37567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Z
    .locals 2

    monitor-enter p0

    .line 37568
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Z

    .line 37569
    .local p0, "wasOpen":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37570
    monitor-exit p0

    return v1

    .line 37571
    .end local p0    # "wasOpen":Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()Z
    .locals 4

    monitor-enter p0

    .line 37572
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37573
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 37574
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Z

    .line 37575
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37576
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/I3;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/I3;->A01:[Ljava/lang/String;

    const-string v1, "lpZsl8i1BS9OjSOAy0pdkD8H"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "2AC03BQQMoYnmcXIBtiG8jBc"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 37577
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
