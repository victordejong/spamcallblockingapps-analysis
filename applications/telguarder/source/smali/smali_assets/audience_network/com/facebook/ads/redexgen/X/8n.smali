.class public final Lcom/facebook/ads/redexgen/X/8n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8m;,
        Lcom/facebook/ads/redexgen/X/8l;
    }
.end annotation


# static fields
.field public static A00:Landroid/hardware/Sensor;

.field public static A01:Landroid/hardware/Sensor;

.field public static A02:Landroid/hardware/SensorEventListener;

.field public static A03:Landroid/hardware/SensorEventListener;

.field public static A04:Landroid/hardware/SensorManager;

.field public static A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile A0A:[F

.field public static volatile A0B:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 18899
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A03()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    .line 18900
    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/hardware/Sensor;

    .line 18901
    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/hardware/Sensor;

    .line 18902
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    .line 18903
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v2, 0x98

    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x1

    const/16 v2, 0x99

    const/4 v1, 0x1

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x2

    const/16 v2, 0x9a

    const/4 v1, 0x1

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/ads/redexgen/X/8n;->A08:[Ljava/lang/String;

    .line 18904
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 18906
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18907
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18908
    .local v1, "currentAnalogInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18909
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/8n;->A0D(Ljava/util/Map;)V

    .line 18910
    return-object v1
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x7bt
        0x79t
        -0x80t
        -0x7et
        -0x7et
        -0x7ct
        -0x75t
        -0x7ct
        -0x6ft
        -0x72t
        -0x74t
        -0x7ct
        -0x6dt
        -0x7ct
        -0x6ft
        0x7et
        -0x30t
        -0x2et
        -0x1dt
        -0x28t
        -0x1bt
        -0x28t
        -0x1dt
        -0x18t
        -0x5bt
        -0x4et
        -0x58t
        -0x4at
        -0x4dt
        -0x53t
        -0x58t
        0x72t
        -0x53t
        -0x4et
        -0x48t
        -0x57t
        -0x4et
        -0x48t
        0x72t
        -0x5bt
        -0x59t
        -0x48t
        -0x53t
        -0x4dt
        -0x4et
        0x72t
        -0x7at
        -0x7bt
        -0x68t
        -0x68t
        -0x77t
        -0x6at
        -0x63t
        -0x5dt
        -0x79t
        -0x74t
        -0x7bt
        -0x6et
        -0x75t
        -0x77t
        -0x78t
        -0x29t
        -0x14t
        -0x29t
        -0x21t
        -0x1et
        -0x29t
        -0x28t
        -0x1et
        -0x25t
        -0x2bt
        -0x1dt
        -0x25t
        -0x1dt
        -0x1bt
        -0x18t
        -0x11t
        -0x37t
        -0x38t
        -0x25t
        -0x25t
        -0x34t
        -0x27t
        -0x20t
        -0x6bt
        -0x66t
        -0x6dt
        -0x5ct
        -0x67t
        -0x65t
        -0x60t
        -0x67t
        -0x64t
        -0x58t
        -0x65t
        -0x65t
        -0x6bt
        -0x57t
        -0x5at
        -0x69t
        -0x67t
        -0x65t
        -0x36t
        -0x38t
        -0x2ft
        -0x38t
        -0x2bt
        -0x34t
        -0x3at
        -0x17t
        -0x1et
        -0xdt
        -0x1et
        -0x17t
        -0x78t
        -0x7bt
        -0x76t
        0x77t
        -0x76t
        0x7ft
        -0x7bt
        -0x7ct
        0x75t
        -0x3ct
        -0x4ct
        -0x4et
        -0x43t
        -0x4at
        -0x25t
        -0x33t
        -0x2at
        -0x25t
        -0x29t
        -0x26t
        -0x1dt
        -0x1ct
        -0x2ft
        -0x1ct
        -0x1bt
        -0x1dt
        -0x4ft
        -0x54t
        -0x4ft
        -0x62t
        -0x57t
        -0x64t
        -0x56t
        -0x5et
        -0x56t
        -0x54t
        -0x51t
        -0x4at
        0x7dt
        -0x19t
        -0xbt
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7eGKOt4ISMEYschr9wlyEIztBsl8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TTJ0SjXobBHAmUaW1tlxfrBvYn82JEz6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3LUB7Df5Ggct5yxRqYufGNynk2TYWoUK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1I8xJgaOb9tMETkvkBJNz6jksqJjIngl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TAh41slKxPoXkVm5KB1gRA20jOShRxma"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aZE0D3Nzia7NPpwyI7jJpGAo9RmAmb1V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Csh6RZP7AyktK0BvOeX4eGA8IGxaL7YA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zoHdPltVC2GSlvLv7GuoG1E6B1q8QeZx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8n;->A07:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05()V
    .locals 0

    .line 18911
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A07()V

    return-void
.end method

.method public static synthetic A06()V
    .locals 3

    .line 18912
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A08()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8n;->A07:[Ljava/lang/String;

    const-string v1, "1AcqPsu2XoXoOErwkGIQ3CIXDthbnRh4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "oXx7ElW6b7VqM4292MU9YfwWEJ2ivE26"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static declared-synchronized A07()V
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/8n;

    monitor-enter v2

    .line 18913
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 18914
    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 18915
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Landroid/hardware/SensorEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18916
    monitor-exit v2

    return-void

    .line 18917
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized A08()V
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/8n;

    monitor-enter v2

    .line 18918
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 18919
    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A03:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 18920
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A03:Landroid/hardware/SensorEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18921
    monitor-exit v2

    return-void

    .line 18922
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A09(Landroid/content/Context;)V
    .locals 4

    .line 18923
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 18924
    .local p0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18925
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 18926
    .local v0, "blockSize":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 18927
    .local v0, "availableBlocks":J
    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 18928
    .local p2, "freeSpace":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18929
    sget-object v3, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    const/16 v2, 0x5c

    const/16 v1, 0xa

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18930
    return-void
.end method

.method public static A0A(Landroid/content/Context;)V
    .locals 6

    .line 18931
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 18932
    .local p0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 18933
    .local v5, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 18934
    sget-object v4, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    iget-wide v0, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3d

    const/16 v1, 0x10

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18935
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 18936
    sget-object v4, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    iget-wide v0, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8c

    const/16 v1, 0xc

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18937
    :cond_0
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 6

    .line 18938
    const/4 v3, 0x0

    :try_start_0
    const/16 v2, 0x18

    const/16 v1, 0x25

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18939
    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/8D;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 18940
    .local p0, "batteryIntent":Landroid/content/Intent;
    if-nez p0, :cond_0

    .line 18941
    return-void
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18942
    :cond_0
    const/4 v5, -0x1

    const/16 v2, 0x6d

    const/4 v1, 0x5

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 18943
    .local v2, "level":I
    const/16 v2, 0x7b

    const/4 v1, 0x5

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 18944
    .local v1, "scale":I
    const/16 v2, 0x86

    const/4 v1, 0x6

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 18945
    .local v3, "status":I
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_3

    :cond_1
    const/4 v5, 0x1

    .line 18946
    .local v0, "isCharging":Z
    :goto_0
    const/4 v1, 0x0

    .line 18947
    .local v1, "batteryLevel":F
    if-lez v3, :cond_2

    .line 18948
    int-to-float v1, v4

    int-to-float v0, v3

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    .line 18949
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4d

    const/4 v1, 0x7

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18950
    sget-object v4, Lcom/facebook/ads/redexgen/X/8n;->A05:Ljava/util/Map;

    if-eqz v5, :cond_5

    const/4 p0, 0x1

    const/4 v5, 0x1

    const/16 v3, 0x45

    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18951
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/8n;->A07:[Ljava/lang/String;

    const-string v1, "2rh2rYsUsFIhg9PWxqd5qIMJGCLFZ7lY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Gwhc7bfiWFC7B4lewlWqcogh0J7RP8uO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 18952
    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v2, 0x54

    const/16 v1, 0x8

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18953
    return-void

    .line 18954
    .end local p0    # "batteryIntent":Landroid/content/Intent;
    .end local v3    # "status":I
    .end local v2    # "level":I
    .end local v1    # "batteryLevel":F
    .end local v0    # "isCharging":Z
    .end local v1
    :catch_0
    move-exception v0

    .line 18955
    .local p0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 18956
    const/16 v2, 0x66

    const/4 v1, 0x7

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18957
    return-void
.end method

.method public static declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/8n;

    monitor-enter v5

    .line 18958
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8n;->A0A(Landroid/content/Context;)V

    .line 18959
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8n;->A0B(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 18960
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 18961
    const/16 v2, 0x80

    const/4 v1, 0x6

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    .line 18962
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18963
    monitor-exit v5

    return-void

    .line 18964
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 18965
    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/hardware/Sensor;

    .line 18966
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 18967
    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/hardware/Sensor;

    .line 18968
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 18969
    new-instance v0, Lcom/facebook/ads/redexgen/X/8l;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8l;-><init>(Lcom/facebook/ads/redexgen/X/8k;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A02:Landroid/hardware/SensorEventListener;

    .line 18970
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 18971
    sget-object v2, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A02:Landroid/hardware/SensorEventListener;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/hardware/Sensor;

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 18972
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A03:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_4

    .line 18973
    new-instance v0, Lcom/facebook/ads/redexgen/X/8m;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8m;-><init>(Lcom/facebook/ads/redexgen/X/8k;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8n;->A03:Landroid/hardware/SensorEventListener;

    .line 18974
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 18975
    sget-object v2, Lcom/facebook/ads/redexgen/X/8n;->A04:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8n;->A03:Landroid/hardware/SensorEventListener;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/hardware/Sensor;

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18976
    :cond_4
    monitor-exit v5

    return-void

    .line 18977
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static A0D(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18978
    .local v5, "sAnalogInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/facebook/ads/redexgen/X/8n;->A0A:[F

    .line 18979
    .local p0, "currentAccelerometerValues":[F
    sget-object v6, Lcom/facebook/ads/redexgen/X/8n;->A0B:[F

    .line 18980
    .local v7, "currentGyroscopeValues":[F
    if-eqz v7, :cond_0

    .line 18981
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A08:[Ljava/lang/String;

    array-length v1, v0

    array-length v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 18982
    .local v6, "length":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 18983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A08:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v0, v7, v4

    .line 18984
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 18985
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18986
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18987
    .end local v6    # "length":I
    .end local v0    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    .line 18988
    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A08:[Ljava/lang/String;

    array-length v1, v0

    array-length v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 18989
    .restart local v6    # "length":I
    const/4 v4, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 18990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x72

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8n;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8n;->A08:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v0, v6, v4

    .line 18991
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 18992
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18993
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18994
    .end local v6    # "length":I
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static synthetic A0E([F)[F
    .locals 0

    .line 18995
    sput-object p0, Lcom/facebook/ads/redexgen/X/8n;->A0A:[F

    return-object p0
.end method

.method public static synthetic A0F([F)[F
    .locals 0

    .line 18996
    sput-object p0, Lcom/facebook/ads/redexgen/X/8n;->A0B:[F

    return-object p0
.end method
