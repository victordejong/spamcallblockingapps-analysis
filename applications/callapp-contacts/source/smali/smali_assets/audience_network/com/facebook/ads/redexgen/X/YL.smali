.class public final Lcom/facebook/ads/redexgen/X/YL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AO;
.implements Lcom/facebook/ads/redexgen/X/Dx;
.implements Lcom/facebook/ads/redexgen/X/B7;
.implements Lcom/facebook/ads/redexgen/X/J0;
.implements Lcom/facebook/ads/redexgen/X/FS;
.implements Lcom/facebook/ads/redexgen/X/HC;
.implements Lcom/facebook/ads/redexgen/X/Bo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ai;,
        Lcom/facebook/ads/redexgen/X/Ah;,
        Lcom/facebook/ads/redexgen/X/Ag;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AT;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/Ae;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ah;

.field public final A03:Lcom/facebook/ads/redexgen/X/I0;

.field public final A04:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YL;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/AT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 59330
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I0;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A03:Lcom/facebook/ads/redexgen/X/I0;

    .line 59331
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 59332
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ah;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ah;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    .line 59333
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    .line 59334
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 59335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A04()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YL;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 59336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A05()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YL;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 59337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A06()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YL;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 59338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A07()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/YL;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;
    .locals 15
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59339
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59340
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A03:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->A56()J

    move-result-wide v4

    .line 59341
    .local v0, "realtimeMs":J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A69()Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v6

    .line 59342
    .local v6, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6A()I

    move-result v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    if-ne v7, v0, :cond_2

    .line 59343
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59344
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 59345
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A64()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 59346
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A65()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    if-ne v2, v0, :cond_0

    .line 59347
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A67()J

    move-result-wide v9

    .line 59348
    .local v0, "eventPositionMs":J
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A5l()J

    move-result-wide v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A62()J

    move-result-wide v2

    sub-long/2addr v13, v2

    .line 59349
    .local v2, "bufferedDurationMs":J
    new-instance v3, Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 59350
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A67()J

    move-result-wide v11

    .end local v6    # "timeline":Lcom/facebook/ads/redexgen/X/Af;
    .local v9, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/Aj;-><init>(JLcom/facebook/ads/redexgen/X/Af;ILcom/facebook/ads/redexgen/X/FC;JJJ)V

    .line 59351
    return-object v3

    .line 59352
    :cond_0
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 59353
    .end local v7
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A62()J

    move-result-wide v9

    .restart local v7
    goto :goto_0

    .line 59354
    .end local v7
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A02()I

    move-result v0

    if-ge v7, v0, :cond_3

    if-eqz v8, :cond_4

    .line 59355
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59356
    .end local v7
    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 59357
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YL;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0C(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ae;->A00()J

    move-result-wide v9

    .restart local v7
    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/Ai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59358
    if-nez p1, :cond_0

    .line 59359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6A()I

    move-result v1

    .line 59360
    .local p0, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ah;->A08(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v0

    .line 59361
    .local p1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0

    .line 59362
    .end local p0    # "windowIndex":I
    .end local p1    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ai;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oWxliEG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "84CCzfJSWHAMzlT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dVPYU5AFfnLld9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "202VfNqPV04zLFr42xUQnFXcv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6C2OHs0d6U2aNpx0mThNdUqCMJf7H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "j36hHuSQknS9Y2BeP2DWP06EygcBzL55"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WN9koNHhTr4SbLKtJDKTY2JTPC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f2Eog"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 59363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A0G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59364
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 59365
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A0A()V

    .line 59366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "PBkwxeOlbvYzAOz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "zMCnce58Qhbdr93RoMzV7EOLVlkYq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59367
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/Ak;->onSeekStarted(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59368
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59369
    .end local p0    # "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    :cond_1
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 59370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    .line 59371
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A01(Lcom/facebook/ads/redexgen/X/Ah;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59372
    .local p0, "activeMediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "gG2PlvUwOW39eC8R"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    .line 59373
    .local v1, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ai;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YL;->AAo(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 59374
    .end local v1    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    goto :goto_0

    .line 59375
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9S(Ljava/lang/String;JJ)V
    .locals 8

    .line 59376
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59377
    .local v3, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59378
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v4, 0x1

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/Aj;ILjava/lang/String;J)V

    .line 59379
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59380
    :cond_0
    return-void
.end method

.method public final A9T(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 59381
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A00()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59382
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59383
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 59384
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59385
    :cond_0
    return-void
.end method

.method public final A9U(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 59386
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59387
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59388
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 59389
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59390
    :cond_0
    return-void
.end method

.method public final A9V(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4

    .line 59391
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59392
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59393
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59394
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59395
    :cond_0
    return-void
.end method

.method public final A9W(I)V
    .locals 3

    .line 59396
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59397
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59398
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onAudioSessionId(Lcom/facebook/ads/redexgen/X/Aj;I)V

    .line 59399
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59400
    :cond_0
    return-void
.end method

.method public final A9X(IJJ)V
    .locals 12

    .line 59401
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v6

    .line 59402
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "uqo4gq1KBxiMktN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Ndm2ibG2UK8Su1apjnSt0jhcojAUZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59403
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    move-wide v8, p2

    move-wide/from16 v10, p4

    move v7, p1

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Ak;->onAudioUnderrun(Lcom/facebook/ads/redexgen/X/Aj;IJJ)V

    .line 59404
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59405
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9Z(IJJ)V
    .locals 2

    .line 59406
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A01()Lcom/facebook/ads/redexgen/X/Aj;

    .line 59407
    .local v1, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59408
    .local p7, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p7
    goto :goto_0

    .line 59409
    :cond_0
    return-void
.end method

.method public final A9y(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59410
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59411
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59412
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/Ak;->onDownstreamFormatChanged(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/FR;)V

    .line 59413
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59414
    :cond_0
    return-void
.end method

.method public final A9z()V
    .locals 3

    .line 59415
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59416
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59417
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmKeysLoaded(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59418
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59419
    :cond_0
    return-void
.end method

.method public final AA0()V
    .locals 3

    .line 59420
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59421
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59422
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmKeysRemoved(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59423
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59424
    :cond_0
    return-void
.end method

.method public final AA1()V
    .locals 3

    .line 59425
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59426
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59427
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmKeysRestored(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59428
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59429
    :cond_0
    return-void
.end method

.method public final AA2(Ljava/lang/Exception;)V
    .locals 3

    .line 59430
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59431
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59432
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmSessionManagerError(Lcom/facebook/ads/redexgen/X/Aj;Ljava/lang/Exception;)V

    .line 59433
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59434
    :cond_0
    return-void
.end method

.method public final AA3(IJ)V
    .locals 3

    .line 59435
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A00()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59436
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59437
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ak;->onDroppedVideoFrames(Lcom/facebook/ads/redexgen/X/Aj;IJ)V

    .line 59438
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59439
    :cond_0
    return-void
.end method

.method public final AAZ(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59440
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    .line 59441
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59442
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59443
    :cond_0
    return-void
.end method

.method public final AAb(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59444
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    .line 59445
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59446
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59447
    :cond_0
    return-void
.end method

.method public final AAe(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V
    .locals 8
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59448
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59449
    .local v7, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59450
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    move-object v5, p4

    move-object v4, p3

    move v7, p6

    move-object v6, p5

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onLoadError(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V

    .line 59451
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59452
    :cond_0
    return-void
.end method

.method public final AAg(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59453
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    .line 59454
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59455
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59456
    :cond_0
    return-void
.end method

.method public final AAi(Z)V
    .locals 6

    .line 59457
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v5

    .line 59458
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "61iKEbH7Elk598B8IvoVeyiFcghmzjBq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59459
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v3, v5, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onLoadingChanged(Lcom/facebook/ads/redexgen/X/Aj;Z)V

    .line 59460
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59461
    :cond_1
    return-void
.end method

.method public final AAn(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 3

    .line 59462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ah;->A0C(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 59463
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59464
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59465
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onMediaPeriodCreated(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59466
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59467
    :cond_0
    return-void
.end method

.method public final AAo(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 6

    .line 59468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ah;->A0D(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 59469
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 59470
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "xQuAJnMHmsnkUtn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "I7nuhInD03G6TyFgZN1tEp7XA66Po"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59471
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Ak;->onMediaPeriodReleased(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59472
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59473
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 59474
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59475
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59476
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onMetadata(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 59477
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59478
    :cond_0
    return-void
.end method

.method public final AB7(Lcom/facebook/ads/redexgen/X/AL;)V
    .locals 6

    .line 59479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v5

    .line 59480
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59481
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "6kCd761y4Sm0JC2HIy7vlDu4Zge9adCZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, v5, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onPlaybackParametersChanged(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/AL;)V

    .line 59482
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59483
    :cond_1
    return-void
.end method

.method public final AB9(Lcom/facebook/ads/redexgen/X/A0;)V
    .locals 6

    .line 59484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v5

    .line 59485
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "4uLQlqFUz3TKu9PUP8Ua0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59486
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v3, v5, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onPlayerError(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/A0;)V

    .line 59487
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59488
    :cond_1
    return-void
.end method

.method public final ABB(ZI)V
    .locals 3

    .line 59489
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59490
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59491
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Ak;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/Aj;ZI)V

    .line 59492
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59493
    :cond_0
    return-void
.end method

.method public final ABD(I)V
    .locals 3

    .line 59494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A0B(I)V

    .line 59495
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59496
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59497
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onPositionDiscontinuity(Lcom/facebook/ads/redexgen/X/Aj;I)V

    .line 59498
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59499
    :cond_0
    return-void
.end method

.method public final ABM(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 3

    .line 59500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ah;->A0E(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 59501
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YL;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59502
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59503
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onReadingStarted(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59504
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59505
    :cond_0
    return-void
.end method

.method public final ABQ(Landroid/view/Surface;)V
    .locals 6

    .line 59506
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v5

    .line 59507
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YL;->A05:[Ljava/lang/String;

    const-string v1, "zEYrHw08cBp169ZitgaAlaUGutwvX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59508
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v5, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onRenderedFirstFrame(Lcom/facebook/ads/redexgen/X/Aj;Landroid/view/Surface;)V

    .line 59509
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59510
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABa()V
    .locals 3

    .line 59511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A09()V

    .line 59513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59514
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59515
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onSeekProcessed(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 59516
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59517
    .end local p0    # "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    :cond_0
    return-void
.end method

.method public final ABo(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;I)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A0F(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 59519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59520
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59521
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/Ak;->onTimelineChanged(Lcom/facebook/ads/redexgen/X/Aj;I)V

    .line 59522
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59523
    :cond_0
    return-void
.end method

.method public final ABp(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V
    .locals 3

    .line 59524
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 59525
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59526
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Ak;->onTracksChanged(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V

    .line 59527
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59528
    :cond_0
    return-void
.end method

.method public final ABx(Ljava/lang/String;JJ)V
    .locals 8

    .line 59529
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59530
    .local v3, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59531
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v4, 0x2

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/Aj;ILjava/lang/String;J)V

    .line 59532
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59533
    :cond_0
    return-void
.end method

.method public final ABy(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 59534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A00()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59535
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59536
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 59537
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59538
    :cond_0
    return-void
.end method

.method public final ABz(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 59539
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59540
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59541
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 59542
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59543
    :cond_0
    return-void
.end method

.method public final AC2(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4

    .line 59544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59545
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59546
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59547
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59548
    :cond_0
    return-void
.end method

.method public final AC7(IIIF)V
    .locals 8

    .line 59549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YL;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 59550
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 59551
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    move v5, p2

    move v4, p1

    move v7, p4

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onVideoSizeChanged(Lcom/facebook/ads/redexgen/X/Aj;IIIF)V

    .line 59552
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 59553
    :cond_0
    return-void
.end method
