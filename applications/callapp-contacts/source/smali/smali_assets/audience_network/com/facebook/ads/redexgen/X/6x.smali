.class public final Lcom/facebook/ads/redexgen/X/6x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public final A01:Landroid/content/Context;

.field public final A02:Lcom/facebook/ads/redexgen/X/5v;

.field public final A03:Lcom/facebook/ads/redexgen/X/6u;

.field public final A04:Lcom/facebook/ads/redexgen/X/6v;

.field public final A05:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 15694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15695
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15696
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6x;->A01:Landroid/content/Context;

    .line 15697
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A05:Ljava/util/Set;

    .line 15698
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5v;->A0c()Lcom/facebook/ads/redexgen/X/6v;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/6v;

    .line 15699
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6u;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/redexgen/X/6u;

    .line 15700
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/6r;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 15701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0a()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_0

    .line 15702
    const/4 v0, 0x0

    return-object v0

    .line 15703
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A01:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v1, ""

    .line 15704
    .local p0, "context":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 15705
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private A01(J)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15706
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 15707
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/6b;

    .line 15708
    .local v2, "bdSignal":Lcom/facebook/ads/redexgen/X/6b;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A01()Lcom/facebook/ads/redexgen/X/6e;

    move-result-object v0

    .line 15709
    .local v5, "executor":Lcom/facebook/ads/redexgen/X/6e;
    if-nez v0, :cond_0

    .line 15710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 15711
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6x;->A00()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A04:Lcom/facebook/ads/redexgen/X/6p;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6p;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X4;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/X4;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15712
    .local v0, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A00()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 15713
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6t;->A0A(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 15714
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15715
    .end local v0    # "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6e;->A5F()Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15716
    .end local v0
    :catchall_0
    move-exception v1

    .line 15717
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A01:Landroid/content/Context;

    .line 15718
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/72;->A04(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/X4;

    move-result-object v0

    goto :goto_1

    .line 15719
    :cond_1
    const/4 v0, 0x0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15720
    :catchall_1
    move-exception v0

    .line 15721
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A04(Ljava/lang/Throwable;)V

    .line 15722
    .end local p0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private A02(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15723
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0j()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 15724
    .local p0, "executorService":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lcom/facebook/ads/redexgen/X/6w;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/6w;-><init>(Lcom/facebook/ads/redexgen/X/6x;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15725
    :catchall_0
    move-exception v0

    .line 15726
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A04(Ljava/lang/Throwable;)V

    .line 15727
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 15728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0W()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 15729
    return-void

    .line 15730
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 15731
    .local p0, "currentTimeMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/6v;

    .line 15732
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6v;->getLastPeriodicCollectionTimeMs()J

    move-result-wide v0

    sub-long v6, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15733
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0W()J

    move-result-wide v1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_1

    .line 15734
    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/6x;->A01(J)V

    .line 15735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0W()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6x;->A02(J)V

    .line 15736
    :goto_0
    return-void

    .line 15737
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/6v;

    .line 15738
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6v;->getLastPeriodicCollectionTimeMs()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15739
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0W()J

    move-result-wide v0

    add-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 15740
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 15741
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6x;->A02(J)V

    goto :goto_0
.end method

.method public final A04(I)V
    .locals 0

    .line 15742
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    .line 15743
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/6b;)V
    .locals 1

    .line 15744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A05:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15745
    return-void
.end method
