.class public final Lcom/facebook/ads/redexgen/X/9C;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/lang/String;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 19529
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9C;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9C;->A08()V

    const/16 v2, 0x57

    const/4 v1, 0x7

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9C;->A00:Ljava/lang/String;

    .line 19530
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9C;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19531
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9C;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9C;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 19533
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19534
    new-instance v0, Lcom/facebook/ads/redexgen/X/9B;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9B;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19535
    .local p0, "userAgentFutureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v0, "attempt":I
    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_0

    .line 19536
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V

    .line 19537
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19538
    :catchall_0
    move-exception v0

    .line 19539
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9C;->A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/Throwable;)V

    .line 19540
    .end local v3    # "t":Ljava/lang/Throwable;
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 19541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19542
    :goto_1
    return-object v0

    .line 19543
    .end local v0    # "attempt":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8o;)Ljava/lang/String;
    .locals 5

    .line 19544
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object p1

    .line 19545
    .local p0, "bundle":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9C;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19546
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1J:I

    const/16 v2, 0x50

    const/4 v1, 0x7

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 19547
    const/16 v2, 0x7b

    const/4 v1, 0x7

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19548
    :cond_0
    return-object p1
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;Z)Ljava/lang/String;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19549
    if-nez p0, :cond_0

    .line 19550
    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A00:Ljava/lang/String;

    return-object v0

    .line 19551
    :cond_0
    if-eqz p1, :cond_1

    .line 19552
    const/16 v2, 0x82

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19553
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19554
    .local p0, "browserUserAgent":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 19555
    return-object v0

    .line 19556
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J3;->A01(Landroid/content/Context;)J

    move-result-wide v13

    .line 19557
    .local v0, "userAgentRefreshTimeMs":J
    const/16 v2, 0x96

    const/16 v1, 0x17

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8c

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v2, 0x5f

    const/16 v1, 0x1c

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v1, 0x0

    cmp-long v0, v13, v1

    if-lez v0, :cond_4

    .line 19558
    invoke-static {v10, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19559
    invoke-virtual {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/8D;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 19560
    .local p0, "userAgentSP":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19561
    .local v0, "spUserAgent":Ljava/lang/String;
    invoke-interface {v5, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 19562
    .local v0, "spUserAgentRefresh":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v11

    cmp-long v0, v7, v13

    if-gez v0, :cond_4

    .line 19564
    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/9C;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19565
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9C;->A02:[Ljava/lang/String;

    const-string v1, "raDju45r7vWAWvtCMjs7ezmbeHuUzRMZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "IEXEfOXuBGyf1jRfSjx88B0PyUJh9Pa6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 19566
    .end local p0    # "userAgentSP":Landroid/content/SharedPreferences;
    .end local v0    # "spUserAgentRefresh":J
    .end local v0
    :cond_4
    const/4 v3, 0x0

    .line 19567
    .local v0, "userAgentString":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v5, v0, :cond_5

    .line 19568
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9C;->A01(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v3

    .line 19569
    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19570
    :catchall_0
    move-exception v0

    .line 19571
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9C;->A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/Throwable;)V

    .line 19572
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    if-nez v3, :cond_6

    .line 19573
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9C;->A02(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v3

    .line 19574
    :cond_6
    if-nez v3, :cond_7

    .line 19575
    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A00:Ljava/lang/String;

    return-object v0

    .line 19576
    :cond_7
    cmp-long v0, v13, v1

    if-lez v0, :cond_8

    .line 19577
    invoke-static {v10, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19578
    invoke-virtual {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/8D;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 19579
    .local p0, "userAgentSP":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19580
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19581
    .end local p0    # "userAgentSP":Landroid/content/SharedPreferences;
    :cond_8
    return-object v3
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;
    .locals 4

    .line 19582
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J3;->A04(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x46

    const/4 v1, 0x5

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19584
    invoke-static {p1, p0}, Lcom/facebook/ads/redexgen/X/9C;->A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19585
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19586
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A04()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19587
    return-object v0

    .line 19588
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8D;Z)Ljava/lang/String;
    .locals 4

    .line 19589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9C;->A04(Lcom/facebook/ads/redexgen/X/8D;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    const/4 v1, 0x7

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19590
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/9C;->A05(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4b

    const/4 v1, 0x5

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19591
    invoke-static {p1}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    const/4 v1, 0x6

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19592
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5e

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19593
    return-object v0
.end method

.method public static synthetic A07()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 19594
    sget-object v0, Lcom/facebook/ads/redexgen/X/9C;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0xb5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9C;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        0x3t
        -0x12t
        -0x16t
        -0x17t
        -0xat
        -0x29t
        -0x17t
        0x1dt
        0xct
        0x11t
        0xdt
        0x16t
        0xbt
        0xdt
        -0xat
        0xdt
        0x1ct
        0x1ft
        0x17t
        0x1at
        0x13t
        -0x12t
        0x17t
        0x1at
        -0x17t
        0x16t
        0xct
        0x1at
        0x17t
        0x11t
        0xct
        -0x1dt
        -0x12t
        -0x16t
        -0x5t
        -0xat
        -0x29t
        0x6t
        -0x12t
        -0x7t
        -0xbt
        -0xct
        0x9t
        -0x1et
        -0x12t
        -0x7t
        -0xbt
        -0xbt
        0x9t
        -0x1et
        -0x47t
        -0x3ct
        -0x40t
        -0x36t
        -0x3ft
        -0x53t
        -0x35t
        -0x2at
        -0x2et
        -0x1dt
        -0x1at
        -0x41t
        -0x44t
        -0x17t
        -0x21t
        -0x13t
        -0x16t
        -0x1ct
        -0x21t
        -0x37t
        -0x3bt
        -0x3ct
        -0x3bt
        -0x4et
        0x36t
        0x32t
        0x46t
        0x43t
        0x1ft
        0x31t
        0x2at
        0x40t
        0x2ft
        0x36t
        0x2dt
        0x2dt
        -0x11t
        0x8t
        0x5t
        0x8t
        0x9t
        0x11t
        0x8t
        0x33t
        0x30t
        0x3ct
        0x3at
        -0x5t
        0x33t
        0x2et
        0x30t
        0x32t
        0x2ft
        0x3ct
        0x3ct
        0x38t
        -0x5t
        0x2et
        0x31t
        0x40t
        -0x5t
        0x36t
        0x3bt
        0x41t
        0x32t
        0x3ft
        0x3bt
        0x2et
        0x39t
        -0x5t
        0x42t
        0x2et
        0x18t
        0x16t
        0x1ft
        0x16t
        0x23t
        0x1at
        0x14t
        0x12t
        0x1et
        0x1et
        0x1at
        -0x28t
        0xbt
        0x11t
        0xft
        0x18t
        0x1et
        -0x14t
        -0x16t
        -0x24t
        -0x17t
        -0x2at
        -0x28t
        -0x22t
        -0x24t
        -0x1bt
        -0x15t
        0x39t
        0x37t
        0x29t
        0x36t
        0x23t
        0x25t
        0x2bt
        0x29t
        0x32t
        0x38t
        0x23t
        0x30t
        0x25t
        0x37t
        0x38t
        0x23t
        0x36t
        0x29t
        0x2at
        0x36t
        0x29t
        0x37t
        0x2ct
        0x1et
        0xct
        0x9t
        0x6t
        0x1dt
        0x10t
        0xct
        0x1et
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qZcb6NmBns1n3v1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rTLETUx3xNnjwSb02Sx6jVZM5Fuzg7Of"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ujF8Yx1ooHYTWOANWsLoHgp9GHsWq5OG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "emoc9RIZRY17k1iV3jHEmbNdIKvpuqWe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9dj0hHqqeHaqkXambHAPXjsskYxWzSoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "H6Wp9lsP8ocDK9Bk7hE2Cfl7XjXVKK5i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "baRwZ59Bd0PN8tFBdjuxnLHZSOlJTNRT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2xLvEFwTfIQTf34sGOrn6donSx3FaGAc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9C;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/Throwable;)V
    .locals 5

    .line 19595
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2P:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19596
    const/16 v2, 0xad

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19597
    return-void
.end method
