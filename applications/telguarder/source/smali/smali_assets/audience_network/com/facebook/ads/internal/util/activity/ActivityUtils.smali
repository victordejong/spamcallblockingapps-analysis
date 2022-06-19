.class public final Lcom/facebook/ads/internal/util/activity/ActivityUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Kt;
    }
.end annotation


# static fields
.field public static A00:Landroid/content/Context;

.field public static A01:Lcom/facebook/ads/redexgen/X/Wl;

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/Kx;

.field public static final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Kt;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1499
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03()V

    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1500
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    .line 1501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05:Ljava/util/List;

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    .line 1504
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kx;->A00()Lcom/facebook/ads/redexgen/X/Kx;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04:Lcom/facebook/ads/redexgen/X/Kx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00()Landroid/app/Activity;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v9, Lcom/facebook/ads/internal/util/activity/ActivityUtils;

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "2X1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "4Xz5KeeNGHpuqa6htQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    monitor-enter v9

    .line 1506
    const/4 v6, 0x0

    .line 1507
    .local v2, "lastResumedActivity":Landroid/app/Activity;
    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1508
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1509
    .local v0, "state":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 1510
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 1511
    :cond_2
    const/4 v5, 0x0

    .line 1512
    .local v0, "refActivity":Landroid/app/Activity;
    const/4 v8, 0x1

    if-eqz v6, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1c

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "1XJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "bJ9RdeaDu3by7oHJkd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_5

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 1513
    .local v0, "refActivityShouldBeFetched":Z
    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    .line 1514
    :cond_4
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "274OtiSdEauIu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1bLBDBgpfkHrk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1515
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kq;->A00()Landroid/app/Activity;

    move-result-object v5

    .line 1516
    :cond_6
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eq v6, v5, :cond_7

    .line 1517
    const/16 v2, 0x13

    const/16 v1, 0x17

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xcb

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/4 v1, 0x7

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    .local v2, "deLogException":Lcom/facebook/ads/redexgen/X/8f;
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 1519
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 1520
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A01:I

    .line 1521
    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 1522
    .end local v2    # "deLogException":Lcom/facebook/ads/redexgen/X/8f;
    :cond_7
    if-eqz v6, :cond_8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    monitor-exit v9

    return-object v6

    .line 1524
    :cond_8
    monitor-exit v9

    return-object v5

    .line 1525
    .end local v2
    .end local v0    # "refActivityShouldBeFetched":Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0xdb

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "OT1BI2x3SK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xet
        0x2t
        0x23t
        0x45t
        0x56t
        0x4bt
        0x58t
        0x4bt
        0x56t
        0x5bt
        0x1ct
        0x2t
        -0x5at
        -0x66t
        -0x14t
        -0x21t
        -0x20t
        -0x4ct
        -0x66t
        0x6t
        0x28t
        0x39t
        0x2et
        0x3bt
        0x2et
        0x39t
        0x3et
        -0x1bt
        0x29t
        0x2et
        0x38t
        0x28t
        0x37t
        0x2at
        0x35t
        0x26t
        0x33t
        0x28t
        0x2et
        0x2at
        0x38t
        -0xdt
        0x38t
        0x67t
        0x67t
        0x3at
        0x66t
        0x65t
        0x6bt
        0x5ct
        0x6ft
        0x6bt
        0x17t
        0x60t
        0x6at
        0x17t
        0x65t
        0x66t
        0x6bt
        0x17t
        0x38t
        0x67t
        0x67t
        0x63t
        0x60t
        0x5at
        0x58t
        0x6bt
        0x60t
        0x66t
        0x65t
        0x25t
        -0x3t
        0x29t
        0x28t
        0x1dt
        0x2ft
        0x2ct
        0x2ct
        0x1ft
        0x28t
        0x2et
        -0x26t
        0x27t
        0x29t
        0x1et
        0x23t
        0x20t
        0x23t
        0x1dt
        0x1bt
        0x2et
        0x23t
        0x29t
        0x28t
        -0x26t
        0x1ft
        0x32t
        0x1dt
        0x1ft
        0x2at
        0x2et
        0x23t
        0x29t
        0x28t
        -0x26t
        0x2et
        0x22t
        0x2ct
        0x29t
        0x31t
        0x28t
        0x1et
        0x2ft
        0x2ct
        0x23t
        0x28t
        0x21t
        -0x26t
        0x2ct
        0x1ft
        0x21t
        0x23t
        0x2dt
        0x2et
        0x1ft
        0x2ct
        -0x5t
        0x1dt
        0x2et
        0x23t
        0x30t
        0x23t
        0x2et
        0x33t
        -0x3t
        0x1bt
        0x26t
        0x26t
        0x1ct
        0x1bt
        0x1dt
        0x25t
        0x2dt
        0x6t
        0x23t
        0x2dt
        0x2et
        0x1ft
        0x28t
        0x1ft
        0x2ct
        0x2dt
        0x4at
        0x42t
        -0x2t
        0x3ft
        0x41t
        0x52t
        0x47t
        0x54t
        0x47t
        0x52t
        0x57t
        -0x2t
        0x51t
        0x52t
        0x3ft
        0x52t
        0x43t
        0x18t
        -0x2t
        0x18t
        0x29t
        0x3dt
        0x3bt
        0x2dt
        0x2ct
        -0x18t
        0x29t
        0x2bt
        0x3ct
        0x31t
        0x3et
        0x31t
        0x3ct
        0x41t
        -0x18t
        0x31t
        0x3bt
        -0x18t
        0x36t
        0x37t
        0x3ct
        -0x18t
        0x3at
        0x2dt
        0x3bt
        0x3dt
        0x35t
        0x2dt
        0x2ct
        -0xat
        0x2ct
        0x3ft
        0x4dt
        0x14t
        -0x6t
        0x17t
        0x19t
        0x2at
        0x15t
        0x2bt
        0x2at
        0x1ft
        0x22t
        -0x23t
        -0x14t
        -0x1bt
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "92eOfmmmV4HUmtBKNwX5jODUm9snbisL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "83A6RHTc3uHHgwZu0l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xT8NDmJO40EcDZzCFYpPknxtJdrIGRIs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yd9OYuKBF31VEKohInrUKVptjNnIlgtF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ffDhLNnwXMIpP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gJJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YtTChd0N7kYfN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CHt0mr4gyt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 4
    .param p0    # Lcom/facebook/ads/redexgen/X/Wm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1526
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A15(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    return-void

    .line 1528
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_1

    .line 1529
    return-void

    .line 1530
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ks;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Ks;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 1531
    .local p0, "pauseCheck":Ljava/lang/Runnable;
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    monitor-enter v1

    .line 1532
    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    sget-object v0, Lcom/facebook/ads/redexgen/X/Le;->A01:Lcom/facebook/ads/redexgen/X/Le;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1535
    return-void

    .line 1536
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized A05(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 8

    const-class v7, Lcom/facebook/ads/internal/util/activity/ActivityUtils;

    monitor-enter v7

    .line 1537
    :try_start_0
    sput-object p0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 1538
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00:Landroid/content/Context;

    .line 1539
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 1540
    invoke-static {}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->getANActivityLifecycleCallbacksListener()Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;

    move-result-object v0

    .line 1541
    .local v7, "anActivityLifecycleCallbacksListener":Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;
    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->getActivityStateMap()Ljava/util/Map;

    move-result-object v6

    .line 1543
    .local v0, "activityStateMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/Activity;Ljava/lang/Integer;>;"
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1544
    :try_start_1
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1545
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    const/16 v2, 0xd0

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A00:I

    const/16 v2, 0x48

    const/16 v1, 0x50

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 1546
    invoke-interface {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 1547
    .end local v0    # "activityStateMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/Activity;Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit v6

    goto :goto_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1548
    :goto_1
    invoke-static {p0}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->unregisterActivityCallbacks(Landroid/content/Context;)V

    .line 1549
    .end local v0
    :cond_0
    new-instance v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;

    invoke-direct {v1}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;-><init>()V

    .line 1550
    .local v0, "activityUtils":Lcom/facebook/ads/internal/util/activity/ActivityUtils;
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_2

    .line 1551
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    const/16 v2, 0xd8

    const/4 v1, 0x3

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A0S:I

    const/16 v2, 0x2a

    const/16 v1, 0x1e

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 1552
    invoke-interface {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1553
    :goto_2
    monitor-exit v7

    return-void

    .line 1554
    .end local v2
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Kt;)V
    .locals 1

    .line 1555
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 1557
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "6ucg7ZQRC52PgbYLp0IlsO8L9UBIqtAr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "XfsAw5zLn3vJHYKMay1aCQiNLVOIwPXI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Kt;

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 1559
    .local p1, "l":Lcom/facebook/ads/redexgen/X/Kt;
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "iumI3xtLNqPcrNpQRfIXTTQBS2XI6o9a"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3M47x6SFZQsPA8LivG4PTFLsGfmISPHf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Kt;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1560
    .end local p1    # "l":Lcom/facebook/ads/redexgen/X/Kt;
    goto :goto_0

    .line 1561
    .local p1, "l":Lcom/facebook/ads/redexgen/X/Kt;
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "8KcxamUEn1kG3BWp4BQMp83jjOEwQ4o0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Kt;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1562
    .end local p1    # "l":Lcom/facebook/ads/redexgen/X/Kt;
    goto :goto_0

    .line 1563
    :cond_2
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1564
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    .line 1566
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1567
    .local p0, "oldActivityState":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 1568
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x98

    const/16 v1, 0x14

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xac

    const/16 v1, 0x1f

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    .local p1, "deLogException":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 1570
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 1571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A01:I

    .line 1572
    const/16 v2, 0xd0

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 1573
    .end local p1    # "deLogException":Lcom/facebook/ads/redexgen/X/8f;
    :cond_1
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "JDQWN6r7PeBrp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "aqFQJaJqWbppO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    if-eq v3, v0, :cond_4

    .line 1575
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    monitor-enter v2

    .line 1576
    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1577
    .local v0, "pauseListenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1578
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[Ljava/lang/String;

    const-string v1, "lYymkPojxvbSy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "AeANgxeUAqsbj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1580
    .local v4, "r":Ljava/lang/Runnable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Le;->A01:Lcom/facebook/ads/redexgen/X/Le;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1581
    .end local v4    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 1582
    .end local v0    # "pauseListenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1583
    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04:Lcom/facebook/ads/redexgen/X/Kx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kx;->A01()V

    .line 1584
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1585
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04:Lcom/facebook/ads/redexgen/X/Kx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kx;->A02()V

    .line 1587
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1588
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1589
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1591
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    return-void
.end method
