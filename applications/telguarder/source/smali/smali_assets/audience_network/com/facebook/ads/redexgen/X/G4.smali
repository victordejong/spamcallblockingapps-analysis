.class public Lcom/facebook/ads/redexgen/X/G4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qe;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Qf;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G4;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G4;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qf;)V
    .locals 1

    .line 33357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33358
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Lcom/facebook/ads/redexgen/X/Qf;

    .line 33359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A04:Ljava/util/List;

    .line 33360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:Z

    .line 33361
    return-void
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/G4;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G4;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x4at
        -0x17t
        -0x1et
        -0x28t
        -0x20t
        -0x27t
        -0x6ct
        -0x67t
        -0x19t
        -0x6ct
        -0x28t
        -0x2bt
        -0x18t
        -0x2bt
        -0x6ct
        -0x17t
        -0x1ct
        -0x28t
        -0x2bt
        -0x18t
        -0x27t
        -0x52t
        0x7et
        -0x62t
        -0x62t
        -0x6ct
        -0x28t
        -0x2bt
        -0x18t
        -0x2bt
        -0x6ct
        -0x62t
        -0x62t
        0x7et
        -0x67t
        -0x19t
        0x7et
        -0x62t
        -0x62t
        -0x6ct
        -0x26t
        -0x23t
        -0x1et
        -0x25t
        -0x27t
        -0x1at
        -0x1ct
        -0x1at
        -0x23t
        -0x1et
        -0x18t
        -0x6ct
        -0x62t
        -0x62t
        0x7et
        -0x67t
        -0x19t
        0x7at
        -0x53t
        -0x5at
        -0x64t
        -0x5ct
        -0x63t
        0x58t
        -0x60t
        -0x67t
        -0x55t
        0x58t
        -0x5at
        -0x59t
        0x58t
        -0x62t
        -0x5ft
        -0x5at
        -0x61t
        -0x63t
        -0x56t
        -0x58t
        -0x56t
        -0x5ft
        -0x5at
        -0x54t
        0x6ft
        -0x5et
        -0x65t
        -0x6ft
        -0x67t
        -0x6et
        0x4dt
        -0x6at
        -0x60t
        0x4dt
        -0x65t
        -0x64t
        -0x5ft
        0x4dt
        -0x61t
        -0x6et
        -0x72t
        -0x6ft
        -0x5at
        -0x1ft
        -0x22t
        -0xft
        -0x22t
        -0x63t
        -0x46t
        -0x46t
        -0x63t
        -0x15t
        -0xet
        -0x17t
        -0x17t
        -0x2et
        -0x2bt
        -0x26t
        -0x2dt
        -0x2ft
        -0x22t
        -0x24t
        -0x22t
        -0x2bt
        -0x26t
        -0x20t
        -0x74t
        -0x73t
        -0x57t
        -0x74t
        -0x26t
        -0x1ft
        -0x28t
        -0x28t
        -0x6at
        -0x67t
        -0x62t
        -0x69t
        -0x6bt
        -0x5et
        -0x60t
        -0x5et
        -0x67t
        -0x62t
        -0x5ct
        0x50t
        0x6dt
        0x6dt
        0x50t
        -0x62t
        -0x5bt
        -0x64t
        -0x64t
        -0x27t
        -0x20t
        -0x29t
        -0x29t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yRXLvV6684AXZ9fcq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vEguDVjFVElzweRTvbEBCHpFtlCOXPGf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n73JqSWL2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lL952mDjkFyVsRAmei7gfkUaZ4Sm1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9LumYHttaOgu0zRLY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UhzFslFq7HG9pW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W7U9994wkUASJrIiDfo4uMiPw7sp0BjJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ao4Oe02EKx4MuIufRzMQ1mAQwpjGLd7f"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G4;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A06(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33362
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 33363
    const/4 v0, 0x0

    return v0

    .line 33364
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 33365
    :cond_1
    return v1

    .line 33366
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Qd;->A03(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final declared-synchronized A07(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 33367
    if-eqz p1, :cond_b

    .line 33368
    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33369
    :cond_0
    const/16 v2, 0x84

    const/16 v1, 0x13

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33370
    .end local v0
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A05()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33371
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/G4;->A06(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/G4;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_3

    .line 33372
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33373
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/G4;->A06:[Ljava/lang/String;

    const-string v1, "TrlbmVjchAzDxILCb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wogMkYDH6IIpl84Yx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v4, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/G4;->A06(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33374
    :cond_4
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lorg/json/JSONObject;

    .line 33375
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Lorg/json/JSONObject;

    .line 33376
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:Z

    .line 33377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    .line 33378
    .local v0, "l":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qg;->A3r()V

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33379
    :cond_5
    :try_start_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x39

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Lcom/facebook/ads/redexgen/X/Qf;

    aput-object v0, v4, v3

    .line 33380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lorg/json/JSONObject;

    const/4 v3, 0x2

    if-nez v0, :cond_7

    const/16 v2, 0x97

    const/4 v1, 0x4

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v7

    .line 33381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    const/16 v2, 0x97

    const/4 v1, 0x4

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v4, v3

    .line 33382
    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    .line 33383
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 33384
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33385
    :catch_0
    :goto_4
    monitor-exit p0

    return v7

    .line 33386
    :cond_8
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/G4;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_9

    return v3

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/G4;->A06:[Ljava/lang/String;

    const-string v1, "lYBdPUVAZr1PFAysizh6CLWiFBOI5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ljDLCOedQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .line 33387
    :cond_a
    :try_start_3
    const/16 v2, 0x71

    const/16 v1, 0x13

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33388
    :cond_b
    const/16 v2, 0x65

    const/16 v1, 0xc

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33389
    .end local v1
    .end local v0    # "l":Lcom/facebook/ads/redexgen/X/Qg;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A3F(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 1

    monitor-enter p0

    .line 33390
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33391
    monitor-exit p0

    return-void

    .line 33392
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Qg;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6B()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 33393
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 33394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33395
    :cond_0
    :try_start_1
    const/16 v2, 0x52

    const/16 v1, 0x13

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6W()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 33397
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 33399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33400
    :cond_0
    :try_start_1
    const/16 v2, 0x52

    const/16 v1, 0x13

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33401
    :cond_1
    const/16 v2, 0x39

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6a()Lcom/facebook/ads/redexgen/X/Qf;
    .locals 1

    .line 33403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Lcom/facebook/ads/redexgen/X/Qf;

    return-object v0
.end method

.method public final declared-synchronized A8B()Z
    .locals 1

    monitor-enter p0

    .line 33404
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
