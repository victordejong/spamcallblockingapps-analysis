.class public final Lcom/facebook/ads/redexgen/X/WF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9K;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9L;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A01:Lcom/facebook/ads/redexgen/X/9V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9V<",
            "Lcom/facebook/ads/redexgen/X/J9;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/9V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9V<",
            "Lcom/facebook/ads/redexgen/X/J9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 63943
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WF;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WF;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/WF;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63945
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 63946
    const/16 v2, 0xb

    const/16 v1, 0x1c

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9S;->A00(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/9S;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/WH;-><init>(Lcom/facebook/ads/redexgen/X/WF;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WC;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/WC;-><init>(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 63947
    const/16 v2, 0x142

    const/16 v1, 0x25

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9S;->A00(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/9S;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/WG;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/WG;-><init>(Lcom/facebook/ads/redexgen/X/WF;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WC;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/WC;-><init>(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:Lcom/facebook/ads/redexgen/X/9V;

    .line 63948
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/WF;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A04:[Ljava/lang/String;

    const-string v1, "X42DzCMkQ4HFIzVdD0OsfCNEPJzG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x17

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Ljava/util/List;[B[I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;[B[I)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 63949
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v8, 0x0

    .line 63950
    .local p0, "start":I
    array-length v7, p3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget v5, p3, v6

    .line 63951
    .local p3, "size":I
    if-nez v5, :cond_1

    .line 63952
    :cond_0
    return-object p1

    .line 63953
    :cond_1
    :try_start_0
    invoke-static {p2, v8, v5}, Lcom/facebook/ads/redexgen/X/WF;->A02([BII)Lorg/json/JSONObject;

    move-result-object v0

    .line 63954
    .local v8, "event":Lorg/json/JSONObject;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63955
    :catch_0
    move-exception v4

    .line 63956
    .local v8, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63957
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0x55

    const/16 v1, 0x2d

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63958
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A27:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/WF;->A06(ILjava/lang/Throwable;)V

    .line 63959
    .end local v8    # "jsone":Lorg/json/JSONException;
    :goto_1
    add-int/2addr v8, v5

    .line 63960
    .end local p3    # "size":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static A02([BII)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63961
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v3, 0x1e2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WF;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A04:[Ljava/lang/String;

    const-string v1, "UWvzDGqGj7QUhJ5x6ip4Rlib"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WF;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x65t
        0x63t
        -0x4et
        -0x57t
        0x63t
        -0x49t
        -0x44t
        -0x4dt
        -0x58t
        0x7dt
        0x63t
        0x73t
        -0x6at
        0x77t
        -0x58t
        -0x69t
        -0x60t
        -0x5at
        -0x7bt
        -0x5at
        -0x5ft
        -0x5ct
        -0x6dt
        -0x67t
        -0x69t
        -0x7ct
        -0x69t
        -0x6bt
        -0x5ft
        -0x5ct
        -0x6at
        0x76t
        -0x6dt
        -0x5at
        -0x6dt
        -0x6ct
        -0x6dt
        -0x5bt
        -0x69t
        -0x6et
        -0x4dt
        -0x46t
        -0x4dt
        -0x3et
        -0x4dt
        -0x4et
        0x6et
        -0x4dt
        -0x3ct
        -0x4dt
        -0x44t
        -0x3et
        -0x78t
        0x6et
        0x70t
        -0x5at
        -0x3ft
        -0x37t
        -0x34t
        -0x3bt
        -0x3ct
        -0x80t
        -0x2ct
        -0x31t
        -0x80t
        -0x3dt
        -0x34t
        -0x3bt
        -0x3ft
        -0x2et
        -0x80t
        -0x3bt
        -0x2at
        -0x3bt
        -0x32t
        -0x2ct
        -0x2dt
        -0x80t
        -0x2dt
        -0x2ct
        -0x31t
        -0x2et
        -0x3ft
        -0x39t
        -0x3bt
        0x6bt
        -0x7at
        -0x72t
        -0x6ft
        -0x76t
        -0x77t
        0x45t
        -0x67t
        -0x6ct
        0x45t
        -0x77t
        -0x76t
        -0x68t
        -0x76t
        -0x69t
        -0x72t
        -0x7at
        -0x6ft
        -0x72t
        -0x61t
        -0x76t
        0x45t
        -0x7at
        -0x6dt
        0x45t
        -0x76t
        -0x65t
        -0x76t
        -0x6dt
        -0x67t
        0x45t
        -0x75t
        -0x69t
        -0x6ct
        -0x6et
        0x45t
        -0x77t
        -0x7at
        -0x67t
        -0x7at
        -0x79t
        -0x7at
        -0x68t
        -0x76t
        0x45t
        -0x4at
        -0x2ft
        -0x27t
        -0x24t
        -0x2bt
        -0x2ct
        -0x70t
        -0x1ct
        -0x21t
        -0x70t
        -0x23t
        -0x21t
        -0x1at
        -0x2bt
        -0x70t
        -0x2bt
        -0x1at
        -0x2bt
        -0x22t
        -0x1ct
        -0x1dt
        -0x70t
        -0x2at
        -0x1et
        -0x21t
        -0x23t
        -0x70t
        -0x27t
        -0x22t
        -0x63t
        -0x2at
        -0x24t
        -0x27t
        -0x29t
        -0x28t
        -0x1ct
        -0x70t
        -0x1dt
        -0x1ct
        -0x21t
        -0x1et
        -0x2ft
        -0x29t
        -0x2bt
        -0x70t
        -0x2et
        -0x2ft
        -0x2dt
        -0x25t
        -0x70t
        -0x1ct
        -0x21t
        -0x70t
        -0x2bt
        -0x1at
        -0x2bt
        -0x22t
        -0x1ct
        -0x1dt
        -0x70t
        -0x2ct
        -0x2ft
        -0x1ct
        -0x2ft
        -0x2et
        -0x2ft
        -0x1dt
        -0x2bt
        -0x28t
        -0xdt
        -0x5t
        -0x2t
        -0x9t
        -0xat
        -0x4et
        0x6t
        0x1t
        -0x4et
        0x2t
        -0xdt
        0x4t
        0x5t
        -0x9t
        -0x4et
        -0xdt
        0x0t
        -0x4et
        -0x9t
        0x8t
        -0x9t
        0x0t
        0x6t
        -0x4et
        -0x8t
        0x4t
        0x1t
        -0x1t
        -0x4et
        -0x5t
        0x0t
        -0x41t
        -0x8t
        -0x2t
        -0x5t
        -0x7t
        -0x6t
        0x6t
        -0x4et
        0x5t
        0x6t
        0x1t
        0x4t
        -0xdt
        -0x7t
        -0x9t
        0x70t
        -0x75t
        -0x6dt
        -0x6at
        -0x71t
        -0x72t
        0x4at
        -0x62t
        -0x67t
        0x4at
        -0x64t
        -0x71t
        -0x75t
        -0x72t
        0x4at
        -0x62t
        -0x6et
        -0x71t
        0x4at
        -0x68t
        -0x61t
        -0x69t
        -0x74t
        -0x71t
        -0x64t
        0x4at
        -0x67t
        -0x70t
        0x4at
        -0x71t
        -0x60t
        -0x71t
        -0x68t
        -0x62t
        -0x63t
        0x4at
        -0x70t
        -0x64t
        -0x67t
        -0x69t
        0x4at
        -0x72t
        -0x75t
        -0x62t
        -0x75t
        -0x74t
        -0x75t
        -0x63t
        -0x71t
        -0x79t
        -0x5et
        -0x56t
        -0x53t
        -0x5at
        -0x5bt
        0x61t
        -0x4bt
        -0x50t
        0x61t
        -0x4ct
        -0x5at
        -0x4dt
        -0x56t
        -0x5et
        -0x53t
        -0x56t
        -0x45t
        -0x5at
        0x61t
        -0x5et
        -0x5bt
        0x61t
        -0x5at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x40t
        -0x1bt
        -0x23t
        -0x1dt
        -0x20t
        -0x22t
        -0x21t
        -0x15t
        -0x5ct
        -0x48t
        -0x25t
        -0x44t
        -0x13t
        -0x24t
        -0x1bt
        -0x15t
        -0x36t
        -0x15t
        -0x1at
        -0x17t
        -0x28t
        -0x22t
        -0x24t
        -0x37t
        -0x24t
        -0x26t
        -0x1at
        -0x17t
        -0x25t
        -0x45t
        -0x28t
        -0x15t
        -0x28t
        -0x27t
        -0x28t
        -0x16t
        -0x24t
        -0x25t
        -0x12t
        -0x14t
        -0x8t
        -0x5t
        -0x13t
        -0x57t
        -0x13t
        -0x16t
        -0x3t
        -0x16t
        -0x15t
        -0x16t
        -0x4t
        -0x12t
        -0x57t
        -0x11t
        -0x16t
        -0xet
        -0xbt
        -0x2t
        -0x5t
        -0x12t
        -0x57t
        -0x8t
        -0x14t
        -0x14t
        -0x2t
        -0x5t
        -0x5t
        -0x12t
        -0x13t
        -0x57t
        0x0t
        -0xft
        -0x12t
        -0x9t
        -0x57t
        -0x5t
        -0x12t
        -0x16t
        -0x13t
        -0xet
        -0x9t
        -0x10t
        -0x57t
        -0x12t
        -0x1t
        -0x12t
        -0x9t
        -0x3t
        -0x4t
        -0x49t
        -0x10t
        0x3t
        0x3t
        -0xct
        -0x4t
        -0x1t
        0x3t
        -0x4et
        -0x51t
        -0x3et
        -0x51t
        -0xet
        -0x13t
        -0x74t
        0x7ft
        0x7dt
        -0x77t
        -0x74t
        0x7et
        0x79t
        0x7et
        0x7bt
        -0x72t
        0x7bt
        0x7ct
        0x7bt
        -0x73t
        0x7ft
        -0x62t
        -0x70t
        -0x62t
        -0x62t
        -0x6ct
        -0x66t
        -0x67t
        -0x76t
        -0x6ct
        -0x71t
        0x7t
        -0x7t
        0x7t
        0x7t
        -0x3t
        0x3t
        0x2t
        -0xdt
        0x8t
        -0x3t
        0x1t
        -0x7t
        -0x44t
        -0x4ft
        -0x4bt
        -0x53t
        -0x16t
        -0x1bt
        -0x1ft
        -0x25t
        -0x1ct
        -0x5dt
        -0x58t
        -0x61t
        -0x6ct
        -0x3t
        -0xat
        -0xdt
        -0xat
        -0x9t
        -0x1t
        -0xat
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Mm6eOmxrkeU2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MUq44yb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oKRPVLX0GnKoqIxxSACkHhthyeGglJDi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kpHGdbOqKKCIQYGNabgqln8bHLF6fw56"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0pAnM9hA2pxuChyanVmC1wYC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qxO1zNdoKC3MMUxTs0mhMJ4wGZPx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oKuuJ477mGyxhVSdv1rWN1Mids3hq7ZK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WF;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A05(ILjava/lang/String;)V
    .locals 5

    .line 63962
    new-instance v4, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v4, p2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 63963
    .local p0, "event":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 63964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x1a9

    const/16 v1, 0xf

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 63965
    return-void
.end method

.method private A06(ILjava/lang/Throwable;)V
    .locals 5

    .line 63966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 63967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 63968
    const/16 v2, 0x1a9

    const/16 v1, 0xf

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 63969
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/WF;ILjava/lang/String;)V
    .locals 0

    .line 63970
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/WF;->A05(ILjava/lang/String;)V

    return-void
.end method

.method public static A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/J9;)[B
    .locals 6

    .line 63971
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 63972
    .local p0, "eventJson":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x1a7

    const/4 v1, 0x2

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63973
    const/16 v2, 0x1d2

    const/4 v1, 0x5

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63974
    const/16 v2, 0x1d7

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JF;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63975
    const/16 v2, 0x1ce

    const/4 v1, 0x4

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A04()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63976
    const/16 v2, 0x1c2

    const/16 v1, 0xc

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A03()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63977
    const/16 v2, 0x1b8

    const/16 v1, 0xa

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63978
    const/16 v2, 0x1a3

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A09()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63979
    const/16 v2, 0x19c

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63980
    :catch_0
    move-exception v4

    .line 63981
    .local p1, "jsone":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63982
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0x126

    const/16 v1, 0x1c

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63983
    .end local p1    # "jsone":Lorg/json/JSONException;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/J9;)[B
    .locals 0

    .line 63984
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/WF;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/J9;)[B

    move-result-object p0

    return-object p0
.end method

.method public static A0A(Lorg/json/JSONObject;)[B
    .locals 0

    .line 63985
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0B()I
    .locals 5

    .line 63986
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9V;->A74()I

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_0 .. :try_end_0} :catch_0

    .line 63987
    :catch_0
    move-exception v4

    .line 63988
    .local p0, "e":Lcom/facebook/ads/redexgen/X/9e;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63989
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0xf5

    const/16 v1, 0x31

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63990
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A0C(ILjava/util/Set;Ljava/util/Set;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 63991
    .local v6, "eventsToRetry":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v6, "eventsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v4, p0

    const/16 v2, 0x19c

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    .line 63992
    .local p3, "attemptsExceededCount":I
    const/16 v0, 0x1e

    new-array v2, v0, [I

    .line 63993
    .local v4, "eventSizes":[I
    const/16 v0, 0x7530

    new-array v1, v0, [B

    .line 63994
    .local v2, "eventData":[B
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 63995
    .local v1, "eventFetches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/ads/internal/eventstorage/record/RecordDatabase$Fetch;>;"
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WF;->A02:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9V;->A5G([B[I)Lcom/facebook/ads/redexgen/X/9U;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63996
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v4, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WF;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v6

    .line 63997
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->A90()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63998
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 63999
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WF;->A02:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9V;->A5G([B[I)Lcom/facebook/ads/redexgen/X/9U;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64000
    invoke-direct {v4, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/WF;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 64001
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64002
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_0 .. :try_end_0} :catch_6

    .line 64003
    .local v11, "event":Lorg/json/JSONObject;
    :try_start_1
    const/16 v2, 0x1a7

    const/4 v1, 0x2

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_1 .. :try_end_1} :catch_6

    .line 64004
    .local p0, "eventId":Ljava/lang/String;
    :try_start_2
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64005
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 64006
    .local v2, "attempt":I
    if-ge v0, p1, :cond_2

    goto :goto_2

    .line 64007
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_2 .. :try_end_2} :catch_4

    .line 64008
    :goto_2
    :try_start_3
    invoke-virtual {v9, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64009
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/WF;->A0A(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->AEG([B)V

    .line 64010
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_3 .. :try_end_3} :catch_7

    .line 64011
    .restart local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .restart local v11    # "event":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    goto :goto_4

    .line 64012
    :cond_3
    :try_start_4
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64013
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64014
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    const/16 v1, 0x10

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d7

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v3

    .end local p0    # "eventId":Ljava/lang/String;
    .local v0, "eventId":Ljava/lang/String;
    const/16 v2, 0x1db

    const/4 v1, 0x7

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 64015
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64016
    .end local p0
    .restart local v0    # "eventId":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_4 .. :try_end_4} :catch_5

    .line 64017
    .end local v0    # "eventId":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_4

    .restart local v0    # "eventId":Ljava/lang/String;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .restart local v11    # "event":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    goto :goto_4

    :catch_3
    move-exception v8

    .line 64018
    .local p0, "jsone":Lorg/json/JSONException;
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64019
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0xc6

    const/16 v1, 0x2f

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64020
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A27:I

    invoke-direct {v4, v0, v8}, Lcom/facebook/ads/redexgen/X/WF;->A06(ILjava/lang/Throwable;)V

    goto/16 :goto_1
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_5 .. :try_end_5} :catch_5

    .line 64021
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .end local v11    # "event":Lorg/json/JSONObject;
    :catch_4
    move-exception v5

    goto :goto_7

    .line 64022
    .end local v7
    :cond_6
    :try_start_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 64023
    .local p2, "event":Lorg/json/JSONObject;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/WF;->A02:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WF;->A0A(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->AEG([B)V

    goto :goto_5

    .line 64024
    :cond_7
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9U;

    .line 64025
    .local p2, "fetch":Lcom/facebook/ads/redexgen/X/9U;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->A4f()V

    goto :goto_6
    :try_end_6
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_6 .. :try_end_6} :catch_5

    .line 64026
    .end local v0
    :catch_5
    move-exception v5

    goto :goto_7

    :catch_6
    move-exception v5

    goto :goto_7

    .end local p0    # "jsone":Lorg/json/JSONException;
    .end local v0
    .end local v7
    .end local v11
    :catch_7
    move-exception v5

    .line 64027
    .local p0, "e":Lcom/facebook/ads/redexgen/X/9e;
    :goto_7
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 64028
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0x82

    const/16 v1, 0x44

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64029
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A23:I

    invoke-direct {v4, v0, v5}, Lcom/facebook/ads/redexgen/X/WF;->A06(ILjava/lang/Throwable;)V

    .line 64030
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/9e;
    :cond_9
    return v11
.end method

.method public final A0D(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 64031
    const/4 v6, 0x0

    .line 64032
    .local p0, "noLimit":Z
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 64033
    const/4 v6, 0x1

    .line 64034
    const/16 p1, 0x1e

    .line 64035
    :cond_0
    new-array v1, p1, [I

    .line 64036
    .local p1, "eventSizes":[I
    mul-int/lit16 v0, p1, 0x3e8

    new-array v4, v0, [B

    .line 64037
    .local v6, "eventData":[B
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 64038
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 64039
    .local v1, "eventFetches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/facebook/ads/internal/eventstorage/record/RecordDatabase$Fetch;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/9V;->A5G([B[I)Lcom/facebook/ads/redexgen/X/9U;

    move-result-object v0

    .line 64040
    .local v0, "lastFetch":Lcom/facebook/ads/redexgen/X/9U;
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64041
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->A5H()I

    move-result v2

    .line 64042
    .local v4, "totalFetched":I
    invoke-direct {p0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/WF;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v5

    .line 64043
    :goto_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->A90()Z

    move-result v0

    if-eqz v0, :cond_3

    if-lt v2, p1, :cond_1

    if-eqz v6, :cond_3

    .line 64044
    :cond_1
    if-eqz v6, :cond_2

    goto :goto_1

    .line 64045
    :cond_2
    sub-int v0, p1, v2

    new-array v1, v0, [I

    goto :goto_2

    .line 64046
    :goto_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 64047
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/9V;->A5G([B[I)Lcom/facebook/ads/redexgen/X/9U;

    move-result-object v0

    .line 64048
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64049
    invoke-direct {p0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/WF;->A01(Ljava/util/List;[B[I)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 64050
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 64051
    .local v3, "event":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WF;->A0A(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->AEG([B)V

    goto :goto_3

    .line 64052
    :cond_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9U;

    .line 64053
    .local v3, "fetch":Lcom/facebook/ads/redexgen/X/9U;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->A4f()V

    goto :goto_4
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_0 .. :try_end_0} :catch_0

    .line 64054
    :catch_0
    move-exception v4

    .line 64055
    .local v0, "e":Lcom/facebook/ads/redexgen/X/9e;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64056
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0x167

    const/16 v1, 0x35

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64057
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A24:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/WF;->A06(ILjava/lang/Throwable;)V

    .line 64058
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/9e;
    :cond_6
    return-object v5
.end method

.method public final A3x()V
    .locals 5

    .line 64059
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9V;->clear()V

    .line 64060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9V;->clear()V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9e; {:try_start_0 .. :try_end_0} :catch_0

    .line 64061
    :catch_0
    move-exception v4

    .line 64062
    .local p0, "e":Lcom/facebook/ads/redexgen/X/9e;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64063
    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A05:Ljava/lang/String;

    const/16 v2, 0x37

    const/16 v1, 0x1e

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64064
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A21:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/WF;->A06(ILjava/lang/Throwable;)V

    .line 64065
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/9e;
    :goto_0
    return-void
.end method

.method public final AEo(Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/9H;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/J9;",
            "Lcom/facebook/ads/redexgen/X/9H<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64066
    .local v1, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    sget-object v3, Lcom/facebook/ads/redexgen/X/Lo;->A07:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9L;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/9L;-><init>(Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/9H;Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/8D;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ll;->A00(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64067
    return-void
.end method
