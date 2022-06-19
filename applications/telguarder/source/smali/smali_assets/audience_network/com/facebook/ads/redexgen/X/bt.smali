.class public final Lcom/facebook/ads/redexgen/X/bt;
.super Lcom/facebook/ads/redexgen/X/16;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/datamodels/RewardedVideoAdDataBundle$RVExperienceType;
    }
.end annotation


# static fields
.field public static A00:[B = null

.field public static A01:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0x262e8901a6a53febL


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;)V"
        }
    .end annotation

    .line 70432
    .local p1, "adInfo":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/16;-><init>(Ljava/util/List;)V

    .line 70433
    return-void
.end method

.method public static A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/bt;
    .locals 2

    .line 70434
    new-instance v0, Lcom/facebook/ads/redexgen/X/bu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bu;-><init>()V

    .line 70435
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/16;->A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;

    move-result-object v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/bt;

    invoke-direct {p1, v0}, Lcom/facebook/ads/redexgen/X/bt;-><init>(Ljava/util/List;)V

    .line 70436
    .local p0, "rewardedVideoAdDataBundle":Lcom/facebook/ads/redexgen/X/bt;
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/16;->A0g(Lorg/json/JSONObject;)V

    .line 70437
    const/4 p0, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x6a

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0e(Ljava/lang/String;)V

    .line 70438
    return-object p1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bt;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 4

    const/16 v3, 0xe

    sget-object v2, Lcom/facebook/ads/redexgen/X/bt;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bt;->A01:[Ljava/lang/String;

    const-string v1, "vDQKNoss9qiPXd8S2Aus0c1HGbd5gMQl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "nSwGzQN60p1E6knkFapFA8fuyb3FeF6N"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bt;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x33t
        0x26t
        0x38t
        0x22t
        0x33t
        0x25t
        0x26t
        0x25t
        0x20t
        0x37t
        0x2at
        0x25t
        0x26t
        0x30t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "r6wxjppTPk8qqzLRyjcbdQcA77ZMVo55"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Rh6olI4hONJ8yannxuNSF0WPku4wNPsq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dN5FaQTClehdtxF9CoF19H85hY8wkvGi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rjB6kg9SBUGr2KH1eIh2YUrCeaZ2IjVH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uwE4iuczSrXuOAqhix1jvRvaNYVxSPYl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nB4f3mkqn6tAKhT6MHcT9FS4Qvlri7ut"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bNzGTI7RRMeGoANXUPkwX9ogVwA9ri6n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cACVCPwRSeRCIlqlGfLHSAYd9Lc4yhZp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bt;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H()I
    .locals 1

    .line 70439
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70440
    const/4 v0, 0x1

    .line 70441
    :goto_0
    return v0

    .line 70442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I()I
    .locals 1

    .line 70443
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A04()I

    move-result v0

    return v0
.end method
