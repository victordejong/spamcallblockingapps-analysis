.class public final Lcom/facebook/ads/redexgen/X/94;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/94;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/94;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A02:[Ljava/lang/String;

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/94;->A02:[Ljava/lang/String;

    const-string v1, "gDribvuqSsGNU0u3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v4, Lcom/facebook/ads/redexgen/X/94;

    monitor-enter v4

    .line 19478
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 19479
    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 19480
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    .line 19481
    sget-object v3, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    const/16 v2, 0x1d

    const/4 v1, 0x6

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19482
    sget-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/94;->A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Ljava/util/Map;

    .line 19483
    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v0

    .line 19484
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static declared-synchronized A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local v0, "envDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Lcom/facebook/ads/redexgen/X/94;

    monitor-enter v4

    .line 19485
    :try_start_0
    const/16 v2, 0x30

    const/4 v1, 0x3

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x48

    const/4 v1, 0x7

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19486
    const/16 v2, 0x33

    const/16 v1, 0xb

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19487
    const/16 v2, 0x28

    const/4 v1, 0x2

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/4 v1, 0x7

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19488
    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19489
    new-instance v3, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 19490
    .local p1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8o;
    const/16 v2, 0xf

    const/4 v1, 0x7

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19491
    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19492
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19493
    const/16 v2, 0x23

    const/4 v1, 0x5

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A0A()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19494
    const/16 v2, 0x3e

    const/16 v1, 0xa

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19495
    monitor-exit v4

    return-object p1

    .line 19496
    .end local p1    # "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8o;
    .end local v1
    .end local v0    # "envDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x4f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/94;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        -0x36t
        -0x36t
        -0x44t
        -0x31t
        -0x3dt
        -0x3at
        -0x42t
        -0x3ct
        -0x2dt
        -0x2dt
        -0x2ft
        -0x3ct
        -0x30t
        -0x38t
        0x6t
        0x15t
        0x15t
        0x1bt
        0xat
        0x17t
        0x18t
        -0x10t
        0x1dt
        0x13t
        0x21t
        0x1et
        0x18t
        0x13t
        -0x31t
        -0x1et
        -0x25t
        -0x2ft
        -0x27t
        -0x2et
        -0x24t
        -0x22t
        -0x2dt
        -0x2ct
        -0x25t
        0x0t
        0x4t
        0x4t
        0x8t
        0xbt
        -0x6t
        0x7t
        0x8t
        -0x33t
        -0x42t
        -0x3bt
        -0x1ft
        -0x2et
        -0x27t
        -0x13t
        -0x1ct
        -0x2dt
        -0x20t
        -0x1ft
        -0x29t
        -0x23t
        -0x24t
        -0x44t
        -0x52t
        -0x44t
        -0x44t
        -0x4et
        -0x48t
        -0x49t
        -0x38t
        -0x4et
        -0x53t
        0x14t
        0x21t
        0x17t
        0x25t
        0x22t
        0x1ct
        0x17t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iAmMZEnTjRyKTNBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vq5cthhr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "805H8tMQ6F09oxi1Jl38UficVRLMtQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JBRmxZg7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Cn5UKxgX5LOr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xwoZ6hhdKgqxJaNY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yguqyABz11m3k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UOBi89mTAaMo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/94;->A02:[Ljava/lang/String;

    return-void
.end method
