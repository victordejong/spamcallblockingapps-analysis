.class public final Lcom/facebook/ads/redexgen/X/8u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[B


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/8y;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8u;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 6
    .param p4    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8u;->A02:Ljava/util/Map;

    .line 19146
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8u;->A00:Ljava/lang/String;

    .line 19147
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8u;->A01:Ljava/lang/String;

    .line 19148
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8u;->A03:Lorg/json/JSONObject;

    .line 19149
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 19150
    :cond_0
    return-void

    .line 19151
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8y;->values()[Lcom/facebook/ads/redexgen/X/8y;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v5, v3

    .line 19152
    .local p3, "type":Lcom/facebook/ads/redexgen/X/8y;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8u;->A02:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19153
    .end local p3    # "type":Lcom/facebook/ads/redexgen/X/8y;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19154
    :cond_2
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 19155
    :try_start_0
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 19156
    .local p1, "trackerObj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19157
    .local p2, "trackerTypeStr":Ljava/lang/String;
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8u;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19158
    .local p3, "trackerUrl":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8y;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/8y;

    move-result-object v1

    .line 19159
    .local p4, "trackerType":Lcom/facebook/ads/redexgen/X/8y;
    if-eqz v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8u;->A02:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19161
    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19162
    .end local p0    # "i":I
    :cond_4
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8u;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

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

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8u;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0x5ct
        0x55t
        0x40t
        0x71t
        0x76t
        0x68t
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .locals 1

    .line 19163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8u;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/8y;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8y;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8u;->A02:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final A04()Lorg/json/JSONObject;
    .locals 1

    .line 19165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8u;->A03:Lorg/json/JSONObject;

    return-object v0
.end method
