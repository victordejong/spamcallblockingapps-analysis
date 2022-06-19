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

    .line 19353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x65

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

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

    .line 19354
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 19355
    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 19356
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    .line 19357
    sget-object v3, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    const/16 v2, 0x1d

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19358
    sget-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/94;->A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Ljava/util/Map;

    .line 19359
    sget-object v0, Lcom/facebook/ads/redexgen/X/94;->A00:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/94;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/94;->A02:[Ljava/lang/String;

    const-string v1, "csszmLyTseT6qvLdDZ4XLWwozasc9BBN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 19360
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

    .line 19361
    :try_start_0
    const/16 v2, 0x30

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x48

    const/4 v1, 0x7

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19362
    const/16 v2, 0x33

    const/16 v1, 0xb

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19363
    const/16 v2, 0x28

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/4 v1, 0x7

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19364
    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19365
    new-instance v3, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 19366
    .local p1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8o;
    const/16 v2, 0xf

    const/4 v1, 0x7

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19367
    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19368
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19369
    const/16 v2, 0x23

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8o;->A0A()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19370
    const/16 v2, 0x3e

    const/16 v1, 0xa

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19371
    monitor-exit v4

    return-object p1

    .line 19372
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
        0x3ft
        0x2et
        0x2et
        0x3ct
        0x2bt
        0x37t
        0x32t
        0x3at
        0x76t
        0x67t
        0x67t
        0x79t
        0x76t
        0x7at
        0x72t
        0x1bt
        0xat
        0xat
        0xct
        0x1ft
        0x8t
        0x9t
        0xdt
        0x22t
        0x28t
        0x3et
        0x23t
        0x25t
        0x28t
        0x20t
        0x37t
        0x2ct
        0x26t
        0x2et
        0x27t
        0xdt
        0xft
        0x4t
        0x5t
        0xct
        0x35t
        0x29t
        0x79t
        0x65t
        0x60t
        0x73t
        0x64t
        0x65t
        0x72t
        0x65t
        0x6at
        0x7et
        0x69t
        0x66t
        0x72t
        0x7bt
        0x68t
        0x7ft
        0x7et
        0x64t
        0x62t
        0x63t
        0x1t
        0x17t
        0x1t
        0x1t
        0x1bt
        0x1dt
        0x1ct
        0xdt
        0x1bt
        0x16t
        0x35t
        0x3at
        0x30t
        0x26t
        0x3bt
        0x3dt
        0x30t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "khEJJSEBeZAj3OAxCgzNidlYCZn1WdrQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WigI19L"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nVQbXZzkIzZCm6ed4Wwsa9gCOy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HTplkKsJZ28QwTvwNKGrQ1qXfC2z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xAVvuzXwzMicNcIETZjP5vM2paYATPUF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZQBu7F3mQUfNW6aD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dGQdYWCLx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hFrznfqGyDFETBry94BNLT7Zi42G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/94;->A02:[Ljava/lang/String;

    return-void
.end method
