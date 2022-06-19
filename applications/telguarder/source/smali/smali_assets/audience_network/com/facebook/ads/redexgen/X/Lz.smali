.class public final Lcom/facebook/ads/redexgen/X/Lz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ly;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Landroid/hardware/SensorManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A09:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/Ly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lz;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lz;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 43503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43504
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:I

    .line 43505
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A02:F

    .line 43506
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Ljava/util/Set;

    .line 43507
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 43508
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lz;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lz;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lz;->A0B:[Ljava/lang/String;

    const-string v1, "nz7up3lN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 6

    .line 43509
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Wm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Landroid/hardware/SensorManager;

    .line 43510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 43511
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43512
    :cond_0
    const/4 v4, 0x0

    .line 43513
    .local p0, "supported":Z
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Landroid/hardware/SensorManager;

    .line 43514
    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v0, 0x3

    .line 43515
    invoke-virtual {v2, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    .line 43516
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43517
    .local v2, "e":Ljava/lang/Exception;
    :catch_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    const/16 v2, 0x15

    const/16 v1, 0x15

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lz;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43518
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 43519
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 43520
    :cond_1
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        0x4ct
        0x47t
        0x5at
        0x46t
        0x5bt
        0x5at
        0x9t
        0x47t
        0x46t
        0x5dt
        0x9t
        0x5at
        0x5ct
        0x59t
        0x59t
        0x46t
        0x5bt
        0x5dt
        0x4ct
        0x4dt
        0x5t
        0x3et
        0x37t
        0x3dt
        0x3ft
        0x38t
        0x31t
        0x76t
        0x38t
        0x39t
        0x22t
        0x76t
        0x25t
        0x23t
        0x26t
        0x26t
        0x39t
        0x24t
        0x22t
        0x33t
        0x32t
        0x19t
        0xft
        0x4t
        0x19t
        0x5t
        0x18t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Uaa3J2scapV8yes5b6pnu2IZk0LU1rHr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LXJurOGNRLg3EZS8fSyHIDjya5ZXSJzZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hCsv3utrXnSLOEX2XFPv3VRLBGlOvh7o"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RmYGkVFgjEbS5IzY3jbSoV7saQb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "K5WWR24mbSYeRgwsb3gP0cRcHXaCk4OY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QLQ7H5Nzwy1ReHmp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "O9fDe2IL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IeHuYhXCHfpoc9Iu6CaN8EzSXeA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Lz;->A0B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/Ly;)V
    .locals 1

    .line 43521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43522
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A01()V

    .line 43523
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43524
    return-void

    .line 43525
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43526
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 43527
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 43528
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 43529
    return-void

    .line 43530
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 43531
    .local v0, "now":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A04:J

    sub-long v8, v2, v0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    cmp-long v0, v8, v5

    if-lez v0, :cond_1

    .line 43532
    iput v7, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:I

    .line 43533
    :cond_1
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:J

    sub-long v10, v2, v5

    const-wide/16 v8, 0x64

    cmp-long v0, v10, v8

    if-lez v0, :cond_4

    .line 43534
    sub-long v0, v2, v5

    .line 43535
    .local v4, "diff":J
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v7

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    add-float/2addr v6, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v5, v5, v10

    add-float/2addr v6, v5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Lz;->A00:F

    sub-float/2addr v6, v5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:F

    sub-float/2addr v6, v5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Lz;->A02:F

    sub-float/2addr v6, v5

    .line 43536
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    long-to-float v5, v0

    div-float/2addr v6, v5

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v0

    .line 43537
    .local v6, "speed":F
    const/high16 v0, 0x44480000    # 800.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_3

    .line 43538
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:I

    const/4 v0, 0x3

    if-lt v1, v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A05:J

    sub-long v8, v2, v0

    const-wide/16 v5, 0x3e8

    cmp-long v0, v8, v5

    if-lez v0, :cond_2

    .line 43539
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A05:J

    .line 43540
    iput v7, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:I

    .line 43541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43542
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/internal/util/rageshake/ShakeDetector$OnShakeListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ly;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ly;->ABb()V

    goto :goto_0

    .line 43544
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/internal/util/rageshake/ShakeDetector$OnShakeListener;>;"
    :cond_2
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A04:J

    .line 43545
    :cond_3
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:J

    .line 43546
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A00:F

    .line 43547
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:F

    .line 43548
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A02:F

    .line 43549
    .end local v4    # "diff":J
    .end local v6    # "speed":F
    :cond_4
    return-void
.end method
