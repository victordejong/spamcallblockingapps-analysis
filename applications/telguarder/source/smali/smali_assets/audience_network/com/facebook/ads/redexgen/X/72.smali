.class public final Lcom/facebook/ads/redexgen/X/72;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/71;
    }
.end annotation


# static fields
.field public static A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 15955
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A0A()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/72;->A00:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(F)F
    .locals 2

    .line 15957
    float-to-double v0, p0

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 15958
    .local p0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public static A01()J
    .locals 2

    .line 15959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static A02(J)J
    .locals 2

    .line 15960
    const-wide/32 v0, 0x100000

    rem-long v0, p0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6f;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15961
    const/16 v2, 0x18

    const/4 v1, 0x2

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(III)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const-string v1, "z7pyJyudjtKKr1UnaXEFbYill9IaTAuv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 15962
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A05:Lcom/facebook/ads/redexgen/X/6f;

    return-object v0

    .line 15963
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15964
    .local v2, "rootNode":Lorg/json/JSONObject;
    const/16 v2, 0x16

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 15965
    .local v1, "bdObject":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 15966
    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A05:Lcom/facebook/ads/redexgen/X/6f;

    return-object v0

    .line 15967
    :cond_3
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15968
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6f;->A00(I)Lcom/facebook/ads/redexgen/X/6f;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15969
    :catchall_0
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A05:Lcom/facebook/ads/redexgen/X/6f;

    return-object v0
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/X1;
    .locals 5

    .line 15970
    instance-of v0, p1, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    .line 15971
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A01()J

    move-result-wide v2

    new-instance v4, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6p;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/X1;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15972
    return-object v0

    .line 15973
    :cond_0
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_1

    .line 15974
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A01()J

    move-result-wide v2

    new-instance v4, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A06:Lcom/facebook/ads/redexgen/X/6p;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6p;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/X1;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15975
    return-object v0

    .line 15976
    :cond_1
    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/security/NoSuchAlgorithmException;

    if-eqz v0, :cond_3

    .line 15977
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A01()J

    move-result-wide v2

    new-instance v4, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Lcom/facebook/ads/redexgen/X/6p;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/X1;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15978
    return-object v0

    .line 15979
    :cond_3
    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A01()J

    move-result-wide v2

    new-instance v4, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/6q;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/6q;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/X1;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V

    .line 15980
    return-object v0
.end method

.method public static A05()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.UUID.randomUUID"
        }
    .end annotation

    .line 15981
    sget-object v0, Lcom/facebook/ads/redexgen/X/72;->A00:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 15982
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 15983
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/72;->A00:Ljava/lang/String;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15984
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 15985
    throw v0

    .line 15986
    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 15987
    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/72;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/72;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "EmptyCatchBlock"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15988
    const/16 v2, 0x1a

    const/4 v1, 0x1

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 15989
    .local v2, "timestamp":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15990
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15991
    :catch_0
    :goto_0
    return-object v0
.end method

.method public static A08([BLcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 15992
    if-eqz p0, :cond_1

    .line 15993
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 15994
    .local p0, "hexString":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/71;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 15995
    .local p1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 15996
    .local v6, "hash":[B
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_0

    .line 15997
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15998
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15999
    .end local v0    # "hex":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16000
    .end local v0
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16001
    .end local p0    # "hexString":Ljava/lang/StringBuffer;
    .end local p1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v6    # "hash":[B
    :cond_1
    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/5v;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/5v;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16002
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16003
    .local p0, "operationalInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A03:Lcom/facebook/ads/redexgen/X/63;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16004
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A09:Lcom/facebook/ads/redexgen/X/63;

    .line 16005
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16006
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5v;->A0U()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 16007
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16008
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A05:Lcom/facebook/ads/redexgen/X/63;

    .line 16009
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A00()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 16010
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16011
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A06:Lcom/facebook/ads/redexgen/X/63;

    .line 16012
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v1

    .line 16013
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5v;->A0T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 16014
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16015
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A08:Lcom/facebook/ads/redexgen/X/63;

    .line 16016
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v1

    .line 16017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5v;->A0W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 16018
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16019
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A04:Lcom/facebook/ads/redexgen/X/63;

    .line 16020
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v1

    .line 16021
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5v;->A0S()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 16022
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16023
    sget-object v0, Lcom/facebook/ads/redexgen/X/63;->A07:Lcom/facebook/ads/redexgen/X/63;

    .line 16024
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/63;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5v;->A0i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A07(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16025
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16026
    return-object v2
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/72;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x20t
        0x35t
        0x37t
        0x7dt
        0x28t
        0x13t
        0x1et
        0xft
        0x4at
        0x2bt
        0x18t
        0x18t
        0xbt
        0x13t
        0x4at
        0x3t
        0x19t
        0x4at
        0x4t
        0x1ft
        0x6t
        0x6t
        0x49t
        0x4ft
        0x2et
        0x28t
        0x78t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "klz3PfnNvmp5i3RNGysSaLjJ3VIw0l84"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yXsQv2uEPj1Gy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CWrsJoIiMr2Py"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6gHWxgKGTv4fT1KFkNUjf9q2pnQImFUN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yQwgYLl9Wcnywu5ENKCp2EIuN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cCB4ooN3qaXnG3hcYBSEafbmia3h3d8L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6ZGMYocGJ9eTSlvDHIy6cVWzulJglXYo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fjZkbZ60vY9pfGnSG8mgd5jOa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/5v;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5v;->A0Y()Lcom/facebook/ads/redexgen/X/64;

    move-result-object v1

    .line 16028
    .local v7, "bdOperationalLoggingDelegate":Lcom/facebook/ads/redexgen/X/64;
    if-nez v1, :cond_0

    .line 16029
    return-void

    .line 16030
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A04:Lcom/facebook/ads/redexgen/X/61;

    .line 16031
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A02()Ljava/lang/String;

    move-result-object v2

    .line 16032
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/72;->A09(Lcom/facebook/ads/redexgen/X/5v;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p0, 0x0

    .line 16033
    move-object v5, p2

    move-object v3, p1

    invoke-interface/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/64;->A8h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16034
    return-void
.end method

.method public static A0D()Z
    .locals 2

    .line 16035
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0E()Z
    .locals 2

    .line 16036
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 16037
    .local v0, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 16038
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/6f;)Z
    .locals 1

    .line 16039
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6f;->A04()I

    move-result p0

    .line 16040
    .local p0, "reputationTierValue":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A06:Lcom/facebook/ads/redexgen/X/6f;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6f;->A04()I

    move-result v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A08:Lcom/facebook/ads/redexgen/X/6f;

    .line 16041
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6f;->A04()I

    move-result v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A07:Lcom/facebook/ads/redexgen/X/6f;

    .line 16042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6f;->A04()I

    move-result v0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 16043
    :goto_0
    return v0

    .line 16044
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0G(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16045
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 16046
    const/4 p1, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_3

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 16047
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 16048
    :cond_1
    const/4 p1, 0x0

    sget-object p0, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, p0, v0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object p0, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const-string v1, "danSWWfecziS16EFvOuzNkUf7"

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const-string v1, "ieafjjKhgMgstUmOTZ20eVS8A"

    const/4 v0, 0x7

    aput-object v1, p0, v0

    return p1

    .line 16049
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget-object p0, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, p0, v0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const-string v1, "N8qxeAmUGPy0B1zt2WR4xLLwfkdwl2lR"

    const/4 v0, 0x3

    aput-object v1, p0, v0

    return p1

    :cond_4
    sget-object p0, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const-string v1, "YocI1UdEz38ek"

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const-string v1, "zx2O7GKUkbX2J"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return p1

    :cond_5
    sget-object p0, Lcom/facebook/ads/redexgen/X/72;->A02:[Ljava/lang/String;

    const-string v1, "qzekdlEbC3vFkXvjtMRmNVQYeqW14HJE"

    const/4 v0, 0x6

    aput-object v1, p0, v0

    return p1
.end method
