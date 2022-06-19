.class public final Lcom/facebook/ads/redexgen/X/KC;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A03:Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotWrittenPrivateField"
        }
    .end annotation
.end field

.field public static A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40689
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KC;->A04()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KC;->A01:Ljava/util/Map;

    .line 40690
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KC;->A00:Ljava/util/Map;

    .line 40691
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KC;->A02:Ljava/util/Map;

    .line 40692
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/KC;->A03:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jq;)J
    .locals 2

    .line 40694
    sget-object v0, Lcom/facebook/ads/redexgen/X/KC;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40695
    sget-object v0, Lcom/facebook/ads/redexgen/X/KC;->A01:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 40696
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jq;->ordinal()I

    move-result v0

    aget p1, v1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-wide/16 v1, -0x3e8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 40697
    return-wide v1

    .line 40698
    :cond_1
    return-wide v1

    .line 40699
    :cond_2
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x58

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;
    .locals 5

    const/16 v2, 0x2f

    const/16 v1, 0xf

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    const/16 v1, 0x16

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40700
    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A02:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KC;->A03(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;
    .locals 5

    .line 40701
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    .line 40702
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A08()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    .line 40703
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A05()Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 40704
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A06()Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 40705
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A07()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v1, 0x4

    .line 40706
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A07()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v1, 0x5

    .line 40707
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 40708
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40709
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A07()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A01()I

    move-result v2

    goto :goto_1

    .line 40710
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A07()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A00()I

    move-result v0

    goto :goto_0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KC;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x36t
        0x7ft
        0x60t
        0x36t
        0x7ft
        0x60t
        0x36t
        0x7ft
        0x60t
        0x21t
        0x7ft
        0x60t
        0x21t
        0x7ft
        0x60t
        0x21t
        0x57t
        0x7t
        0x51t
        0x7t
        0x3t
        0x0t
        0x52t
        0x56t
        0xbt
        0x2dt
        0x37t
        0x30t
        0x39t
        0x7et
        0x32t
        0x3ft
        0x2dt
        0x2at
        0x7et
        0x3ft
        0x3at
        0x7et
        0x2ct
        0x3bt
        0x2dt
        0x2et
        0x31t
        0x30t
        0x2dt
        0x3bt
        0x41t
        0x43t
        0x52t
        0x6at
        0x47t
        0x55t
        0x52t
        0x74t
        0x43t
        0x55t
        0x56t
        0x49t
        0x48t
        0x55t
        0x43t
    .end array-data
.end method

.method public static A05(JLcom/facebook/ads/redexgen/X/KD;)V
    .locals 3

    .line 40711
    sget-object v2, Lcom/facebook/ads/redexgen/X/KC;->A01:Ljava/util/Map;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/KC;->A03(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40712
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 4

    .line 40713
    sget-object v3, Lcom/facebook/ads/redexgen/X/KC;->A00:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KC;->A03(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40714
    return-void
.end method

.method public static A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 2

    .line 40715
    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A02:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KC;->A03(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40716
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/KD;)Z
    .locals 8

    .line 40717
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/KC;->A03:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 40718
    return v7

    .line 40719
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KC;->A03(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;

    move-result-object v1

    .line 40720
    .local p0, "key":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KC;->A00:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40721
    return v7

    .line 40722
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KC;->A00:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 40723
    .local v7, "lastLoadTime":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KD;->A05()Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jq;)J

    move-result-wide v3

    .line 40724
    .local v0, "refreshThreshold":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7
.end method
