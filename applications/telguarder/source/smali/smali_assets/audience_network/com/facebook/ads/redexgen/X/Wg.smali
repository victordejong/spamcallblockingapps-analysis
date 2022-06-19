.class public final Lcom/facebook/ads/redexgen/X/Wg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8Q;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/content/Context;

.field public A01:Lcom/facebook/ads/redexgen/X/8P;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wg;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wg;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64501
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wg;->A00:Landroid/content/Context;

    .line 64503
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wg;->A00()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    .line 64504
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/8P;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A00:Landroid/content/Context;

    .line 64506
    invoke-static {v0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v2, 0x5f

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64507
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8P;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wg;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 7

    .line 64508
    sget-object v1, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sDataProcessingOptionsUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64509
    return-void

    .line 64510
    :cond_0
    sget-object v6, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wg;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wg;->A04:[Ljava/lang/String;

    const-string v1, "oOJS2CpwTHBfFEtx67zGubrtfv9KkPvw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    monitor-enter v6

    .line 64511
    :try_start_0
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/16 v2, 0x23

    const/16 v1, 0x1b

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 64512
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 64513
    .local v1, "options":[Ljava/lang/String;
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 64514
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 64515
    .local v0, "country":Ljava/lang/Integer;
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/16 v2, 0x3e

    const/16 v1, 0x21

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 64516
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 64517
    .local v0, "state":Ljava/lang/Integer;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64518
    invoke-virtual {p0, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A05([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 64519
    return-void

    .line 64520
    .end local v1    # "options":[Ljava/lang/String;
    .end local v0    # "state":Ljava/lang/Integer;
    .end local v0
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x6f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wg;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        0x74t
        0x61t
        0x74t
        0x6at
        0x65t
        0x67t
        0x7at
        0x76t
        0x70t
        0x66t
        0x66t
        0x7ct
        0x7bt
        0x72t
        0x6at
        0x7at
        0x65t
        0x61t
        0x7ct
        0x7at
        0x7bt
        0x66t
        0x6at
        0x76t
        0x7at
        0x60t
        0x7bt
        0x61t
        0x67t
        0x6ct
        0x6at
        0x7et
        0x70t
        0x6ct
        0x51t
        0x54t
        0x41t
        0x54t
        0x4at
        0x45t
        0x47t
        0x5at
        0x56t
        0x50t
        0x46t
        0x46t
        0x5ct
        0x5bt
        0x52t
        0x4at
        0x5at
        0x45t
        0x41t
        0x5ct
        0x5at
        0x5bt
        0x46t
        0x4at
        0x5et
        0x50t
        0x4ct
        0xbt
        0xet
        0x1bt
        0xet
        0x10t
        0x1ft
        0x1dt
        0x0t
        0xct
        0xat
        0x1ct
        0x1ct
        0x6t
        0x1t
        0x8t
        0x10t
        0x0t
        0x1ft
        0x1bt
        0x6t
        0x0t
        0x1t
        0x1ct
        0x10t
        0x1ct
        0x1bt
        0xet
        0x1bt
        0xat
        0x10t
        0x4t
        0xat
        0x16t
        0x70t
        0x64t
        0x7bt
        0x6bt
        0x67t
        0x71t
        0x60t
        0x60t
        0x7dt
        0x7at
        0x73t
        0x67t
        0x6bt
        0x7ft
        0x71t
        0x6dt
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QSDKa3pZTVe9HmAR1Ay6g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XgwL7Ud71tBUNG2kzZlaxHU2McjesF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TEjZz3x5vpRWUiWSDtwatAUmLjPe0Sl6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Gq2b2kj4bNmNbja7ZwfFy5oz0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xUgDM3KjxFcKLWtwdGRCjYV4QpQDkw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eFYrVn2JLXTsbt8Ic1EMC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8vbwis2cPLSoTzBzyxmVZtN4c"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9w8IEhDQCU9g"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wg;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64521
    new-instance v1, Lcom/facebook/ads/redexgen/X/8P;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8P;-><init>([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 64522
    .local p0, "newSettings":Lcom/facebook/ads/redexgen/X/8P;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64523
    return-void

    .line 64524
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    .line 64525
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wg;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64527
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    .line 64528
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A08()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5f

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64530
    return-void
.end method

.method public final A6C()Lcom/facebook/ads/redexgen/X/8P;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64531
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wg;->A02()V

    .line 64532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    return-object v0
.end method

.method public final A8C()Z
    .locals 4

    .line 64533
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wg;->A02()V

    .line 64534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 64535
    return v3

    .line 64536
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A00:Landroid/content/Context;

    .line 64537
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0X(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 64538
    .local p0, "restrictedCombinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A01:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A08()Ljava/lang/String;

    move-result-object v2

    .line 64539
    .local v3, "identifier":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64540
    .local v1, "restrictedCombination":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64541
    const/4 v0, 0x1

    return v0

    .line 64542
    :cond_2
    return v3
.end method

.method public final ADx()Z
    .locals 2

    .line 64543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wg;->A02()V

    .line 64544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wg;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method
