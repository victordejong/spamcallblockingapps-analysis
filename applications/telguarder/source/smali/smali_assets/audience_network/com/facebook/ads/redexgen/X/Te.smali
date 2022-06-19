.class public final Lcom/facebook/ads/redexgen/X/Te;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Hr;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/Te;


# instance fields
.field public A00:I

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 54877
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Te;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Te;->A03()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Te;->A04:Lcom/facebook/ads/redexgen/X/Te;

    .line 54878
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 54879
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54880
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    .line 54881
    return-void
.end method

.method public static A00(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Te;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54882
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 54883
    .local p0, "size":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 54884
    .local v5, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 54885
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 54886
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 54887
    .local v1, "valueSize":I
    if-ltz v4, :cond_0

    const/high16 v0, 0xa00000

    if-gt v4, v0, :cond_0

    .line 54888
    new-array v0, v4, [B

    .line 54889
    .local v4, "value":[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 54890
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54891
    .end local v2    # "name":Ljava/lang/String;
    .end local v1    # "valueSize":I
    .end local v4    # "value":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54892
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v1    # "valueSize":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54893
    .end local v3    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v1    # "valueSize":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Te;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ht;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/facebook/ads/redexgen/X/Ht;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 54894
    .local v1, "otherMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 54895
    .local p0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ht;->A04()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(Ljava/util/HashMap;Ljava/util/List;)V

    .line 54896
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ht;->A05()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A06(Ljava/util/HashMap;Ljava/util/Map;)V

    .line 54897
    return-object v1
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Te;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        -0x39t
        -0x31t
        -0x46t
        -0x3bt
        -0x3et
        -0x43t
        0x79t
        -0x31t
        -0x46t
        -0x3bt
        -0x32t
        -0x42t
        0x79t
        -0x34t
        -0x3et
        -0x2dt
        -0x42t
        -0x6dt
        0x79t
        -0x55t
        -0x41t
        -0x44t
        0x77t
        -0x36t
        -0x40t
        -0x2ft
        -0x44t
        0x77t
        -0x3at
        -0x43t
        0x77t
        0x7ct
        -0x36t
        0x77t
        0x7ft
        0x7ct
        -0x45t
        -0x80t
        0x77t
        -0x40t
        -0x36t
        0x77t
        -0x42t
        -0x37t
        -0x44t
        -0x48t
        -0x35t
        -0x44t
        -0x37t
        0x77t
        -0x35t
        -0x41t
        -0x48t
        -0x3bt
        0x77t
        -0x3ct
        -0x48t
        -0x31t
        -0x40t
        -0x3ct
        -0x34t
        -0x3ct
        0x77t
        -0x48t
        -0x3dt
        -0x3dt
        -0x3at
        -0x32t
        -0x44t
        -0x45t
        -0x6ft
        0x77t
        0x7ct
        -0x45t
        -0x67t
        -0x68t
        -0x76t
        0x71t
        0x7ct
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5kZTLjdDMy9nU00GYSoT7nHAJfqOTJAv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RIKsvES72VgzRETTrH8wOazcoLZpGbfB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vXx7y8qbBiyoeaH5aLR3DPKOyCXCzAKh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Yy4lB7AkFivZ41pmtbtXmndBcr1VBNgh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "o2seDn8XDA0ZFiQgZOs5kCAKbPuIS3eK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eTtfFPBE4IqAP5oA8c9RJIWIADHvoFeY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mAStqahta7FI0gupUm7g6Ianj3ACh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dfDmUD9TKeapRu0LnAGS8Db8TeQGQM3N"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Te;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54898
    .local v1, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 54899
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54901
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public static A06(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54902
    .local v4, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54903
    .local p1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54904
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Te;->A08(Ljava/lang/Object;)[B

    move-result-object v4

    .line 54905
    .local v3, "bytes":[B
    array-length v0, v4

    const/high16 v2, 0xa00000

    if-gt v0, v2, :cond_0

    .line 54906
    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54907
    .end local p1    # "name":Ljava/lang/String;
    .end local v0    # "value":Ljava/lang/Object;
    .end local v3    # "bytes":[B
    goto :goto_0

    .line 54908
    .restart local p1    # "name":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local v3    # "bytes":[B
    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v1, 0x1

    array-length v0, v4

    .line 54909
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 54910
    const/16 v2, 0x14

    const/16 v1, 0x37

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54911
    .end local p1    # "name":Ljava/lang/String;
    .end local v0    # "value":Ljava/lang/Object;
    .end local v3    # "bytes":[B
    :cond_1
    return-void
.end method

.method private A07(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 54912
    .local v0, "otherMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 54913
    return v3

    .line 54914
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 54915
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 54916
    .local v1, "value":[B
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 54917
    .local v0, "otherValue":[B
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54918
    return v3

    .line 54919
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static A08(Ljava/lang/Object;)[B
    .locals 4

    .line 54920
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 54921
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 54922
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 54923
    check-cast p0, Ljava/lang/String;

    const/16 v3, 0x4b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Te;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Te;->A03:[Ljava/lang/String;

    const-string v1, "8X6uv4Cf6NJu014IeL7U0cX64Cma9xek"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x5

    const/16 v0, 0x1c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54924
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 54925
    check-cast p0, [B

    return-object p0

    .line 54926
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/Ht;)Lcom/facebook/ads/redexgen/X/Te;
    .locals 2

    .line 54927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Te;->A02(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ht;)Ljava/util/Map;

    move-result-object v1

    .line 54928
    .local p0, "mutatedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Te;->A07(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54929
    return-object p0

    .line 54930
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final A0A(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 54932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54933
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 54934
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 54935
    .local v0, "value":[B
    array-length v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 54936
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 54937
    .end local p1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v0    # "value":[B
    goto :goto_0

    .line 54938
    :cond_0
    return-void
.end method

.method public final A5R(Ljava/lang/String;J)J
    .locals 2

    .line 54939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 54941
    .local p0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    .line 54942
    .end local p0    # "bytes":[B
    :cond_0
    return-wide p2
.end method

.method public final A5S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 54943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 54945
    .local p0, "bytes":[B
    const/16 v2, 0x4b

    const/4 v1, 0x5

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 54946
    .end local p0    # "bytes":[B
    :cond_0
    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54947
    if-ne p0, p1, :cond_0

    .line 54948
    const/4 v0, 0x1

    return v0

    .line 54949
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 54950
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Te;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Te;->A03:[Ljava/lang/String;

    const-string v1, "0sNhF5YqsstHUauuNn1KG6WiPN2cwuBV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "hvh6tNDhYJJgMdaBiEgHe3peUJZTyZQj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54951
    :cond_3
    check-cast p1, Lcom/facebook/ads/redexgen/X/Te;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Te;->A07(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 54952
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    if-nez v0, :cond_1

    .line 54953
    const/4 v4, 0x0

    .line 54954
    .local p0, "result":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54955
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    xor-int/2addr v1, v0

    add-int/2addr v4, v1

    .line 54956
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    goto :goto_0

    .line 54957
    :cond_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    .line 54958
    .end local p0    # "result":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    return v0
.end method
