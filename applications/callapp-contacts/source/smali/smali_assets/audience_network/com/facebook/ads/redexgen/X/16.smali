.class public abstract Lcom/facebook/ads/redexgen/X/16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0M:Lorg/json/JSONObject; = null

.field public static A0N:[B = null

.field public static A0O:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = -0x4a480b6eb5993653L


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/redexgen/X/17;

.field public A05:Lcom/facebook/ads/redexgen/X/1P;

.field public A06:Lcom/facebook/ads/redexgen/X/1S;

.field public A07:Lcom/facebook/ads/redexgen/X/1Z;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/lang/String;

.field public A0E:Ljava/lang/String;

.field public A0F:Ljava/lang/String;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:I

.field public final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/16;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/16;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;)V"
        }
    .end annotation

    .line 2613
    .local v2, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2614
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    .line 2615
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 2616
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0L:Ljava/util/List;

    .line 2617
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/1L;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation

    .line 2618
    const/16 v2, 0x2b

    const/16 v1, 0x8

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2619
    .local p0, "carouselData":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2620
    invoke-static {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1H;->A01(Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2621
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2622
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/19;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    .line 2623
    .local p2, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-interface {p2, v0, p0}, Lcom/facebook/ads/redexgen/X/1L;->A3F(Lcom/facebook/ads/redexgen/X/19;Lorg/json/JSONObject;)V

    .line 2624
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2625
    return-object v1
.end method

.method public static A02()V
    .locals 4

    const/16 v3, 0x15b

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const-string v1, "bfB1pGz3pHLReaUGKuLSmGsyYLYBAtW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A0N:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x28t
        0x2dt
        0x16t
        0x2at
        0x21t
        0x26t
        0x20t
        0x2at
        0x2ct
        0x3at
        0x16t
        0x25t
        0x20t
        0x27t
        0x22t
        0x16t
        0x3ct
        0x3bt
        0x25t
        0x76t
        0x79t
        0x48t
        0x7bt
        0x78t
        0x70t
        0x78t
        0x48t
        0x63t
        0x6et
        0x67t
        0x72t
        0x53t
        0x51t
        0x53t
        0x58t
        0x55t
        0x6ft
        0x51t
        0x43t
        0x43t
        0x55t
        0x44t
        0x43t
        0x5bt
        0x59t
        0x4at
        0x57t
        0x4dt
        0x4bt
        0x5dt
        0x54t
        0x27t
        0x2bt
        0x29t
        0x6at
        0x22t
        0x25t
        0x27t
        0x21t
        0x26t
        0x2bt
        0x2bt
        0x2ft
        0x6at
        0x25t
        0x20t
        0x37t
        0x6at
        0x2dt
        0x2at
        0x30t
        0x21t
        0x36t
        0x37t
        0x30t
        0x2dt
        0x30t
        0x2dt
        0x25t
        0x28t
        0x6at
        0x27t
        0x28t
        0x2dt
        0x27t
        0x2ft
        0x21t
        0x20t
        0x0t
        0x17t
        0x25t
        0x32t
        0x2dt
        0x1et
        0x29t
        0x28t
        0x25t
        0x24t
        0x1et
        0x2ft
        0x20t
        0x37t
        0x28t
        0x26t
        0x20t
        0x35t
        0x28t
        0x2et
        0x2ft
        0x1et
        0x24t
        0x2ft
        0x20t
        0x23t
        0x2dt
        0x24t
        0x25t
        0xet
        0x19t
        0x6t
        0x35t
        0x2t
        0x19t
        0x35t
        0xft
        0x4t
        0xbt
        0x8t
        0x6t
        0xft
        0xet
        0x61t
        0x76t
        0x69t
        0x5at
        0x6dt
        0x7ct
        0x67t
        0x77t
        0x6ct
        0x61t
        0x5at
        0x60t
        0x6bt
        0x64t
        0x67t
        0x69t
        0x60t
        0x61t
        0x56t
        0x4bt
        0x5ct
        0x53t
        0x5ft
        0x5bt
        0x51t
        0x6dt
        0x41t
        0x56t
        0x59t
        0x6dt
        0x5et
        0x53t
        0x4bt
        0x57t
        0x40t
        0x6dt
        0x5at
        0x46t
        0x5ft
        0x5et
        0x6dt
        0x47t
        0x40t
        0x5et
        0x22t
        0x29t
        0x24t
        0x35t
        0x3et
        0x37t
        0x33t
        0x22t
        0x23t
        0x18t
        0x24t
        0x37t
        0x2at
        0x5dt
        0x57t
        0x5bt
        0x5at
        0xat
        0xdt
        0x17t
        0x6t
        0x11t
        0x10t
        0x17t
        0xat
        0x17t
        0xat
        0x2t
        0xft
        0x28t
        0x25t
        0x2at
        0x20t
        0x37t
        0x27t
        0x25t
        0x34t
        0x21t
        0x5et
        0x53t
        0x4bt
        0x5dt
        0x47t
        0x46t
        0x4ct
        0x43t
        0x56t
        0x4bt
        0x54t
        0x47t
        0x55t
        0x4at
        0x57t
        0x51t
        0x57t
        0x44t
        0x4ct
        0x51t
        0x6et
        0x79t
        0x6dt
        0x69t
        0x79t
        0x6ft
        0x68t
        0x43t
        0x75t
        0x78t
        0x32t
        0x25t
        0x37t
        0x21t
        0x32t
        0x24t
        0x25t
        0x24t
        0x1ft
        0x36t
        0x29t
        0x24t
        0x25t
        0x2ft
        0x3ct
        0x21t
        0x3ct
        0x24t
        0x2dt
        0x71t
        0x76t
        0x68t
        0x19t
        0x1ft
        0x9t
        0x33t
        0x2t
        0x9t
        0x1bt
        0x33t
        0x0t
        0xdt
        0x15t
        0x3t
        0x19t
        0x18t
        0x33t
        0xft
        0x3t
        0x2t
        0x18t
        0x1et
        0x3t
        0x0t
        0x0t
        0x9t
        0x1et
        0x10t
        0xft
        0x3t
        0x11t
        0x7t
        0x4t
        0xft
        0xat
        0xft
        0x12t
        0x1ft
        0x39t
        0x5t
        0xet
        0x3t
        0x5t
        0xdt
        0x39t
        0xft
        0x8t
        0xft
        0x12t
        0xft
        0x7t
        0xat
        0x39t
        0x2t
        0x3t
        0xat
        0x7t
        0x1ft
        0x6ct
        0x73t
        0x7ft
        0x6dt
        0x7bt
        0x78t
        0x73t
        0x76t
        0x73t
        0x6et
        0x63t
        0x45t
        0x79t
        0x72t
        0x7ft
        0x79t
        0x71t
        0x45t
        0x73t
        0x74t
        0x6et
        0x7ft
        0x68t
        0x6ct
        0x7bt
        0x76t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1gqRR9im7tmNjhPy8NnQpjCX4rd8Ielc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZkOx7RNEMabKvQ7fgN15WIbWDw11JZFu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ifeh8sROmLFDdOYqa0sy0eFfj5RHH1gU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fnDzwAhU6GMUs0cCq2fTQuWEzv5lBJki"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OVtNfYqIZ80xqW4zrHdkYxbTKYgYXHc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "chIpxbYwiAOd1RIHlv8aEwW7ihQHRwI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GnSiEcQE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uApEYGhuY9oy1RN675k2bDQ9FUD4oA7y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 0

    .line 2626
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    .line 2627
    return-void
.end method

.method private A05(I)V
    .locals 0

    .line 2628
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A02:I

    .line 2629
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/17;)V
    .locals 0

    .line 2630
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Lcom/facebook/ads/redexgen/X/17;

    .line 2631
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/1P;)V
    .locals 0

    .line 2632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Lcom/facebook/ads/redexgen/X/1P;

    .line 2633
    return-void
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 2634
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Lcom/facebook/ads/redexgen/X/1S;

    .line 2635
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/1Z;)V
    .locals 0

    .line 2636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A07:Lcom/facebook/ads/redexgen/X/1Z;

    .line 2637
    return-void
.end method

.method private A0A(Ljava/lang/String;)V
    .locals 0

    .line 2638
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    .line 2639
    return-void
.end method

.method private A0B(Ljava/lang/String;)V
    .locals 0

    .line 2640
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0E:Ljava/lang/String;

    .line 2641
    return-void
.end method

.method private final A0C(Ljava/lang/String;)V
    .locals 0

    .line 2642
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A08:Ljava/lang/String;

    .line 2643
    return-void
.end method

.method private A0D(Lorg/json/JSONObject;)V
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2645
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    .line 2646
    :cond_0
    return-void
.end method

.method private A0E(Z)V
    .locals 0

    .line 2647
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0J:Z

    .line 2648
    return-void
.end method


# virtual methods
.method public final A0F()I
    .locals 1

    .line 2649
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    return v0
.end method

.method public final A0G()I
    .locals 1

    .line 2650
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    return v0
.end method

.method public final A0H()I
    .locals 1

    .line 2651
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:I

    return v0
.end method

.method public final A0I()I
    .locals 1

    .line 2652
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:I

    return v0
.end method

.method public abstract A0J()I
.end method

.method public abstract A0K()I
.end method

.method public final A0L()Lcom/facebook/ads/RewardData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/17;
    .locals 1

    .line 2654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Lcom/facebook/ads/redexgen/X/17;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/19;
    .locals 2

    .line 2655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A0L:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public final A0O(I)Lcom/facebook/ads/redexgen/X/19;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2656
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2657
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2658
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/1P;
    .locals 1

    .line 2659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Lcom/facebook/ads/redexgen/X/1P;

    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/1S;
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Lcom/facebook/ads/redexgen/X/1S;

    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/1Z;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A07:Lcom/facebook/ads/redexgen/X/1Z;

    return-object v0
.end method

.method public final A0S()Ljava/lang/String;
    .locals 6

    .line 2662
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x514cfef6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eq v1, v0, :cond_3

    const v0, -0x3ebdafe9

    if-eq v1, v0, :cond_2

    const v0, 0x240b672c

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_4

    .line 2663
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2664
    :cond_1
    const/16 v2, 0xc0

    const/16 v1, 0xc

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0xdb

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v2, 0xf3

    const/16 v1, 0xe

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const-string v1, "Jd5WF9li"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2665
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/PQ;->A03:Lcom/facebook/ads/redexgen/X/PQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PQ;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2666
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/PR;->A04:Lcom/facebook/ads/redexgen/X/PR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2667
    :cond_6
    const/16 v2, 0x33

    const/16 v1, 0x25

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1

    .line 2668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 2669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0V()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0W()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A0X()Ljava/lang/String;
    .locals 1

    .line 2672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final A0Y()Ljava/lang/String;
    .locals 1

    .line 2673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0E:Ljava/lang/String;

    return-object v0
.end method

.method public final A0Z()Ljava/lang/String;
    .locals 1

    .line 2674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0F:Ljava/lang/String;

    return-object v0
.end method

.method public final A0a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation

    .line 2675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0L:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0b()Lorg/json/JSONObject;
    .locals 1

    .line 2676
    sget-object v0, Lcom/facebook/ads/redexgen/X/16;->A0M:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A0c()Lorg/json/JSONObject;
    .locals 2

    .line 2677
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    .local p0, "e":Lorg/json/JSONException;
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final A0d(I)V
    .locals 0

    .line 2679
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 2680
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 2681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Lcom/facebook/ads/RewardData;

    .line 2682
    return-void
.end method

.method public final A0f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2683
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0B:Ljava/lang/String;

    .line 2684
    return-void
.end method

.method public final A0g(Ljava/lang/String;)V
    .locals 0

    .line 2685
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    .line 2686
    return-void
.end method

.method public final A0h(Ljava/lang/String;)V
    .locals 0

    .line 2687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0F:Ljava/lang/String;

    .line 2688
    return-void
.end method

.method public final A0i(Lorg/json/JSONObject;)V
    .locals 7

    .line 2689
    const/16 v2, 0x1f

    const/16 v1, 0xc

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A0M:Lorg/json/JSONObject;

    .line 2690
    new-instance v3, Lcom/facebook/ads/redexgen/X/1R;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/1R;-><init>()V

    .line 2691
    const/16 v2, 0x101

    const/4 v1, 0x5

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1R;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v6

    .line 2692
    const/16 v2, 0xbc

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    .line 2693
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v2, 0x106

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    :goto_0
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/1R;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v4

    .line 2695
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1R;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v1

    .line 2696
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A03(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v0

    .line 2697
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1R;->A08()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    .line 2698
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A08(Lcom/facebook/ads/redexgen/X/1S;)V

    .line 2699
    const/16 v2, 0xd5

    const/4 v1, 0x6

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2700
    .local p0, "layoutObject":Lorg/json/JSONObject;
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/16 v2, 0xe1

    const/16 v1, 0x8

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 2701
    :cond_0
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const-string v1, "L9OC0yGJthGch16tOTqUcqcE9MnsMaz6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "n6CgIEssquLp46jPM2UWfBhL1rINMjIc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 2702
    :cond_2
    move-object v0, v6

    .line 2703
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 2704
    if-eqz v5, :cond_3

    const/16 v2, 0xcc

    const/16 v1, 0x9

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2705
    :cond_3
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/17;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/17;-><init>(Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/1I;)V

    .line 2706
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A06(Lcom/facebook/ads/redexgen/X/17;)V

    .line 2707
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A09(Lcom/facebook/ads/redexgen/X/1Z;)V

    .line 2708
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A07(Lcom/facebook/ads/redexgen/X/1P;)V

    .line 2709
    const/16 v2, 0x58

    const/4 v1, 0x2

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0C(Ljava/lang/String;)V

    .line 2710
    const/16 v2, 0xe9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0B(Ljava/lang/String;)V

    .line 2711
    const/16 v2, 0x95

    const/16 v1, 0x1a

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0A(Ljava/lang/String;)V

    .line 2712
    const/16 v2, 0x75

    const/16 v1, 0xe

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0H:Z

    .line 2713
    const/16 v2, 0x83

    const/16 v1, 0x12

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0I:Z

    .line 2714
    const/4 v3, 0x1

    .line 2715
    const/16 v2, 0x5a

    const/16 v1, 0x1b

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0G:Z

    .line 2716
    const/4 v3, 0x0

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A04(I)V

    .line 2717
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/16;->A0D(Lorg/json/JSONObject;)V

    .line 2718
    const/16 v2, 0x122

    const/16 v1, 0x1f

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2719
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A05(I)V

    .line 2720
    const/16 v3, 0x3e8

    .line 2721
    const/16 v2, 0x141

    const/16 v1, 0x1a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2722
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0d(I)V

    .line 2723
    const/16 v2, 0x109

    const/16 v1, 0x19

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0E(Z)V

    .line 2724
    const/16 v2, 0xaf

    const/16 v1, 0xd

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0A:Ljava/lang/String;

    .line 2725
    return-void
.end method

.method public final A0j()Z
    .locals 1

    .line 2726
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0H:Z

    return v0
.end method

.method public final A0k()Z
    .locals 1

    .line 2727
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0I:Z

    return v0
.end method

.method public final A0l()Z
    .locals 1

    .line 2728
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0G:Z

    return v0
.end method

.method public final A0m()Z
    .locals 4

    .line 2729
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 2730
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0O:[Ljava/lang/String;

    const-string v1, "Ho9CziPGzu0GN5git9gLyxI3YsNmgO7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2731
    :goto_0
    return v0
.end method

.method public final A0n()Z
    .locals 1

    .line 2732
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0J:Z

    return v0
.end method
