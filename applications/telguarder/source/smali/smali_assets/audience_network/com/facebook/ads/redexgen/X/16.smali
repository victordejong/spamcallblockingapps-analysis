.class public abstract Lcom/facebook/ads/redexgen/X/16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0L:Lorg/json/JSONObject; = null

.field public static A0M:[B = null

.field public static A0N:[Ljava/lang/String; = null

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

.field public final A0J:I

.field public final A0K:Ljava/util/List;
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

    .line 2723
    .local v2, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2724
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    .line 2725
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 2726
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Ljava/util/List;

    .line 2727
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/1L;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation

    .line 2728
    const/16 v2, 0x2b

    const/16 v1, 0x8

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2729
    .local p0, "carouselData":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2730
    invoke-static {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1H;->A01(Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2731
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2732
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/19;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    .line 2733
    .local p2, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-interface {p2, v0, p0}, Lcom/facebook/ads/redexgen/X/1L;->A3B(Lcom/facebook/ads/redexgen/X/19;Lorg/json/JSONObject;)V

    .line 2734
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2735
    return-object v1
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x142

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x54t
        0x6ft
        0x53t
        0x58t
        0x5ft
        0x59t
        0x53t
        0x55t
        0x43t
        0x6ft
        0x5ct
        0x59t
        0x5et
        0x5bt
        0x6ft
        0x45t
        0x42t
        0x5ct
        0x7at
        0x75t
        0x44t
        0x77t
        0x74t
        0x7ct
        0x74t
        0x44t
        0x6ft
        0x62t
        0x6bt
        0x7et
        0x1ft
        0x1dt
        0x1ft
        0x14t
        0x19t
        0x23t
        0x1dt
        0xft
        0xft
        0x19t
        0x8t
        0xft
        0x37t
        0x35t
        0x26t
        0x3bt
        0x21t
        0x27t
        0x31t
        0x38t
        0x4et
        0x42t
        0x40t
        0x3t
        0x4bt
        0x4ct
        0x4et
        0x48t
        0x4ft
        0x42t
        0x42t
        0x46t
        0x3t
        0x4ct
        0x49t
        0x5et
        0x3t
        0x44t
        0x43t
        0x59t
        0x48t
        0x5ft
        0x5et
        0x59t
        0x44t
        0x59t
        0x44t
        0x4ct
        0x41t
        0x3t
        0x4et
        0x41t
        0x44t
        0x4et
        0x46t
        0x48t
        0x49t
        0x55t
        0x42t
        0x2at
        0x3dt
        0x22t
        0x11t
        0x26t
        0x27t
        0x2at
        0x2bt
        0x11t
        0x20t
        0x2ft
        0x38t
        0x27t
        0x29t
        0x2ft
        0x3at
        0x27t
        0x21t
        0x20t
        0x11t
        0x2bt
        0x20t
        0x2ft
        0x2ct
        0x22t
        0x2bt
        0x2at
        0x3ct
        0x2bt
        0x34t
        0x7t
        0x30t
        0x2bt
        0x7t
        0x3dt
        0x36t
        0x39t
        0x3at
        0x34t
        0x3dt
        0x3ct
        0x8t
        0x1ft
        0x0t
        0x33t
        0x4t
        0x15t
        0xet
        0x1et
        0x5t
        0x8t
        0x33t
        0x9t
        0x2t
        0xdt
        0xet
        0x0t
        0x9t
        0x8t
        0x1t
        0x1ct
        0xbt
        0x4t
        0x8t
        0xct
        0x6t
        0x3at
        0x16t
        0x1t
        0xet
        0x3at
        0x9t
        0x4t
        0x1ct
        0x0t
        0x17t
        0x3at
        0xdt
        0x11t
        0x8t
        0x9t
        0x3at
        0x10t
        0x17t
        0x9t
        0x5at
        0x51t
        0x5ct
        0x4dt
        0x46t
        0x4ft
        0x4bt
        0x5at
        0x5bt
        0x60t
        0x5ct
        0x4ft
        0x52t
        0x2bt
        0x21t
        0x2dt
        0x2ct
        0x65t
        0x62t
        0x78t
        0x69t
        0x7et
        0x7ft
        0x78t
        0x65t
        0x78t
        0x65t
        0x6dt
        0x60t
        0x51t
        0x5ct
        0x53t
        0x59t
        0x4et
        0x5et
        0x5ct
        0x4dt
        0x58t
        0x7dt
        0x70t
        0x68t
        0x7et
        0x64t
        0x65t
        0x41t
        0x4et
        0x5bt
        0x46t
        0x59t
        0x4at
        0x4at
        0x55t
        0x48t
        0x4et
        0x48t
        0x5bt
        0x53t
        0x4et
        0x50t
        0x47t
        0x53t
        0x57t
        0x47t
        0x51t
        0x56t
        0x7dt
        0x4bt
        0x46t
        0x1ft
        0x8t
        0x1at
        0xct
        0x1ft
        0x9t
        0x8t
        0x9t
        0x32t
        0x1bt
        0x4t
        0x9t
        0x8t
        0x2t
        0x43t
        0x5et
        0x43t
        0x5bt
        0x52t
        0x7ft
        0x78t
        0x66t
        0xet
        0x11t
        0x1dt
        0xft
        0x19t
        0x1at
        0x11t
        0x14t
        0x11t
        0xct
        0x1t
        0x27t
        0x1bt
        0x10t
        0x1dt
        0x1bt
        0x13t
        0x27t
        0x11t
        0x16t
        0x11t
        0xct
        0x11t
        0x19t
        0x14t
        0x27t
        0x1ct
        0x1dt
        0x14t
        0x19t
        0x1t
        0x2ft
        0x30t
        0x3ct
        0x2et
        0x38t
        0x3bt
        0x30t
        0x35t
        0x30t
        0x2dt
        0x20t
        0x6t
        0x3at
        0x31t
        0x3ct
        0x3at
        0x32t
        0x6t
        0x30t
        0x37t
        0x2dt
        0x3ct
        0x2bt
        0x2ft
        0x38t
        0x35t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MTFiGS2hyLPfirnVlCyKu8FL5ydCU71a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6CtUdYtPnHS0iwt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3FBcQYGRSJhXKbj7ODsddhFyR1abGnGF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UQ7LtGE24TX4QkAlsGDlXXS4Vcev"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JcPJu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "s3C"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "M3uL5ar3Pz1QrNsTamNzt8iOeyqnSnZC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bpoJK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/16;->A0N:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 0

    .line 2736
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    .line 2737
    return-void
.end method

.method private A05(I)V
    .locals 0

    .line 2738
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A02:I

    .line 2739
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/17;)V
    .locals 0

    .line 2740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Lcom/facebook/ads/redexgen/X/17;

    .line 2741
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/1P;)V
    .locals 0

    .line 2742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Lcom/facebook/ads/redexgen/X/1P;

    .line 2743
    return-void
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 2744
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Lcom/facebook/ads/redexgen/X/1S;

    .line 2745
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/1Z;)V
    .locals 0

    .line 2746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A07:Lcom/facebook/ads/redexgen/X/1Z;

    .line 2747
    return-void
.end method

.method private A0A(Ljava/lang/String;)V
    .locals 0

    .line 2748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    .line 2749
    return-void
.end method

.method private A0B(Ljava/lang/String;)V
    .locals 0

    .line 2750
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0E:Ljava/lang/String;

    .line 2751
    return-void
.end method

.method private final A0C(Ljava/lang/String;)V
    .locals 0

    .line 2752
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A08:Ljava/lang/String;

    .line 2753
    return-void
.end method

.method private A0D(Lorg/json/JSONObject;)V
    .locals 1

    .line 2754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2755
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    .line 2756
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0E()I
    .locals 1

    .line 2757
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    return v0
.end method

.method public final A0F()I
    .locals 1

    .line 2758
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:I

    return v0
.end method

.method public final A0G()I
    .locals 1

    .line 2759
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0J:I

    return v0
.end method

.method public abstract A0H()I
.end method

.method public abstract A0I()I
.end method

.method public final A0J()Lcom/facebook/ads/RewardData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/17;
    .locals 1

    .line 2761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Lcom/facebook/ads/redexgen/X/17;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/19;
    .locals 2

    .line 2762
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public final A0M(I)Lcom/facebook/ads/redexgen/X/19;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2763
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2764
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2765
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/1P;
    .locals 1

    .line 2766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Lcom/facebook/ads/redexgen/X/1P;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/1S;
    .locals 1

    .line 2767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Lcom/facebook/ads/redexgen/X/1S;

    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/1Z;
    .locals 1

    .line 2768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A07:Lcom/facebook/ads/redexgen/X/1Z;

    return-object v0
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 6

    .line 2769
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
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    .line 2770
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2771
    :cond_1
    const/16 v2, 0xc0

    const/16 v1, 0xc

    const/16 v0, 0x7c

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

    const/16 v0, 0x5f

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

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0N:[Ljava/lang/String;

    const-string v1, "oneJodQevTiUSARrBSMx0DbRFbVnl7hr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2772
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/PL;->A03:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PL;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2773
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A04:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2774
    :cond_7
    const/16 v2, 0x33

    const/16 v1, 0x25

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0R()Ljava/lang/String;
    .locals 1

    .line 2775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final A0S()Ljava/lang/String;
    .locals 1

    .line 2776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A0V()Ljava/lang/String;
    .locals 1

    .line 2779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final A0W()Ljava/lang/String;
    .locals 1

    .line 2780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0E:Ljava/lang/String;

    return-object v0
.end method

.method public final A0X()Ljava/lang/String;
    .locals 1

    .line 2781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0F:Ljava/lang/String;

    return-object v0
.end method

.method public final A0Y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;"
        }
    .end annotation

    .line 2782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0K:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0Z()Lorg/json/JSONObject;
    .locals 1

    .line 2783
    sget-object v0, Lcom/facebook/ads/redexgen/X/16;->A0L:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A0a()Lorg/json/JSONObject;
    .locals 2

    .line 2784
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A0D:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2785
    .local p0, "e":Lorg/json/JSONException;
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final A0b(I)V
    .locals 0

    .line 2786
    iput p1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 2787
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 2788
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Lcom/facebook/ads/RewardData;

    .line 2789
    return-void
.end method

.method public final A0d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2790
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0B:Ljava/lang/String;

    .line 2791
    return-void
.end method

.method public final A0e(Ljava/lang/String;)V
    .locals 0

    .line 2792
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0C:Ljava/lang/String;

    .line 2793
    return-void
.end method

.method public final A0f(Ljava/lang/String;)V
    .locals 0

    .line 2794
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A0F:Ljava/lang/String;

    .line 2795
    return-void
.end method

.method public final A0g(Lorg/json/JSONObject;)V
    .locals 7

    .line 2796
    const/16 v2, 0x1f

    const/16 v1, 0xc

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A0L:Lorg/json/JSONObject;

    .line 2797
    new-instance v3, Lcom/facebook/ads/redexgen/X/1R;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/1R;-><init>()V

    .line 2798
    const/16 v2, 0x101

    const/4 v1, 0x5

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1R;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v6

    .line 2799
    const/16 v2, 0xbc

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_2

    .line 2800
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v2, 0x106

    const/4 v1, 0x3

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2801
    :goto_0
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/1R;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v4

    .line 2802
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1R;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v1

    .line 2803
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A03(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v0

    .line 2804
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1R;->A08()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    .line 2805
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A08(Lcom/facebook/ads/redexgen/X/1S;)V

    .line 2806
    const/16 v2, 0xd5

    const/4 v1, 0x6

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2807
    .local p0, "layoutObject":Lorg/json/JSONObject;
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/16 v2, 0xe1

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2808
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 2809
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A0N:[Ljava/lang/String;

    const-string v1, "MaJS3iOjDVpkOvzQIu4XnTvkYtI43ENf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "dcadpZfpRdAwhtf1LK3imqQWfZ9Fu8JJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v5, :cond_0

    const/16 v2, 0xcc

    const/16 v1, 0x9

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2810
    :cond_0
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/17;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/17;-><init>(Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/1I;)V

    .line 2811
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A06(Lcom/facebook/ads/redexgen/X/17;)V

    .line 2812
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A09(Lcom/facebook/ads/redexgen/X/1Z;)V

    .line 2813
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1T;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A07(Lcom/facebook/ads/redexgen/X/1P;)V

    .line 2814
    const/16 v2, 0x58

    const/4 v1, 0x2

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0C(Ljava/lang/String;)V

    .line 2815
    const/16 v2, 0xe9

    const/16 v1, 0xa

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0B(Ljava/lang/String;)V

    .line 2816
    const/16 v2, 0x95

    const/16 v1, 0x1a

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0A(Ljava/lang/String;)V

    .line 2817
    const/16 v2, 0x75

    const/16 v1, 0xe

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0H:Z

    .line 2818
    const/16 v2, 0x83

    const/16 v1, 0x12

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0I:Z

    .line 2819
    const/4 v3, 0x1

    .line 2820
    const/16 v2, 0x5a

    const/16 v1, 0x1b

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0G:Z

    .line 2821
    const/4 v3, 0x0

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A04(I)V

    .line 2822
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/16;->A0D(Lorg/json/JSONObject;)V

    .line 2823
    const/16 v2, 0x109

    const/16 v1, 0x1f

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2824
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A05(I)V

    .line 2825
    const/16 v3, 0x3e8

    .line 2826
    const/16 v2, 0x128

    const/16 v1, 0x1a

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2827
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0b(I)V

    .line 2828
    const/16 v2, 0xaf

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0A:Ljava/lang/String;

    .line 2829
    return-void

    .line 2830
    :cond_1
    move-object v0, v6

    goto/16 :goto_1

    .line 2831
    :cond_2
    move-object v0, v3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0h()Z
    .locals 1

    .line 2832
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0H:Z

    return v0
.end method

.method public final A0i()Z
    .locals 1

    .line 2833
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0I:Z

    return v0
.end method

.method public final A0j()Z
    .locals 1

    .line 2834
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A0G:Z

    return v0
.end method

.method public final A0k()Z
    .locals 2

    .line 2835
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 2836
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2837
    :goto_0
    return v0

    .line 2838
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
