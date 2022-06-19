.class public final Lcom/facebook/ads/redexgen/X/Vb;
.super Lcom/facebook/ads/redexgen/X/CU;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vb;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vb;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    .line 61172
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:J

    .line 61173
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 0

    .line 61174
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result p0

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/Boolean;
    .locals 1

    .line 61175
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/Double;
    .locals 1

    .line 61176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    invoke-static {v0, p0}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, p0}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;I)Ljava/lang/Object;
    .locals 2

    .line 61177
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    .line 61178
    const/4 v0, 0x0

    return-object v0

    .line 61179
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A06(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, p0, v0

    const/4 v0, 0x4

    aget-object v0, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const-string v1, "l50ZqPBsyUQviykvI0xL"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    const-string v1, "Lljeb0J"

    const/4 v0, 0x4

    aput-object v1, p0, v0

    return-object p1

    .line 61180
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A07(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/Date;

    move-result-object p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const-string v1, "MFD9H0qN4BAOjjad6F9aH4wBbEW2drgI"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v1, "faFWK0gYEU6ogLEt6TGWGQNeah0rASyI"

    const/4 v0, 0x3

    aput-object v1, p0, v0

    return-object p1

    .line 61181
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A08(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 61182
    :cond_5
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A09(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 61183
    :cond_6
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A05(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61184
    :cond_7
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A01(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61185
    :cond_8
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A02(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vb;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x59

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const-string v1, "FDzD0S0XxDiMrPDo6xlEGLPxTcTuxug5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;
    .locals 4

    .line 61186
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v3

    .line 61187
    .local p0, "size":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v2

    .line 61188
    .local v3, "position":I
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 61189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61190
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v3

    .line 61191
    .local p0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61192
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 61193
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v0

    .line 61194
    .local v1, "type":I
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A03(Lcom/facebook/ads/redexgen/X/IM;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61195
    .end local v1    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61196
    .end local v2    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/Date;
    .locals 4

    .line 61197
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A02(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-long v2, v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 61198
    .local p0, "date":Ljava/util/Date;
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 61199
    return-object v1
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v4

    .line 61201
    .local p0, "count":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 61202
    .local v4, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 61203
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A05(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;

    move-result-object v1

    .line 61204
    .local v2, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v0

    .line 61205
    .local v1, "type":I
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A03(Lcom/facebook/ads/redexgen/X/IM;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61206
    .end local v2    # "key":Ljava/lang/String;
    .end local v1    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61207
    .end local v3    # "i":I
    :cond_0
    return-object v3
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61208
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 61209
    .local p0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A05(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;

    move-result-object v2

    .line 61210
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v1

    .line 61211
    .local v2, "type":I
    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    .line 61212
    .end local v3    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    return-object v3

    .line 61213
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Vb;->A03(Lcom/facebook/ads/redexgen/X/IM;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61214
    .end local v3    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    goto :goto_0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x2t
        0x5t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x2at
        0x2bt
        0x8t
        0x20t
        0x31t
        0x24t
        0x1t
        0x24t
        0x31t
        0x24t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ue3F0I6fcTSZT3XANW4BqlSg0YACy3K4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YXjbNuwOCt0njQRS6kIZmZXdld4b5gs1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V0NLxplvNPMlQWABgeF7MJFdk1WlmFhn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZWhnIDkOlhEYDhEM6D1YcYVIYIbSrhZ9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EluA6DY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1BrMUdGnuqbQ3I1HEv6h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iimblRVVY6S86y8y1KboYKwNNRyH3mu3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J6i6ZtgGTv1jws4lkpIZBTY1cZsw3WFX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/IM;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61215
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v1

    .line 61216
    .local p0, "nameType":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 61217
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Vb;->A05(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;

    move-result-object v3

    .line 61218
    .local p1, "name":Ljava/lang/String;
    const/16 v2, 0x8

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61219
    return-void

    .line 61220
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_3

    .line 61221
    .local p2, "type":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:[Ljava/lang/String;

    const-string v1, "dwGYach79rjPRkoPwr8L"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "3IOMD8b"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x8

    if-eq v3, v0, :cond_1

    .line 61222
    return-void

    .line 61223
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Vb;->A08(Lcom/facebook/ads/redexgen/X/IM;)Ljava/util/HashMap;

    move-result-object v3

    .line 61224
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61225
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 61226
    .local v1, "durationSeconds":D
    const-wide/16 v1, 0x0

    cmpl-double v0, v4, v1

    if-lez v0, :cond_2

    .line 61227
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:J

    .line 61228
    .end local v1    # "durationSeconds":D
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61229
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "type":I
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 1

    .line 61230
    const/4 v0, 0x1

    return v0
.end method

.method public final A0E()J
    .locals 2

    .line 61231
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:J

    return-wide v0
.end method
