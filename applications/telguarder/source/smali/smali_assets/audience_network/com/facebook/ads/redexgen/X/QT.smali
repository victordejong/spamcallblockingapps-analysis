.class public final Lcom/facebook/ads/redexgen/X/QT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QT;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QT;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    .line 49265
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49266
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49267
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    .line 49268
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QT;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A01(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 49269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final A02(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 49270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QT;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x2at
        0x12t
        0x11t
        0x3t
        -0x16t
        -0xbt
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Cy9Ol7puM0ud9B1M8hlJlb0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qBLGxoigf1fC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mxspOl2wXxp96xi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1GotRAtMtk4n0Ye4yuR0usUojP3tB7kg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q5cfUKUjlAvrOqac2Z528PAxhBhncEkS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XGB7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HNCS9EbNXrRkXrCNXemSKzc47T2AJZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NeqKP8obYXci"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QT;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/QT;
    .locals 1

    .line 49271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49272
    return-object p0
.end method

.method public final A06(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QT;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QT;"
        }
    .end annotation

    .line 49273
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QT;->putAll(Ljava/util/Map;)V

    .line 49274
    return-object p0
.end method

.method public final A07()Ljava/lang/String;
    .locals 6

    .line 49275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 49276
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49277
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49278
    .local p0, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/QT;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/QT;->A02:[Ljava/lang/String;

    const-string v1, "zd0VkDByyj8QSiyKJuZO82g8n4nVkMDg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Ljava/lang/String;

    .line 49279
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 49280
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49281
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49283
    .local v1, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 49284
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49285
    :try_start_0
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49286
    :catch_0
    move-exception v0

    .line 49287
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49288
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 49289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A09()[B
    .locals 5

    .line 49290
    const/4 v1, 0x0

    .line 49291
    .local p0, "bytes":[B
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QT;->A07()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    const/4 v2, 0x5

    const/16 v0, 0x79

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/QT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 49292
    goto :goto_0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49293
    :catch_0
    move-exception v0

    .line 49294
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 49295
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1
.end method

.method public final clear()V
    .locals 1

    .line 49296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49297
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 49298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 49299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 49300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49301
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QT;->A01(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 49302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49304
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49305
    .local v0, "arg":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 49306
    return-void
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49307
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QT;->A02(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 49308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
