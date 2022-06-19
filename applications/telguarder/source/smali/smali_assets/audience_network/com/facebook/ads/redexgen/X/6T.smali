.class public final Lcom/facebook/ads/redexgen/X/6T;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/5v;

.field public final A02:Lcom/facebook/ads/redexgen/X/Zv;

.field public final A03:Lcom/facebook/ads/redexgen/X/Zu;

.field public final A04:Lcom/facebook/ads/redexgen/X/Zt;

.field public final A05:Lcom/facebook/ads/redexgen/X/6U;

.field public final A06:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6T;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6T;->A04()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6U;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 14880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14881
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zu;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/Zu;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A03:Lcom/facebook/ads/redexgen/X/Zu;

    .line 14882
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zt;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/Zt;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A04:Lcom/facebook/ads/redexgen/X/Zt;

    .line 14883
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zv;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A02:Lcom/facebook/ads/redexgen/X/Zv;

    .line 14884
    new-instance v0, Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A06:Lcom/facebook/ads/redexgen/X/6x;

    .line 14885
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6T;->A05:Lcom/facebook/ads/redexgen/X/6U;

    .line 14886
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6T;->A01:Lcom/facebook/ads/redexgen/X/5v;

    .line 14887
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6T;->A06()V

    .line 14888
    return-void
.end method

.method public static A00(ILjava/lang/String;II)Lcom/facebook/ads/redexgen/X/6d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 14889
    const/16 v0, 0x283c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2aa8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2abc

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2abd

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 14890
    const/4 v0, 0x0

    return-object v0

    .line 14891
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6c;->A02:Lcom/facebook/ads/redexgen/X/6c;

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/6T;->A01(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/6c;)Lcom/facebook/ads/redexgen/X/6d;

    move-result-object p2

    sget-object p1, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object p0, p1, v0

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object p1, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const-string p0, "wd7EZOeafcH9m4FAgURUT5Hngco6wax"

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14892
    :cond_2
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6c;->A03:Lcom/facebook/ads/redexgen/X/6c;

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/6T;->A01(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/6c;)Lcom/facebook/ads/redexgen/X/6d;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2abf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/6c;)Lcom/facebook/ads/redexgen/X/6d;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 14893
    const/4 v1, 0x0

    .line 14894
    .local p0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6d;
    sget-object v2, Lcom/facebook/ads/redexgen/X/6S;->A00:[I

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/6c;->ordinal()I

    move-result v0

    aget v5, v2, v0

    const/4 v0, 0x1

    if-eq v5, v0, :cond_1

    const/4 v4, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0xc

    if-eq v2, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const-string v2, "xp4vj7JKKYIKk9GpArBk1"

    const/4 v0, 0x7

    aput-object v2, v3, v0

    if-eq v5, v4, :cond_0

    .line 14895
    :goto_0
    return-object v1

    .line 14896
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/6d;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6d;-><init>(Ljava/lang/Object;II)V

    goto :goto_0

    .line 14897
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/6d;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6d;-><init>(Ljava/lang/Object;II)V

    .line 14898
    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(I)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14899
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14900
    .local p0, "bundledSignalMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A01:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0j()Ljava/util/Map;

    move-result-object v3

    .line 14901
    .local p1, "bundledSignalConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 14902
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const-string v1, "egSzLuN0whr2NWL3ZGxNS4c47zeKkZNo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4H15q3s55QfpPAzBZDr2xQPK4rl9Cmk9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    .line 14903
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14904
    .end local v6
    .end local v0
    :cond_1
    return-object v6

    .line 14905
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14906
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 14907
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14908
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14909
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 14910
    .local v4, "bundledSignalArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    goto :goto_0

    .line 14911
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 14912
    .local v2, "minApiLevel":I
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 14913
    .local v0, "deprecatedApiLevel":I
    invoke-static {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6T;->A00(ILjava/lang/String;II)Lcom/facebook/ads/redexgen/X/6d;

    move-result-object v0

    .line 14914
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14915
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "bundledSignalArray":Lorg/json/JSONArray;
    .end local v2    # "minApiLevel":I
    .end local v0    # "deprecatedApiLevel":I
    goto :goto_0

    .line 14916
    :cond_5
    return-object v6
.end method

.method public static A04()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6T;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x19t
        0x76t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J85YQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ERjLgA2nXcH808DnFebmS9UOtGg2sS1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1qxO33YUwJugg12I7W8hdDwTY8lmQB5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rhBecEUZPFQ7Yw1NZv3AlKFWzzuA1v4t"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OQoGH8JMSAFUx2anZiuZQa9F4Y4IPBPd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qi3etB1BoqYS7SD4yhCTft89DSfZMPRm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xKT20OnhCHQjMxvgt95CnQBoMe0USbk1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xlJLkY3JK533PJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    return-void
.end method

.method private final A06()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e",
            "CatchGeneralException"
        }
    .end annotation

    .line 14917
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6T;->A02(III)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A01:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0i()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14918
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14919
    .local p0, "timestamp":Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_1

    .line 14920
    return-void

    .line 14921
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:I

    .line 14922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6T;->A06:Lcom/facebook/ads/redexgen/X/6x;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6x;->A05(I)V

    .line 14923
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6T;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 14924
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6T;->A07(Lorg/json/JSONArray;)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14925
    :catchall_0
    move-exception v0

    .line 14926
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 14927
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private A07(Lorg/json/JSONArray;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A05:Lcom/facebook/ads/redexgen/X/6U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6U;->A03()Ljava/util/Map;

    move-result-object v6

    .line 14929
    .local p0, "signalExecutorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/ISignalExecutor;>;"
    if-nez v6, :cond_0

    .line 14930
    return-void

    .line 14931
    :cond_0
    const/4 v5, 0x0

    .local p1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_d

    .line 14932
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 14933
    .local v0, "signal":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    .line 14934
    .restart local v0    # "signal":Lorg/json/JSONArray;
    :cond_1
    return-void

    .line 14935
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 14936
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 14937
    .local v6, "signalId":I
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 14938
    .local v5, "signalFlagsEncoded":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6i;->A02(I)Ljava/util/EnumSet;

    move-result-object v4

    .line 14939
    .local v0, "signalFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/6T;->A08(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14940
    .end local v0    # "signalFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    .end local v6    # "signalId":I
    .end local v5    # "signalFlagsEncoded":I
    .end local v0
    .end local v3
    .end local v1
    .end local v0
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14941
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A08:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14942
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6T;->A02:Lcom/facebook/ads/redexgen/X/Zv;

    .line 14943
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6e;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6b;

    invoke-direct {v0, v7, v4, v1}, Lcom/facebook/ads/redexgen/X/6b;-><init>(ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/6e;)V

    .line 14944
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A03(Lcom/facebook/ads/redexgen/X/6b;)V

    .line 14945
    goto :goto_1

    .line 14946
    :cond_5
    const/4 v3, 0x0

    .line 14947
    .local v3, "bundledSignalMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    const/4 v1, 0x0

    .line 14948
    .local v1, "isBundledSignal":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A09:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14949
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/6T;->A03(I)Ljava/util/List;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14950
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const-string v1, "YoC7905hPF6lLKyIoLI9ai68PYXiZpUw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v1, 0x1

    .line 14951
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_3

    .line 14952
    :cond_8
    if-eqz v1, :cond_a

    .line 14953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A05:Lcom/facebook/ads/redexgen/X/6U;

    invoke-virtual {v0, v7, v3}, Lcom/facebook/ads/redexgen/X/6U;->A02(ILjava/util/List;)Lcom/facebook/ads/redexgen/X/6e;

    move-result-object v3

    .line 14954
    :goto_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/6b;

    invoke-direct {v1, v7, v4, v3}, Lcom/facebook/ads/redexgen/X/6b;-><init>(ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/6e;)V

    .line 14955
    .local v0, "bdSignal":Lcom/facebook/ads/redexgen/X/6b;
    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A07:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A06:Lcom/facebook/ads/redexgen/X/6x;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6x;->A06(Lcom/facebook/ads/redexgen/X/6b;)V

    .line 14957
    :cond_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0B:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A03:Lcom/facebook/ads/redexgen/X/Zu;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zu;->A04(Lcom/facebook/ads/redexgen/X/6b;)V

    goto :goto_1

    .line 14959
    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const-string v1, "Z9n1GB2RRAAcMs1kZBpphjA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/6e;

    goto :goto_2

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/6T;->A08:[Ljava/lang/String;

    const-string v1, "Vq3HNV4roAYXQXBkca6XxmkddcpsdyWQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "BzEcBMeh5tHxspNgETLsARNA3fBT7sVt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/6e;

    goto :goto_2

    .line 14960
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A04:Lcom/facebook/ads/redexgen/X/Zt;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zt;->A03(Lcom/facebook/ads/redexgen/X/6b;)V

    goto/16 :goto_1

    .line 14961
    .end local p1    # "i":I
    .end local v0    # "bdSignal":Lcom/facebook/ads/redexgen/X/6b;
    :cond_d
    return-void
.end method

.method private final A08(Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;)Z"
        }
    .end annotation

    .line 14962
    .local v0, "signalFlagsEnum":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A01:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A05:Lcom/facebook/ads/redexgen/X/6i;

    .line 14963
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A06:Lcom/facebook/ads/redexgen/X/6i;

    .line 14964
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0A:Lcom/facebook/ads/redexgen/X/6i;

    .line 14965
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 14966
    :goto_0
    return v0

    .line 14967
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A09()I
    .locals 1

    .line 14968
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:I

    return v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/Zv;
    .locals 1

    .line 14969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A02:Lcom/facebook/ads/redexgen/X/Zv;

    return-object v0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/Zu;
    .locals 1

    .line 14970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A03:Lcom/facebook/ads/redexgen/X/Zu;

    return-object v0
.end method

.method public final A0C()Lcom/facebook/ads/redexgen/X/Zt;
    .locals 1

    .line 14971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A04:Lcom/facebook/ads/redexgen/X/Zt;

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/6x;
    .locals 1

    .line 14972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A06:Lcom/facebook/ads/redexgen/X/6x;

    return-object v0
.end method
