.class public final Lcom/facebook/ads/redexgen/X/UR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/HM;

.field public A04:Z

.field public final A05:Landroid/net/Uri;

.field public final A06:Lcom/facebook/ads/redexgen/X/CN;

.field public final A07:Lcom/facebook/ads/redexgen/X/F8;

.field public final A08:Lcom/facebook/ads/redexgen/X/HI;

.field public final A09:Lcom/facebook/ads/redexgen/X/I3;

.field public volatile A0A:Z

.field public final synthetic A0B:Lcom/facebook/ads/redexgen/X/Be;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UR;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Be;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/F8;Lcom/facebook/ads/redexgen/X/I3;)V
    .locals 2

    .line 56362
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UR;->A0B:Lcom/facebook/ads/redexgen/X/Be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56363
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A05:Landroid/net/Uri;

    .line 56364
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    .line 56365
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/F8;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A07:Lcom/facebook/ads/redexgen/X/F8;

    .line 56366
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/UR;->A09:Lcom/facebook/ads/redexgen/X/I3;

    .line 56367
    new-instance v0, Lcom/facebook/ads/redexgen/X/CN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    .line 56368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A04:Z

    .line 56369
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J

    .line 56370
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/UR;)J
    .locals 1

    .line 56371
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/UR;)J
    .locals 1

    .line 56372
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/UR;)J
    .locals 1

    .line 56373
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/UR;)Lcom/facebook/ads/redexgen/X/HM;
    .locals 0

    .line 56374
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/UR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    return-object p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Vuqp4v8J3AgdrnLjLXBGJjzQ7iNfnq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X4yYeqOYqNEyMwqLprVLQJT6HfNWaUpP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VFU4Crk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GYnwRtTHqNarO2vYxpCfqy9KuAvmPGTM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u0KkzGxnQgfkXC2yGYi7SaHkos4Sff7w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QqxV310JtJ6XHhOlXvSCWVh673KPjmSW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qgu30dIkMjVsvWzC8avkw7kWKC7LKM4A"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "t1qHuBRauf7VTvTzHdrvKJtoUIMFkJeG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05(JJ)V
    .locals 1

    .line 56375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 56376
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/UR;->A02:J

    .line 56377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A04:Z

    .line 56378
    return-void
.end method

.method public final A3v()V
    .locals 1

    .line 56379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0A:Z

    .line 56380
    return-void
.end method

.method public final A8K()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56381
    const/4 v4, 0x0

    .line 56382
    .local p0, "result":I
    :goto_0
    if-nez v4, :cond_7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0A:Z

    if-nez v0, :cond_7

    .line 56383
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 56384
    .local v4, "input":Lcom/facebook/ads/redexgen/X/CH;
    sget-object v2, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    const-string v1, "SYoUbNQLCplj2na4fmxjUK7D"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 56385
    .local v3, "position":J
    new-instance v8, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/UR;->A05:Landroid/net/Uri;

    const-wide/16 v12, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0B:Lcom/facebook/ads/redexgen/X/Be;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Be;->A08(Lcom/facebook/ads/redexgen/X/Be;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/UR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    .line 56386
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J

    .line 56387
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, -0x1

    cmp-long v6, v0, v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v5, v0

    const/4 v0, 0x5

    aget-object v5, v5, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v5, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    const-string v1, "quh2jHNMrQEj8C3yvwKvPIDZcMljwB4M"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const-string v1, "cSJYyco51i4ELjsUuzzCggljN5xGqVoZ"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    if-eqz v6, :cond_0

    .line 56388
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J

    .line 56389
    :cond_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/Vl;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/UR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/UR;->A01:J

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Vl;-><init>(Lcom/facebook/ads/redexgen/X/HI;JJ)V

    move-object v3, v8

    .line 56390
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UR;->A07:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7T()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/F8;->A02(Lcom/facebook/ads/redexgen/X/CH;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/CG;

    move-result-object v5

    .line 56391
    .local v0, "extractor":Lcom/facebook/ads/redexgen/X/CG;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A04:Z

    if-eqz v0, :cond_1

    .line 56392
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A02:J

    invoke-interface {v5, v10, v11, v0, v1}, Lcom/facebook/ads/redexgen/X/CG;->ADX(JJ)V

    .line 56393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A04:Z

    .line 56394
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0A:Z

    if-nez v0, :cond_2

    .line 56395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A09:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A01()V

    .line 56396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/CG;->ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v4

    .line 56397
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vl;->A71()J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0B:Lcom/facebook/ads/redexgen/X/Be;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Be;->A03(Lcom/facebook/ads/redexgen/X/Be;)J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v0, v8, v6

    if-lez v0, :cond_1

    .line 56398
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vl;->A71()J

    move-result-wide v10

    .line 56399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A09:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A02()Z

    .line 56400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0B:Lcom/facebook/ads/redexgen/X/Be;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Be;->A04(Lcom/facebook/ads/redexgen/X/Be;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A0B:Lcom/facebook/ads/redexgen/X/Be;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Be;->A06(Lcom/facebook/ads/redexgen/X/Be;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 56401
    .end local v3    # "position":J
    .end local v0    # "extractor":Lcom/facebook/ads/redexgen/X/CG;
    :cond_2
    if-ne v4, v2, :cond_3

    .line 56402
    const/4 v4, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56403
    :goto_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/UR;->A0C:[Ljava/lang/String;

    const-string v1, "NqMGlGMalwVCk4RQszVNfsmrbAEQFdT2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "dVpKjJAzgnrDVcTF7m1EVsDZt4sIifp2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0X(Lcom/facebook/ads/redexgen/X/HI;)V

    .line 56404
    .end local v4    # "input":Lcom/facebook/ads/redexgen/X/CH;
    goto/16 :goto_0

    .line 56405
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vl;->A71()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 56406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UR;->A00:J

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56407
    .restart local v4    # "input":Lcom/facebook/ads/redexgen/X/CH;
    :catchall_0
    move-exception v5

    if-eq v4, v2, :cond_5

    .line 56408
    if-eqz v3, :cond_5

    .line 56409
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vl;->A71()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 56410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UR;->A00:J

    .line 56411
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0X(Lcom/facebook/ads/redexgen/X/HI;)V

    .line 56412
    throw v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56413
    .end local v4    # "input":Lcom/facebook/ads/redexgen/X/CH;
    :cond_7
    return-void
.end method
