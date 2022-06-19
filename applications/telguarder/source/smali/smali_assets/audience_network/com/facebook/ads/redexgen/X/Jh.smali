.class public final Lcom/facebook/ads/redexgen/X/Jh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Jk;->A0C(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jk;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jh;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jk;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 40334
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jh;->A01:Lcom/facebook/ads/redexgen/X/Jk;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jh;->A02:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Jh;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jh;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

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

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jh;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x42t
        -0x3at
        -0x48t
        -0x6t
        -0x5t
        0x5t
        0x6t
        0x1t
        0x4t
        0xbt
        0x3t
        -0xat
        0x1t
        0x0t
        0x3t
        0x5t
        -0x6t
        -0x1t
        -0x8t
        -0x26t
        -0x33t
        -0x27t
        -0x23t
        -0x33t
        -0x25t
        -0x24t
        -0x39t
        -0x2ft
        -0x34t
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 40335
    :try_start_0
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 40336
    .local v0, "nvl":Lcom/facebook/ads/redexgen/X/8f;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 40337
    .local v4, "additionalInfo":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 40338
    .local v2, "logArray":Lorg/json/JSONArray;
    const/4 v2, 0x3

    const/4 v1, 0x7

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40339
    const/16 v2, 0x13

    const/16 v1, 0xa

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Jh;->A02:Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40340
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Jh;->A01:Lcom/facebook/ads/redexgen/X/Jk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A02(Lcom/facebook/ads/redexgen/X/Jk;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40341
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Jh;->A01:Lcom/facebook/ads/redexgen/X/Jk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A02(Lcom/facebook/ads/redexgen/X/Jk;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40342
    .local v0, "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/NativeViewabilityLogger$ViewabilityRecord;>;"
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Jh;->A01:Lcom/facebook/ads/redexgen/X/Jk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A02(Lcom/facebook/ads/redexgen/X/Jk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40343
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40344
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Jj;

    .line 40345
    .local v0, "r":Lcom/facebook/ads/redexgen/X/Jj;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Jj;->A00(Lcom/facebook/ads/redexgen/X/Jj;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Jj;->A01(Lcom/facebook/ads/redexgen/X/Jj;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Jj;->A02(Lcom/facebook/ads/redexgen/X/Jj;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 40346
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Jh;
    :cond_1
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 40347
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 40348
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Jh;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 40349
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0xa

    const/16 v1, 0x9

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A00(III)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A29:I

    .line 40350
    invoke-interface {v3, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40351
    .restart local v0    # "r":Lcom/facebook/ads/redexgen/X/Jj;
    .restart local v4    # "additionalInfo":Lorg/json/JSONObject;
    .restart local v2    # "logArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40352
    :catch_0
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
