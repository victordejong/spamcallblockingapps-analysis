.class public final Lcom/facebook/ads/redexgen/X/6x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;


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
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6x;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 15783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15784
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15785
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6x;->A01:Landroid/content/Context;

    .line 15786
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A05:Ljava/util/Set;

    .line 15787
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5v;->A0d()Lcom/facebook/ads/redexgen/X/6v;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/6v;

    .line 15788
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5v;->A0c()Lcom/facebook/ads/redexgen/X/6u;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/redexgen/X/6u;

    .line 15789
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/6r;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_0

    .line 15791
    const/4 v0, 0x0

    return-object v0

    .line 15792
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A01:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v1, ""

    .line 15793
    .local p0, "context":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 15794
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PZGSRnfwGrYisl7aId6QWLToN1DXq2Ni"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T7s"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gLp6Vxd8LN7mdNMy8Dici7H2OLS3KS8I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SRid0k4ZbncRu5luMVg9kpfCtWiYlX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QSDi73shXQdXbuN7uTc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QUSKvJxS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WTIa7Qpx6JFtEkznCMHc3sO6Qr3jO6W5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xVow"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6x;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A02(J)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15795
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 15796
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

    .line 15797
    .local v2, "bdSignal":Lcom/facebook/ads/redexgen/X/6b;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A02()Lcom/facebook/ads/redexgen/X/6e;

    move-result-object v0

    .line 15798
    .local v5, "executor":Lcom/facebook/ads/redexgen/X/6e;
    if-nez v0, :cond_0

    .line 15799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 15800
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6x;->A00()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A04:Lcom/facebook/ads/redexgen/X/6p;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6p;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/X1;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15801
    .local v0, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 15802
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6t;->A07(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 15803
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15804
    .end local v0    # "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6e;->A5D()Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15805
    .end local v0
    :catchall_0
    move-exception v1

    .line 15806
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A01:Landroid/content/Context;

    .line 15807
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/72;->A04(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/X1;

    move-result-object v0

    goto :goto_1

    .line 15808
    :cond_1
    const/4 v0, 0x0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15809
    :catchall_1
    move-exception v0

    .line 15810
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 15811
    .end local p0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private A03(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15812
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0k()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 15813
    .local p0, "executorService":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lcom/facebook/ads/redexgen/X/6w;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/6w;-><init>(Lcom/facebook/ads/redexgen/X/6x;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15814
    :catchall_0
    move-exception v0

    .line 15815
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 15816
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 15817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0X()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 15818
    return-void

    .line 15819
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 15820
    .local p0, "currentTimeMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/6v;

    .line 15821
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6v;->getLastPeriodicCollectionTimeMs()J

    move-result-wide v0

    sub-long v6, v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6x;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6x;->A06:[Ljava/lang/String;

    const-string v1, "5DfMZ2l"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15822
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0X()J

    move-result-wide v1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_1

    .line 15823
    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/6x;->A02(J)V

    .line 15824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0X()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6x;->A03(J)V

    .line 15825
    :goto_0
    return-void

    .line 15826
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/6v;

    .line 15827
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6v;->getLastPeriodicCollectionTimeMs()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 15828
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0X()J

    move-result-wide v0

    add-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 15829
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 15830
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6x;->A03(J)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05(I)V
    .locals 0

    .line 15831
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    .line 15832
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/6b;)V
    .locals 1

    .line 15833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A05:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15834
    return-void
.end method
