.class public abstract Lcom/facebook/ads/redexgen/X/Gt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QU;


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/QV;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gt;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35654
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gc;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gt;-><init>(Lcom/facebook/ads/redexgen/X/QV;)V

    .line 35655
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QV;)V
    .locals 0

    .line 35656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35657
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gt;->A00:Lcom/facebook/ads/redexgen/X/QV;

    .line 35658
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gt;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x19

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

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gt;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        -0x72t
        -0x72t
        -0x70t
        -0x65t
        -0x61t
        0x58t
        0x6et
        -0x6dt
        -0x74t
        -0x63t
        -0x62t
        -0x70t
        -0x61t
        -0x2at
        -0xbt
        0x7t
        -0x3t
        -0x9t
        -0x1at
        -0x7t
        0x5t
        0x9t
        -0x7t
        0x7t
        0x8t
        -0x24t
        -0xbt
        0x2t
        -0x8t
        0x0t
        -0x7t
        0x6t
        -0x3et
        0x3t
        0x2t
        -0x27t
        0x6t
        0x6t
        0x3t
        0x6t
        -0x4ct
        -0x5t
        0x3t
        0x8t
        -0x7et
        -0x52t
        -0x53t
        -0x4dt
        -0x5ct
        -0x53t
        -0x4dt
        0x6ct
        -0x6dt
        -0x48t
        -0x51t
        -0x5ct
        -0x7et
        -0x7ft
        0x73t
        0x5at
        0x65t
    .end array-data
.end method


# virtual methods
.method public final AA8(Lcom/facebook/ads/redexgen/X/QS;)Z
    .locals 5

    .line 35659
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QS;->A00()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v4

    .line 35660
    .local p0, "res":Lcom/facebook/ads/redexgen/X/QE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gt;->A00:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35661
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Gt;->A00:Lcom/facebook/ads/redexgen/X/QV;

    const/16 v2, 0xe

    const/16 v1, 0x1f

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/QV;->A8O(Ljava/lang/String;)V

    .line 35662
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QS;->printStackTrace()V

    .line 35663
    :cond_0
    if-eqz v4, :cond_1

    .line 35664
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v0

    .line 35665
    .local p1, "status":I
    if-lez v0, :cond_1

    .line 35666
    const/4 v0, 0x1

    return v0

    .line 35667
    .end local p1    # "status":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ACF(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35668
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35669
    .local p0, "url":Ljava/net/URL;
    invoke-virtual {v0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 35670
    .local p1, "uc":Ljava/net/HttpURLConnection;
    return-object v0
.end method

.method public final ACG(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35671
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final ACH(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35672
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final ACX(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QQ;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35673
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QQ;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35674
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QQ;->A05()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 35675
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QQ;->A04()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 35676
    if-eqz p3, :cond_0

    .line 35677
    const/16 v2, 0x2d

    const/16 v1, 0xc

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35678
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gt;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35679
    return-void
.end method

.method public final ACr(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35680
    const/16 v0, 0x4000

    new-array v3, v0, [B

    .line 35681
    .local p0, "data":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35682
    .local p1, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v3, "nRead":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 35683
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 35684
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 35685
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final AEq(Ljava/io/OutputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35686
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 35687
    return-void
.end method
