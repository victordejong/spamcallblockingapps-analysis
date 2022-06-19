.class public final Lcom/facebook/ads/redexgen/X/WE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JA;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public A01:Lcom/facebook/ads/redexgen/X/WF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 63844
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WE;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WE;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WE;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/WF;)V
    .locals 0

    .line 63845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63846
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 63847
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Lcom/facebook/ads/redexgen/X/WF;

    .line 63848
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WE;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

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

    const/16 v0, 0x1b7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WE;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x7at
        0x73t
        0x6et
        0x3ct
        0x79t
        0x6at
        0x79t
        0x72t
        0x68t
        0x55t
        0x78t
        0x3ct
        0x57t
        0x4t
        0x2t
        0x14t
        0x14t
        0x12t
        0x4t
        0x4t
        0x11t
        0x2t
        0x1bt
        0x1bt
        0xet
        0x59t
        0x12t
        0x2ft
        0xet
        0x7t
        0xet
        0x1ft
        0xet
        0xft
        0x4bt
        0xet
        0x1dt
        0xet
        0x5t
        0x1ft
        0x18t
        0x4bt
        0xet
        0x13t
        0x8t
        0xet
        0xet
        0xft
        0xet
        0xft
        0x4bt
        0x19t
        0xet
        0x1ft
        0x19t
        0x12t
        0x4bt
        0x7t
        0x2t
        0x6t
        0x2t
        0x1ft
        0x45t
        0x4bt
        0x28t
        0x4t
        0x1et
        0x5t
        0x1ft
        0x51t
        0x4bt
        0x2ct
        0xbt
        0x3t
        0x6t
        0xft
        0xet
        0x4at
        0x1et
        0x5t
        0x4at
        0x1at
        0xbt
        0x18t
        0x19t
        0xft
        0x4at
        0xbt
        0x4t
        0x4at
        0xft
        0x1ct
        0xft
        0x4t
        0x1et
        0x4at
        0x3t
        0x4t
        0x4at
        0xft
        0x1ct
        0xft
        0x4t
        0x1et
        0x19t
        0x4at
        0xbt
        0x18t
        0x18t
        0xbt
        0x13t
        0x4at
        0xct
        0x5t
        0x18t
        0x4at
        0xet
        0x3t
        0x19t
        0x1at
        0xbt
        0x1et
        0x9t
        0x2t
        0x4at
        0xct
        0xbt
        0x3t
        0x6t
        0x1ft
        0x18t
        0xft
        0x44t
        0x58t
        0x7ft
        0x77t
        0x72t
        0x7bt
        0x7at
        0x3et
        0x6at
        0x71t
        0x3et
        0x6et
        0x7ft
        0x6ct
        0x6dt
        0x7bt
        0x3et
        0x7ft
        0x70t
        0x3et
        0x7bt
        0x68t
        0x7bt
        0x70t
        0x6at
        0x3et
        0x77t
        0x70t
        0x3et
        0x7bt
        0x68t
        0x7bt
        0x70t
        0x6at
        0x6dt
        0x3et
        0x72t
        0x77t
        0x6dt
        0x6at
        0x3et
        0x69t
        0x76t
        0x7bt
        0x70t
        0x3et
        0x6et
        0x6ct
        0x7bt
        0x6et
        0x7ft
        0x6ct
        0x77t
        0x70t
        0x79t
        0x3et
        0x7at
        0x77t
        0x6dt
        0x6et
        0x7ft
        0x6at
        0x7dt
        0x76t
        0x3et
        0x6et
        0x7ft
        0x67t
        0x72t
        0x71t
        0x7ft
        0x7at
        0x30t
        0x1at
        0x2ct
        0x3bt
        0x3ft
        0x2ct
        0x3bt
        0x69t
        0x39t
        0x3bt
        0x26t
        0x2at
        0x2ct
        0x3at
        0x3at
        0x2ct
        0x2dt
        0x69t
        0x2ct
        0x3ft
        0x2ct
        0x27t
        0x3dt
        0x0t
        0x2dt
        0x69t
        0x14t
        0x22t
        0x35t
        0x31t
        0x22t
        0x35t
        0x67t
        0x35t
        0x22t
        0x33t
        0x32t
        0x35t
        0x29t
        0x22t
        0x23t
        0x67t
        0x29t
        0x28t
        0x29t
        0x6at
        0x35t
        0x22t
        0x33t
        0x35t
        0x3et
        0x26t
        0x25t
        0x2bt
        0x22t
        0x67t
        0x22t
        0x35t
        0x35t
        0x28t
        0x35t
        0x67t
        0x24t
        0x28t
        0x23t
        0x22t
        0x67t
        0x6dt
        0x5bt
        0x4ct
        0x48t
        0x5bt
        0x4ct
        0x1et
        0x4ct
        0x5bt
        0x4at
        0x4bt
        0x4ct
        0x50t
        0x5bt
        0x5at
        0x1et
        0x4ct
        0x5bt
        0x4at
        0x4ct
        0x47t
        0x5ft
        0x5ct
        0x52t
        0x5bt
        0x1et
        0x5bt
        0x4ct
        0x4ct
        0x51t
        0x4ct
        0x1et
        0x5dt
        0x51t
        0x5at
        0x5bt
        0x1et
        0x19t
        0x22t
        0x2dt
        0x2et
        0x20t
        0x29t
        0x6ct
        0x38t
        0x23t
        0x6ct
        0x3ct
        0x2dt
        0x3et
        0x3ft
        0x29t
        0x6ct
        0x3ft
        0x29t
        0x3et
        0x3at
        0x29t
        0x3et
        0x6ct
        0x3et
        0x29t
        0x3ft
        0x3ct
        0x23t
        0x22t
        0x3ft
        0x29t
        0x6ct
        0x2dt
        0x38t
        0x6ct
        0x3ct
        0x23t
        0x3ft
        0x25t
        0x38t
        0x25t
        0x23t
        0x22t
        0x6ct
        0x1dt
        0x11t
        0x1at
        0x1bt
        0x5et
        0x4dt
        0x5et
        0x55t
        0x4ft
        0x48t
        0x7t
        0x4t
        0x0t
        0x15t
        0x14t
        0x13t
        0x4t
        0x4ct
        0x2t
        0xet
        0xft
        0x7t
        0x8t
        0x6t
        0x4ct
        0x4t
        0x17t
        0x4t
        0xft
        0x15t
        0x4ct
        0xct
        0x0t
        0x6t
        0x8t
        0x2t
        0x27t
        0x24t
        0x20t
        0x35t
        0x34t
        0x33t
        0x24t
        0x1et
        0x22t
        0x2et
        0x2ft
        0x27t
        0x28t
        0x26t
        0x17t
        0x1at
        0x74t
        0x63t
        0x65t
        0x69t
        0x74t
        0x62t
        0x59t
        0x62t
        0x67t
        0x72t
        0x67t
        0x64t
        0x67t
        0x75t
        0x63t
        0x49t
        0x52t
        0x56t
        0x58t
        0x53t
        0x16t
        0xdt
        0x9t
        0x7t
        0xct
        0x3dt
        0xbt
        0x6t
        0x4at
        0x51t
        0x55t
        0x5bt
        0x50t
        0x4dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nSyQhtMfpq2jNqGGNPt5NI90oeOfe1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vvfyUHTPPgzLU9ZJhsHsRroWK12HyjVH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qslzdaLavUZ6hWrKlj1Zt3UP1k3mmB4y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NIvb6IKYOgsNqkR8AWNkoYQGWWwuN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4tQ8NQ91n2uUc9nTvHWxfXCnHLpYFgI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tMmd9elNu7YQkbRY7XCik1QBLE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7gl4a25pOcE06E3aPI2wtSqogJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FAOoLRBR29CEN05oKXcOTgWFdOs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WE;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A03(Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63849
    .local v5, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "eventsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0G(Landroid/content/Context;)I

    move-result v1

    .line 63850
    .local p0, "retryLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Lcom/facebook/ads/redexgen/X/WF;

    .line 63851
    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/WF;->A0C(ILjava/util/Set;Ljava/util/Set;)I

    move-result v6

    .line 63852
    .local p1, "attemptsExceededEventsCount":I
    if-lez v6, :cond_0

    .line 63853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 63854
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0o:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x2c

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 63855
    const/16 v2, 0x195

    const/16 v1, 0xf

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 63856
    :cond_0
    return-void
.end method


# virtual methods
.method public final A4E()Lorg/json/JSONObject;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0F(Landroid/content/Context;)I

    move-result v6

    .line 63858
    .local p0, "eventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Lcom/facebook/ads/redexgen/X/WF;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/WF;->A0D(I)Ljava/util/List;

    move-result-object v7

    .line 63859
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 63860
    .local v6, "tokensJson":Lorg/json/JSONObject;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 63861
    .local v7, "event":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x1a4

    const/4 v1, 0x5

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63862
    .local v5, "token":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63863
    .local v8, "tokenId":Ljava/lang/String;
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63864
    const/16 v2, 0x1a9

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63865
    :catch_0
    move-exception v4

    .line 63866
    .local v5, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63867
    sget-object v3, Lcom/facebook/ads/redexgen/X/WE;->A04:Ljava/lang/String;

    const/16 v2, 0x86

    const/16 v1, 0x48

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63868
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 63869
    .local v0, "eventsJson":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A08(Landroid/content/Context;)I

    move-result v2

    .line 63871
    .local v7, "debugEventLimit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 63872
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/8g;->A04(Lcom/facebook/ads/redexgen/X/8D;I)Lorg/json/JSONArray;

    move-result-object v1

    .line 63873
    .local v5, "debugLogEvents":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 63874
    add-int/2addr v6, v2

    .line 63875
    invoke-static {v1, v4, v6}, Lcom/facebook/ads/redexgen/X/TQ;->A02(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 63876
    .end local v7    # "debugEventLimit":I
    .end local v5    # "debugLogEvents":Lorg/json/JSONArray;
    :cond_2
    const/4 v3, 0x0

    .line 63877
    .local v7, "payload":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 63878
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 63879
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 63880
    const/16 v2, 0x1b1

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63881
    :cond_3
    const/16 v2, 0x165

    const/4 v1, 0x6

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63882
    :cond_4
    return-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63883
    .end local v7    # "payload":Lorg/json/JSONObject;
    .local v7, "jsone":Lorg/json/JSONException;
    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A89()Z
    .locals 1

    .line 63884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Lcom/facebook/ads/redexgen/X/WF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WF;->A0B()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9O()V
    .locals 1

    .line 63885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A0G(Lcom/facebook/ads/redexgen/X/8D;)Z

    .line 63886
    return-void
.end method

.method public final A9s(Lorg/json/JSONArray;)V
    .locals 8

    .line 63887
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 63888
    .local p0, "length":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 63889
    .local p1, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    .line 63890
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 63891
    .local v6, "eventJson":Lorg/json/JSONObject;
    const/16 v2, 0x193

    const/4 v1, 0x2

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63892
    .local v5, "eventId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/8g;->A0J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63893
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/8g;->A0E(Ljava/lang/String;)V

    goto :goto_1

    .line 63894
    :cond_0
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63895
    :catch_0
    move-exception v4

    .line 63896
    .local v6, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63897
    sget-object v3, Lcom/facebook/ads/redexgen/X/WE;->A04:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x3e

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63898
    .end local v6    # "jsone":Lorg/json/JSONException;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63899
    .end local v7    # "i":I
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/WE;->A03(Ljava/util/Set;Ljava/util/Set;)V

    .line 63900
    return-void
.end method

.method public final A9u(Lorg/json/JSONArray;)Z
    .locals 15

    .line 63901
    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    .line 63902
    .local v1, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v13

    .line 63903
    .local v2, "isDebugGKEnabled":Z
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 63904
    .local v1, "eventsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 63905
    .local v0, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_b

    .line 63906
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 63907
    .local v14, "event":Lorg/json/JSONObject;
    const/16 v2, 0x193

    const/4 v1, 0x2

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 63908
    .local v0, "eventId":Ljava/lang/String;
    const/16 v2, 0x16b

    const/16 v1, 0x1a

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63909
    const/16 v2, 0x185

    const/16 v1, 0xe

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63910
    .local v13, "featureConfigString":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0O(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/J4;->A1y(Ljava/lang/String;)V

    .line 63911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 63912
    .end local v13    # "featureConfigString":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x161

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 63913
    .local v13, "errorCode":I
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/WE;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/WE;->A03:[Ljava/lang/String;

    const-string v1, "0CZ38EAU9Yw8j2JD8leXrlyftUymQPqh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v12, v3, :cond_2

    .line 63914
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xce

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63916
    :cond_1
    if-eqz v13, :cond_7

    goto/16 :goto_2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63917
    :cond_2
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x7d0

    if-lt v12, v3, :cond_5

    if-ge v12, v0, :cond_5

    .line 63918
    :try_start_2
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63919
    sget-object v4, Lcom/facebook/ads/redexgen/X/WE;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x110

    const/16 v1, 0x25

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63920
    :cond_3
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/8g;->A0J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63921
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/8g;->A0E(Ljava/lang/String;)V

    goto :goto_1

    .line 63922
    :cond_4
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63923
    :goto_1
    const/4 v14, 0x0

    goto :goto_3

    .line 63924
    :cond_5
    if-lt v12, v0, :cond_8

    const/16 v0, 0xbb8

    if-ge v12, v0, :cond_8

    .line 63925
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63926
    sget-object v4, Lcom/facebook/ads/redexgen/X/WE;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe7

    const/16 v1, 0x29

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63927
    :cond_6
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63928
    if-eqz v13, :cond_8

    .line 63929
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    goto :goto_3

    .line 63930
    :goto_2
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/8g;->A0D(Ljava/lang/String;)V

    .line 63931
    :cond_7
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63932
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A01()Lcom/facebook/ads/redexgen/X/8E;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8E;->A8R(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    goto :goto_4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 63933
    :catch_0
    move-exception v5

    .line 63934
    .local v14, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63935
    sget-object v4, Lcom/facebook/ads/redexgen/X/WE;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x135

    const/16 v1, 0x2c

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63936
    :cond_9
    const/4 v14, 0x0

    .line 63937
    .end local v14    # "jsone":Lorg/json/JSONException;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63938
    .end local v9    # "i":I
    :cond_b
    invoke-direct {p0, v7, v8}, Lcom/facebook/ads/redexgen/X/WE;->A03(Ljava/util/Set;Ljava/util/Set;)V

    .line 63939
    return v14
.end method

.method public final ABL()V
    .locals 1

    .line 63940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:Lcom/facebook/ads/redexgen/X/WF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WF;->A3x()V

    .line 63941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8g;->A08(Landroid/content/Context;)V

    .line 63942
    return-void
.end method
