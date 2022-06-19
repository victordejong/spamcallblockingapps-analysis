.class public final Lcom/facebook/ads/redexgen/X/0t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Lorg/json/JSONObject;

.field public final A02:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0t;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0t;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2369
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    .line 2370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    .line 2371
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2372
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0t;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0t;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x43t
        -0x41t
        -0x3ft
        -0x41t
        -0x32t
        -0x3t
        0x6t
        -0x5t
        0xat
        0x11t
        0x8t
        0xct
        -0x3t
        -0x4t
        -0x9t
        0x1t
        -0x4t
        -0xbt
        -0x17t
        0x0t
        -0x19t
        -0x15t
        -0x17t
        -0x8t
        -0x8t
        -0x13t
        -0x14t
        -0x19t
        -0x17t
        -0x6t
        -0x6t
        -0x17t
        0x1t
        -0x19t
        -0xct
        -0x13t
        -0xat
        -0x11t
        -0x4t
        -0x10t
        0x1bt
        0xft
        0xft
        0x21t
        0x1et
        0x1et
        0x11t
        0x1at
        0xft
        0x11t
        0x1ft
        0x30t
        0x25t
        0x32t
        0x29t
        0x2ft
        0x24t
        0x7t
        -0x2t
        0x4t
        0x3t
        -0x12t
        -0x2t
        -0xet
        -0xet
        0x4t
        0x1t
        0x1t
        -0xct
        -0x3t
        -0xet
        -0xct
        -0x12t
        0x2t
        -0xct
        -0xet
        0x2t
        0x25t
        0x1ct
        0x22t
        0x21t
        0xct
        0x1dt
        0x12t
        0x1ft
        0x16t
        0x1ct
        0x11t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yonrCQ0uoeCYCSmT5ejKLJLtf9VOp321"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NDuBqnzzJqzb1WeHMragxAHoyIt26Von"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hWL4zdMk8yywijkAtqHNVn2pZmfj34f9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9i7qyia1evnFwuCuocWilq3mxIKRQ8Gt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sdkV7vC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wcot"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 4

    .line 2373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2374
    .local p0, "list":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    const-string v1, "Yd8WV87KlA8AS9IbyfadEkj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final A04()Lorg/json/JSONObject;
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .locals 3

    monitor-enter p0

    .line 2376
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2377
    .local p0, "array":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2378
    .local v0, "encryptedAdId":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2379
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    monitor-exit p0

    return-void

    .line 2381
    .end local p0    # "array":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A06(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2382
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    :cond_0
    return-void

    .line 2384
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    .line 2385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    const-string v1, "UA8Xl4cUWiibomIJsxlEAR8tJmjOD96n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 2386
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2387
    .local p1, "encryptedId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    .line 2389
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0t;->A0A(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2391
    .end local p0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized A07(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2392
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1M;->A00()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2394
    .local p0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 2396
    .end local p0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2397
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5q;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    monitor-exit p0

    return-void

    .line 2399
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 2400
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2401
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2402
    .local p0, "cappedAdsJSONArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2403
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1M;->A00()I

    move-result v0

    if-lt v2, v0, :cond_1

    goto :goto_1

    .line 2404
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2406
    .end local p1    # "i":I
    .end local v3
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 2407
    .end local p0    # "cappedAdsJSONArray":Lorg/json/JSONArray;
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2408
    .restart local v2
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized A09(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2409
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A02:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 2410
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5q;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0t;->A04:[Ljava/lang/String;

    const-string v1, "k5dwlx3o7BzwXZl9uaOOQfpUd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 2412
    .end local p1    # null:Ljava/lang/String;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0A(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2413
    const/4 v2, 0x5

    const/16 v1, 0xc

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2414
    .local p0, "encryptedAdId":Ljava/lang/String;
    const/16 v2, 0x33

    const/4 v1, 0x6

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2415
    .local p1, "cappingTimeSecs":I
    const/16 v2, 0x4d

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 2416
    .local v2, "xoutTimeSecs":I
    const/16 v2, 0x11

    const/16 v1, 0x17

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x32

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 2417
    .local v1, "maxCappedArrayLength":I
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2418
    .local v0, "cappingCount":J
    new-instance v4, Lcom/facebook/ads/redexgen/X/1M;

    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/1M;-><init>(Ljava/lang/String;)V

    .line 2419
    .local v2, "frequencyCappingData":Lcom/facebook/ads/redexgen/X/1M;
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    .line 2420
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    .line 2421
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/1M;

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/1M;

    .line 2423
    .end local v2    # "frequencyCappingData":Lcom/facebook/ads/redexgen/X/1M;
    .local v5, "frequencyCappingData":Lcom/facebook/ads/redexgen/X/1M;
    :cond_0
    const/16 v2, 0x28

    const/16 v1, 0xb

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2424
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 2425
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1M;->A07(Lorg/json/JSONArray;)V

    .line 2426
    :cond_1
    const/16 v2, 0x39

    const/16 v1, 0x14

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2427
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2428
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1M;->A05(I)V

    .line 2429
    :cond_2
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/1M;->A06(IIJI)V

    .line 2430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A01:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2431
    return-void
.end method
