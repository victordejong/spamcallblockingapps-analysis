.class public final Lcom/facebook/ads/redexgen/X/8g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/Object;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 18477
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8g;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8g;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/8g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8g;->A04:Ljava/lang/String;

    .line 18478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8g;->A03:Ljava/lang/Object;

    .line 18479
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18480
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    .line 18481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18482
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    .line 18483
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8g;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 5

    .line 18485
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18486
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 18487
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/8i;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/8i;"
        }
    .end annotation

    .line 18488
    .local v0, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 18489
    :try_start_0
    const/4 v0, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/8S;

    invoke-direct {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/8S;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 18490
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v3

    .line 18491
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v2

    .line 18492
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8S;->A02()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8i;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/8i;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    move-object v5, v0

    .line 18493
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/8g;->A0C(Lcom/facebook/ads/redexgen/X/8i;Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18494
    :catch_0
    return-object v5
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8g;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8D;)Lorg/json/JSONArray;
    .locals 1

    .line 18495
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8g;->A04(Lcom/facebook/ads/redexgen/X/8D;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;I)Lorg/json/JSONArray;
    .locals 10

    .line 18496
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 18497
    .local p0, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v9, Lcom/facebook/ads/redexgen/X/8g;->A03:Ljava/lang/Object;

    monitor-enter v9

    .line 18498
    const/4 v3, 0x0

    .line 18499
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 18500
    .local v9, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 18501
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 18502
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18503
    .local v5, "debugLogFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18504
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 18505
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8D;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 18506
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 18507
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 18508
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v6, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 18509
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18510
    .local v8, "debugLogEvent":Lorg/json/JSONObject;
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18511
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18512
    :cond_1
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18513
    .local v2, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18514
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 18515
    .local v1, "attempt":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18516
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    .line 18517
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18518
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18519
    :goto_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 18520
    :cond_2
    invoke-static {v7, v1}, Lcom/facebook/ads/redexgen/X/8g;->A0F(Ljava/lang/String;I)V

    goto :goto_1

    .line 18521
    :goto_2
    if-lez p1, :cond_0

    .line 18522
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 18523
    .end local v5    # "debugLogFile":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18524
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 18525
    :cond_4
    if-eqz v5, :cond_5

    .line 18526
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 18527
    :cond_5
    if-eqz v3, :cond_8

    .line 18528
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18529
    :catch_0
    move-exception v1

    goto :goto_4

    .line 18530
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 18531
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18532
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18533
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 18534
    :cond_6
    if-eqz v5, :cond_7

    .line 18535
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 18536
    :cond_7
    if-eqz v3, :cond_8

    .line 18537
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18538
    :catch_3
    move-exception v1

    .line 18539
    .local v5, "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    goto :goto_5

    .local v5, "ex":Ljava/io/IOException;
    :goto_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    :goto_5
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18540
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_8
    :goto_6
    monitor-exit v9

    .line 18541
    return-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18542
    :catchall_0
    move-exception v2

    .line 18543
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3
    if-eqz v8, :cond_9

    .line 18544
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 18545
    :cond_9
    if-eqz v5, :cond_a

    .line 18546
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 18547
    :cond_a
    if-eqz v3, :cond_b

    .line 18548
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 18549
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3
    :catch_4
    move-exception v1

    .line 18550
    .local v8, "ex":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18551
    .end local p0    # "debugLogEvents":Lorg/json/JSONArray;
    .end local v1    # "attempt":I
    .end local v0
    :cond_b
    :goto_7
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 18552
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3
    :catchall_1
    move-exception v0

    .end local v4
    .end local v9
    .end local v3
    .restart local p0    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local v1    # "attempt":I
    .restart local v0
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/8i;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18553
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 18554
    .local p0, "reportObject":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18555
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8i;->A03()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x196

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18556
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8i;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x192

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18557
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8i;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18558
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8i;->A02()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x159

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8i;->A04()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8i;->A04()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 18560
    :goto_0
    const/16 v2, 0x10b

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18561
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18562
    return-object v4

    .line 18563
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x19a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8g;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x49t
        -0x18t
        -0x24t
        0x0t
        0x2et
        0x2bt
        0x2ct
        -0x1t
        0x2bt
        0x31t
        0x2at
        0x30t
        0x21t
        0x2et
        -0xat
        -0x24t
        -0x49t
        -0x2bt
        -0x1et
        -0x65t
        -0x18t
        -0x6ct
        -0x28t
        -0x27t
        -0x20t
        -0x27t
        -0x18t
        -0x27t
        -0x6ct
        -0x28t
        -0x27t
        -0x2at
        -0x17t
        -0x25t
        -0x6ct
        -0x27t
        -0x16t
        -0x27t
        -0x1et
        -0x18t
        -0x19t
        -0x6ct
        -0x26t
        -0x23t
        -0x20t
        -0x27t
        -0x5et
        0x1et
        0x3ct
        0x49t
        0x2t
        0x4ft
        -0x5t
        0x3ft
        0x40t
        0x47t
        0x40t
        0x4ft
        0x40t
        -0x5t
        0x41t
        0x44t
        0x47t
        0x40t
        -0x4t
        0x19t
        0x1at
        0x17t
        0x2at
        0x1ct
        0x34t
        0x25t
        0x27t
        0x1at
        0x1bt
        -0x2bt
        0x6t
        -0xbt
        -0x2t
        0x4t
        -0x2dt
        -0x1t
        0x5t
        -0x2t
        0x4t
        0x3t
        -0x1t
        -0x2t
        0x32t
        0x21t
        0x26t
        0x22t
        0x2bt
        0x20t
        0x22t
        0xbt
        0x22t
        0x31t
        0x34t
        0x2ct
        0x2ft
        0x28t
        -0x24t
        0x1t
        -0x2t
        -0xdt
        -0xft
        -0x54t
        -0x10t
        -0xft
        -0x12t
        0x1t
        -0xdt
        -0x54t
        -0xft
        0x2t
        -0xft
        -0x6t
        0x0t
        -0x1t
        -0x54t
        -0xet
        -0xbt
        -0x8t
        -0xft
        -0x46t
        -0x6at
        -0x2et
        -0xbt
        -0x8t
        -0xft
        -0x54t
        -0x1t
        -0xbt
        0x6t
        -0xft
        -0x3at
        -0x54t
        0x20t
        0x38t
        0x36t
        0x3dt
        0x3dt
        0x32t
        0x31t
        -0x13t
        0x32t
        0x43t
        0x32t
        0x3bt
        0x41t
        0x40t
        -0x5t
        0x1t
        0x19t
        0x17t
        0x1et
        0x1et
        0x17t
        0x1ct
        0x15t
        -0x32t
        0x11t
        0x1dt
        0x20t
        0x20t
        0x23t
        0x1et
        0x22t
        0x13t
        0x12t
        -0x32t
        0x12t
        0x13t
        0x10t
        0x23t
        0x15t
        -0x32t
        0x13t
        0x24t
        0x13t
        0x1ct
        0x22t
        -0x32t
        0x1at
        0x17t
        0x1ct
        0x13t
        -0x24t
        0x2ct
        0x4at
        0x51t
        0x41t
        0x46t
        0x3ft
        -0x8t
        0x4ct
        0x47t
        -0x8t
        0x4dt
        0x48t
        0x3ct
        0x39t
        0x4ct
        0x3dt
        -0x8t
        0x4dt
        0x46t
        0x4at
        0x3dt
        0x3bt
        0x47t
        0x4at
        0x3ct
        0x3dt
        0x3ct
        -0x8t
        0x3ct
        0x3dt
        0x3at
        0x4dt
        0x3ft
        0x24t
        0x47t
        0x3ft
        0x1dt
        0x4et
        0x3dt
        0x46t
        0x4ct
        0x6t
        -0x8t
        0x39t
        0x3ct
        0x3ct
        0x41t
        0x46t
        0x3ft
        -0x8t
        0x4ct
        0x47t
        -0x8t
        0x27t
        0x46t
        0x3ft
        0x47t
        0x41t
        0x46t
        0x3ft
        0x1dt
        0x4et
        0x3dt
        0x46t
        0x4ct
        0x6t
        0x24t
        0x39t
        0x2at
        0x32t
        0x35t
        0x1dt
        0x30t
        0x30t
        0x21t
        0x29t
        0x2ct
        0x30t
        -0xdt
        -0x10t
        0x3t
        -0x10t
        -0x2dt
        -0x2ct
        -0x32t
        -0x25t
        -0x22t
        -0x2at
        -0x2at
        -0x28t
        -0x23t
        -0x2at
        -0x17t
        -0x16t
        -0x19t
        -0x6t
        -0x14t
        -0xft
        -0xct
        -0x14t
        -0x8t
        0x22t
        0x25t
        0x2at
        0x25t
        0x2ft
        0x24t
        0x21t
        0x20t
        -0x24t
        0x21t
        0x32t
        0x21t
        0x2at
        0x30t
        -0x24t
        0x2ft
        0x24t
        0x2bt
        0x31t
        0x28t
        0x20t
        -0x24t
        0x2at
        0x2bt
        0x30t
        -0x24t
        0x1et
        0x21t
        -0x24t
        0x31t
        0x2ct
        0x20t
        0x1dt
        0x30t
        0x21t
        0x20t
        -0x24t
        0x30t
        0x2bt
        -0x24t
        0xbt
        0x2at
        0x23t
        0x2bt
        0x25t
        0x2at
        0x23t
        0x1t
        0x32t
        0x21t
        0x2at
        0x30t
        -0x16t
        0x41t
        0x3ct
        -0x7t
        -0x15t
        -0x7t
        -0x7t
        -0x11t
        -0xbt
        -0xct
        -0x1bt
        -0x11t
        -0x16t
        -0xdt
        -0x1bt
        -0xdt
        -0xdt
        -0x17t
        -0x11t
        -0x12t
        -0x21t
        -0xct
        -0x17t
        -0x13t
        -0x1bt
        0x31t
        0x29t
        0x27t
        0x2et
        0x2et
        0x23t
        0x22t
        0x3t
        0x34t
        0x23t
        0x2ct
        0x32t
        0x31t
        -0x22t
        -0x5t
        -0x22t
        -0x22t
        -0x20t
        -0x33t
        -0x21t
        -0x1ct
        -0x25t
        -0x30t
        0x13t
        0x15t
        0x2t
        0x14t
        0x19t
        0x10t
        0x5t
        -0x1t
        0x3t
        0xft
        0x4t
        0x5t
        0x46t
        0x3bt
        0x3ft
        0x37t
        0x4at
        0x4ft
        0x46t
        0x3bt
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xyQF3sxjnp2qUSvJDNu5P0iyyc584Vpd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "idh0g523ELVLwEFfu1u5qrhcL3DPrNZC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UJ0fDp2QsgF1WBSdDofKnf2EwbpjWzp9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LsjKEz1u6vy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QA8fX7ramcT9ifSsWPTVo7ChqvJDDBqT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HHR99srKdCFKOrgMnrhL9AMY8z42dkOr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PWBGS5sCKwM35N3BbQj09sXNColJxvDn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A08(Landroid/content/Context;)V
    .locals 5

    .line 18564
    sget-object v4, Lcom/facebook/ads/redexgen/X/8g;->A03:Ljava/lang/Object;

    monitor-enter v4

    .line 18565
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18566
    .local v4, "debugFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18567
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 18568
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0A(Landroid/content/Context;I)V

    .line 18569
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18570
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18571
    .end local v4    # "debugFile":Ljava/io/File;
    monitor-exit v4

    .line 18572
    return-void

    .line 18573
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A09(Landroid/content/Context;)V
    .locals 5

    .line 18574
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18575
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 18576
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 18577
    .local v2, "eventCount":I
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0A(Landroid/content/Context;I)V

    .line 18578
    return-void
.end method

.method public static A0A(Landroid/content/Context;I)V
    .locals 7

    .line 18579
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18580
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18581
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 18582
    if-gez p1, :cond_0

    .line 18583
    :goto_0
    const/16 v5, 0x4b

    const/16 v4, 0xa

    const/16 v3, 0x26

    sget-object v1, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18584
    :cond_0
    move v6, p1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const-string v1, "i"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18586
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V
    .locals 2

    .line 18587
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18588
    .local p0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18589
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p1

    const/16 p0, 0x2f

    const/16 v1, 0x12

    const/16 v0, 0x71

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18590
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18591
    :cond_0
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/8i;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 8

    .line 18592
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 18593
    sget-object v7, Lcom/facebook/ads/redexgen/X/8g;->A03:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const-string v1, "x3eFCbyvr5Cl6USQ1NhmXojVP7A3I9oe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    monitor-enter v7

    .line 18594
    :try_start_0
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 18595
    .local p1, "processSpecificName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18596
    .local v7, "debugFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18597
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A07(Landroid/content/Context;)I

    move-result v0

    .line 18598
    .local v2, "debugLogFileSizeLimit":I
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 18599
    .local v0, "fileSize":J
    if-lez v0, :cond_2

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    .line 18600
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 18601
    .local v0, "deleted":Z
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0A(Landroid/content/Context;I)V

    .line 18602
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18603
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18604
    if-nez v3, :cond_1

    goto :goto_0

    .line 18605
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A4Q()Ljava/util/Map;

    move-result-object v6

    .line 18606
    .local v2, "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x17f

    const/4 v3, 0x7

    const/4 v0, 0x1

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x10f

    const/16 v3, 0xa

    const/4 v0, 0x5

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18607
    const/16 v4, 0x186

    const/16 v3, 0xc

    const/16 v0, 0x36

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x961

    .line 18608
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 18609
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x66

    const/16 v3, 0x24

    const/16 v0, 0x22

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18611
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18612
    invoke-static {v0, p1, v6}, Lcom/facebook/ads/redexgen/X/8g;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/8i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18613
    :try_start_1
    monitor-exit v7

    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18614
    :goto_0
    :try_start_2
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x1f

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18615
    .end local v2    # "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v0    # "deleted":Z
    .end local v0
    .end local v2
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8g;->A05(Lcom/facebook/ads/redexgen/X/8i;)Lorg/json/JSONObject;

    move-result-object v1

    .line 18616
    .local v2, "debugLogJson":Lorg/json/JSONObject;
    const v0, 0x8000

    .line 18617
    invoke-virtual {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/8D;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 18618
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18619
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 18620
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 18621
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8g;->A09(Landroid/content/Context;)V

    goto :goto_1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18622
    :catch_0
    move-exception v1

    .line 18623
    .local p1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18624
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v7

    goto :goto_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 18625
    :cond_3
    :goto_2
    return-void
.end method

.method public static A0D(Ljava/lang/String;)V
    .locals 1

    .line 18626
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18627
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18628
    return-void
.end method

.method public static A0E(Ljava/lang/String;)V
    .locals 4

    .line 18629
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 18630
    .local p0, "attempt":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 18631
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18632
    sget-object v3, Lcom/facebook/ads/redexgen/X/8g;->A04:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x42

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18633
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 18634
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18635
    return-void

    .line 18636
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static A0F(Ljava/lang/String;I)V
    .locals 2

    .line 18637
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18638
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18639
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18640
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18641
    return-void

    .line 18642
    :cond_1
    const/16 p0, 0x122

    const/16 v1, 0x35

    const/16 v0, 0x52

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 1

    .line 18643
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18644
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8g;->A0I(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    return v0

    .line 18645
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8g;->A0H(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    return v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 15

    .line 18646
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 18647
    .local v4, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v14, Lcom/facebook/ads/redexgen/X/8g;->A03:Ljava/lang/Object;

    monitor-enter v14

    .line 18648
    const/4 v11, 0x0

    .line 18649
    .local v14, "skippedEvents":I
    const/4 v6, 0x0

    .line 18650
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 18651
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v13, 0x0

    .line 18652
    .local v7, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 18653
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 18654
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18655
    .local v3, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18656
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 18657
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8D;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 18658
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    .line 18659
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v13, v0

    .line 18660
    :cond_0
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v2, "line":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 18661
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18662
    .local p0, "debugLog":Lorg/json/JSONObject;
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 18663
    .local v1, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18664
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18665
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18666
    .local v0, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 18667
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A02(Landroid/content/Context;)I

    move-result v1

    .line 18668
    .local v0, "retryLimit":I
    const/4 v0, -0x1

    if-le v1, v0, :cond_2

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    add-int/lit8 v8, v1, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const-string v1, "Z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-le v9, v8, :cond_2

    .line 18669
    :try_start_1
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    .line 18670
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 18671
    :cond_2
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18672
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 18673
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 18674
    :cond_4
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18675
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18676
    .local p0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 18677
    .local v5, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_6

    .line 18678
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 18679
    .local v0, "debugLog":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18680
    .end local v0    # "debugLog":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 18681
    .end local v1    # "i":I
    :cond_6
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 18682
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 18683
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8D;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 18684
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 18685
    .end local p0    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "length":I
    .end local v2    # "line":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8g;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0A(Landroid/content/Context;I)V

    .line 18686
    if-lez v11, :cond_8

    .line 18687
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v10

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v9

    sget v8, Lcom/facebook/ads/redexgen/X/8e;->A2E:I

    const/16 v2, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16f

    const/16 v1, 0x10

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18688
    invoke-interface {v10, v9, v8, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18689
    :cond_8
    if-eqz v13, :cond_9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18690
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 18691
    :cond_9
    if-eqz v7, :cond_a

    .line 18692
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 18693
    :cond_a
    if-eqz v6, :cond_b

    .line 18694
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18695
    :cond_b
    if-eqz v5, :cond_c

    .line 18696
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18697
    :catch_0
    move-exception v1

    .line 18698
    .local p0, "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18699
    :cond_c
    :goto_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18700
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v14

    .line 18701
    const/4 v0, 0x1

    return v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18702
    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    .line 18703
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18704
    if-eqz v13, :cond_d
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18705
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 18706
    :cond_d
    if-eqz v7, :cond_e

    .line 18707
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 18708
    :cond_e
    if-eqz v6, :cond_f

    .line 18709
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18710
    :cond_f
    if-eqz v5, :cond_10

    .line 18711
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 18712
    :catch_3
    move-exception v1

    .line 18713
    .restart local p0    # "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18714
    :cond_10
    :goto_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18715
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v14

    .line 18716
    const/4 v0, 0x0

    return v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 18717
    .end local v3    # "debugFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 18718
    .end local v14    # "skippedEvents":I
    .local v5, "skippedEvents":I
    if-eqz v13, :cond_11

    .line 18719
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 18720
    :cond_11
    if-eqz v7, :cond_12

    .line 18721
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 18722
    :cond_12
    if-eqz v6, :cond_13

    .line 18723
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18724
    :cond_13
    if-eqz v5, :cond_14

    .line 18725
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 18726
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v13
    .restart local v5    # "skippedEvents":I
    :catch_4
    move-exception v1

    .line 18727
    .restart local p0    # "ex":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18728
    :cond_14
    :goto_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18729
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18730
    .end local v4    # "debugLogEvents":Lorg/json/JSONArray;
    .end local v0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 18731
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v13
    .end local v5    # "skippedEvents":I
    :catchall_1
    move-exception v0

    .end local v11
    .end local v6
    .end local v7
    .end local v13
    .end local v5
    .restart local v4    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local v0    # "debugLog":Lorg/json/JSONObject;
    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 17

    .line 18732
    sget-object v16, Lcom/facebook/ads/redexgen/X/8g;->A03:Ljava/lang/Object;

    monitor-enter v16

    .line 18733
    const/4 v14, 0x0

    .line 18734
    .local v14, "skippedEvents":I
    const/4 v8, 0x0

    .line 18735
    .local v8, "inputStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 18736
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v15, 0x0

    .line 18737
    .local v15, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 18738
    .local v5, "debugFileOutputStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 18739
    .local v6, "tempFileInputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 18740
    .local v9, "tempFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    move-object/from16 v7, p0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 18741
    invoke-static {v0, v7}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 18742
    .local v1, "processSpecificDebugFileName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18743
    .local v0, "debugFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    const/4 v1, 0x5

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 18744
    .local v0, "tempFileName":Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/8g;->A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V

    .line 18745
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18746
    const v0, 0x8000

    invoke-virtual {v7, v3, v0}, Lcom/facebook/ads/redexgen/X/8D;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 18747
    invoke-virtual {v7, v11}, Lcom/facebook/ads/redexgen/X/8D;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 18748
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 18749
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 18750
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v11, "line":Ljava/lang/String;
    if-eqz v0, :cond_4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 18751
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18752
    .local v7, "debugLog":Lorg/json/JSONObject;
    const/16 v4, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 18753
    .local v11, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18754
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .local v0, "inputStream":Ljava/io/FileInputStream;
    if-eqz v0, :cond_3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 18755
    :try_start_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18756
    .local v2, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 18757
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "eventId":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 18758
    .restart local v7    # "debugLog":Lorg/json/JSONObject;
    .restart local v2    # "attempt":Ljava/lang/Integer;
    .restart local v11    # "eventId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 18759
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J6;->A02(Landroid/content/Context;)I

    move-result v4

    .line 18760
    .local v4, "retryLimit":I
    const/4 v0, -0x1

    .end local v4    # "retryLimit":I
    .local v10, "retryLimit":I
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    if-le v4, v0, :cond_2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    add-int/lit8 v0, v4, -0x1

    if-le v1, v0, :cond_2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 18761
    :try_start_9
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    .line 18762
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 18763
    .end local v15
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    const/16 v4, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 18765
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "eventId":Ljava/lang/String;
    :catch_1
    move-exception v12

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "retryLimit":I
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "eventId":Ljava/lang/String;
    :catch_2
    move-exception v12

    .end local v10    # "retryLimit":I
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 18766
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "debugLog":Lorg/json/JSONObject;
    .restart local v10    # "retryLimit":I
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "eventId":Ljava/lang/String;
    .end local v10    # "retryLimit":I
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_3
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 18767
    .end local v7    # "debugLog":Lorg/json/JSONObject;
    .end local v11    # "eventId":Ljava/lang/String;
    :catch_3
    move-exception v12

    goto :goto_2

    .end local v7
    .end local v11
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "retryLimit":I
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v12

    .line 18768
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "retryLimit":I
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .local v7, "e":Lorg/json/JSONException;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_2
    :try_start_b
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18769
    sget-object v4, Lcom/facebook/ads/redexgen/X/8g;->A04:Ljava/lang/String;

    const/16 v2, 0x99

    const/16 v1, 0x24

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 18770
    :catch_5
    move-exception v1

    goto/16 :goto_6

    .line 18771
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v10
    .end local v2    # "attempt":Ljava/lang/Integer;
    .end local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v0
    .end local v11
    .end local v11
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 18772
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 18773
    .end local v7
    .end local v1
    .end local v0
    .end local v0
    .end local v11
    .end local v11
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 18774
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 18775
    .end local v0
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_4
    :try_start_c
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/8D;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 18776
    const/4 v0, 0x0

    invoke-virtual {v7, v11, v0}, Lcom/facebook/ads/redexgen/X/8D;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 18777
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 18778
    .local v7, "buffer":[B
    :goto_3
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v10, "length":I
    if-lez v1, :cond_5

    .line 18779
    const/4 v0, 0x0

    invoke-virtual {v5, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 18780
    :cond_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18781
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 18782
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/8g;->A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V

    goto :goto_4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 18783
    .end local v7    # "buffer":[B
    .end local v10    # "length":I
    .end local v1
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v0
    .end local v11
    :catchall_2
    move-exception v2

    goto/16 :goto_8

    .line 18784
    :catch_8
    move-exception v1

    goto/16 :goto_6

    .line 18785
    .end local v0
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v2

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 18786
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 18787
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v2

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 18788
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v1

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 18789
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_5
    move-exception v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/8g;->A02:[Ljava/lang/String;

    const-string v1, "nfIIi5wbm2p"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 18790
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 18791
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    :try_start_d
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/8g;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0A(Landroid/content/Context;I)V

    .line 18792
    if-lez v14, :cond_8

    .line 18793
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v12

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v11

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2E:I

    const/16 v2, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v3

    .end local v1    # "processSpecificDebugFileName":Ljava/lang/String;
    .local v0, "processSpecificDebugFileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .end local v0    # "processSpecificDebugFileName":Ljava/lang/String;
    .local v4, "debugFile":Ljava/io/File;
    const/16 v2, 0x16f

    const/16 v1, 0x10

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18794
    invoke-interface {v12, v11, v4, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18795
    .end local v1
    .end local v0
    .restart local v0    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v4    # "debugFile":Ljava/io/File;
    :cond_8
    if-eqz v15, :cond_9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 18796
    :try_start_e
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 18797
    :cond_9
    if-eqz v10, :cond_a

    .line 18798
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 18799
    :cond_a
    if-eqz v8, :cond_b

    .line 18800
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 18801
    :cond_b
    if-eqz v5, :cond_c

    .line 18802
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 18803
    :cond_c
    if-eqz v6, :cond_d

    .line 18804
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18805
    :cond_d
    if-eqz v9, :cond_e

    .line 18806
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 18807
    :catch_c
    move-exception v1

    .line 18808
    .local v7, "ex":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18809
    :cond_e
    :goto_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18810
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 18811
    const/4 v0, 0x1

    return v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 18812
    :catch_d
    move-exception v1

    .line 18813
    .local v7, "e":Ljava/io/IOException;
    :goto_6
    :try_start_10
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18814
    if-eqz v15, :cond_f
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 18815
    :try_start_11
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 18816
    :cond_f
    if-eqz v10, :cond_10

    .line 18817
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 18818
    :cond_10
    if-eqz v8, :cond_11

    .line 18819
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 18820
    :cond_11
    if-eqz v5, :cond_12

    .line 18821
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 18822
    :cond_12
    if-eqz v6, :cond_13

    .line 18823
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18824
    :cond_13
    if-eqz v9, :cond_14

    .line 18825
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 18826
    :catch_e
    move-exception v1

    .line 18827
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18828
    :cond_14
    :goto_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18829
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 18830
    const/4 v0, 0x0

    return v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 18831
    .end local v0    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local v0
    .end local v4    # "debugFile":Ljava/io/File;
    :catchall_6
    move-exception v2

    goto :goto_8

    .end local v7    # "e":Ljava/io/IOException;
    .end local v2
    .end local v1
    .end local v0
    .end local v0
    .end local v11
    .end local v11
    :catchall_7
    move-exception v2

    .line 18832
    .end local v7
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "debugFile":Ljava/io/File;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_8
    if-eqz v15, :cond_15

    .line 18833
    :try_start_13
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 18834
    :cond_15
    if-eqz v10, :cond_16

    .line 18835
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 18836
    :cond_16
    if-eqz v8, :cond_17

    .line 18837
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 18838
    :cond_17
    if-eqz v5, :cond_18

    .line 18839
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 18840
    :cond_18
    if-eqz v6, :cond_19

    .line 18841
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 18842
    :cond_19
    if-eqz v9, :cond_1a

    .line 18843
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 18844
    .restart local v14    # "skippedEvents":I
    .restart local v5    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "debugFile":Ljava/io/File;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v1

    .line 18845
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 18846
    :cond_1a
    :goto_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 18847
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18848
    .end local v2
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 18849
    .end local v14    # "skippedEvents":I
    .end local v5    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "tempFileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "debugFile":Ljava/io/File;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_8
    move-exception v0

    .end local v14
    .end local v5
    .end local v6
    .end local v9
    .end local v0
    .end local v4
    .end local v3
    .restart local v2    # "attempt":Ljava/lang/Integer;
    :try_start_15
    monitor-exit v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v0
.end method

.method public static A0J(Ljava/lang/String;)Z
    .locals 1

    .line 18850
    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A06:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/8g;->A05:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
