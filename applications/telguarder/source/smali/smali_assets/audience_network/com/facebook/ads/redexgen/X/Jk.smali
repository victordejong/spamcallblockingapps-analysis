.class public final Lcom/facebook/ads/redexgen/X/Jk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jj;,
        Lcom/facebook/ads/redexgen/X/Ji;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ji;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jj;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 7

    .line 40362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40363
    const-class v0, Lcom/facebook/ads/redexgen/X/Jk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0C:Ljava/lang/String;

    .line 40364
    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:I

    .line 40365
    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0A:I

    .line 40366
    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A08:I

    .line 40367
    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A03:I

    .line 40368
    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A09:I

    .line 40369
    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:I

    .line 40370
    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A04:I

    .line 40371
    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A05:I

    .line 40372
    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A06:I

    .line 40373
    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:I

    .line 40374
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0E:Z

    .line 40375
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:J

    .line 40376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0D:Ljava/util/List;

    .line 40377
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A0D(Landroid/content/Context;)I

    move-result v1

    .line 40378
    .local p1, "nativeViewabilityHistorySamplingRate":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 40379
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    .line 40380
    .end local v0
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Lcom/facebook/ads/redexgen/X/Ji;

    .line 40381
    return-void

    .line 40382
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A00()D

    move-result-wide v4

    .line 40383
    .local v0, "sessionRandom":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 40384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A66()I

    move-result v0

    return v0
.end method

.method private A01()I
    .locals 5

    .line 40385
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 40386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 40387
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jk;)Ljava/util/List;
    .locals 0

    .line 40388
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 2

    .line 40389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0D:Ljava/util/List;

    monitor-enter v1

    .line 40390
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40391
    monitor-exit v1

    .line 40392
    return-void

    .line 40393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 40394
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40395
    return-void

    .line 40396
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x6e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    .line 40397
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40398
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 40399
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40400
    return-void

    .line 40401
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x6a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40402
    return-void
.end method

.method public final A06()V
    .locals 5

    .line 40403
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40404
    return-void

    .line 40405
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x68

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40406
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 40407
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40408
    return-void

    .line 40409
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x6d

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40410
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 40411
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40412
    return-void

    .line 40413
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x6c

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40414
    return-void
.end method

.method public final A09()V
    .locals 5

    .line 40415
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40416
    return-void

    .line 40417
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:J

    .line 40418
    const/4 v4, 0x0

    const/16 v3, 0x65

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40419
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 40420
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40421
    return-void

    .line 40422
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x69

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    .line 40423
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40424
    return-void
.end method

.method public final A0B()V
    .locals 5

    .line 40425
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40426
    return-void

    .line 40427
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x66

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40428
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V
    .locals 5

    .line 40429
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0F:Z

    if-nez v0, :cond_0

    .line 40430
    return-void

    .line 40431
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A01()I

    move-result v4

    const/16 v3, 0x67

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(IIILcom/facebook/ads/redexgen/X/Jh;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 40432
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(Lcom/facebook/ads/redexgen/X/Jk;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8D;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40433
    return-void
.end method
