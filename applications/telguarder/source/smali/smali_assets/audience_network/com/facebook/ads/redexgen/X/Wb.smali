.class public final Lcom/facebook/ads/redexgen/X/Wb;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/91;->A0H(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Wl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wb;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wb;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    .locals 0

    .line 64419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A03:[Ljava/lang/String;

    const-string v1, "4HO8Ss9k2AmZ8k9M8zrjCYxt48xbOoMK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    xor-int/2addr v3, p2

    xor-int/lit8 v0, v3, 0x46

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wb;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x34t
        0x3bt
        0x70t
        0x23t
        0x25t
        0x33t
        0x33t
        0x35t
        0x23t
        0x23t
        0x36t
        0x25t
        0x3ct
        0x3ct
        0x29t
        0x70t
        0x39t
        0x3et
        0x39t
        0x24t
        0x39t
        0x31t
        0x3ct
        0x39t
        0x2at
        0x35t
        0x34t
        0x71t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w4GsGaTCcJA9wFWp2KNopTJOjqP8UDpw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KJoDcXHO6XERgkU18ZjJw4XTw2kjUjU4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R80wDz5faPpVYHVxJychiW2DfFSiKcfh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t0Fzi1DjxmxSLCfz9XJ2VaEQot34azEH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xhDPy00jOuqmtbPp3auQzix75rw9IX8h"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Uu427jBhvNl8yC5HrJluoVTOz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6hGUj4iS9agb9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ga1SCcoGdvIpCjYHRj6uJxXsB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 64420
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0E(Lcom/facebook/ads/redexgen/X/Wl;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64421
    :catchall_0
    move-exception v1

    .line 64422
    .local p0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3P(Ljava/lang/Throwable;)V

    .line 64423
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/91;->A0E(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 64424
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    if-eqz v4, :cond_0

    .line 64425
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/90;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/90;-><init>(ZLjava/lang/String;)V

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/91;->A06(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    .line 64426
    :cond_0
    return-void
.end method
