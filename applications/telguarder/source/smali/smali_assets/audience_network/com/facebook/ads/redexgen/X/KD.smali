.class public final Lcom/facebook/ads/redexgen/X/KD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/AdExperienceType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/8D;

.field public A03:Lcom/facebook/ads/redexgen/X/Jq;

.field public A04:Lcom/facebook/ads/redexgen/X/Jt;

.field public A05:Lcom/facebook/ads/redexgen/X/LM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Jy;

.field public final A0E:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KD;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KD;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LM;Lcom/facebook/ads/redexgen/X/Jt;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jy;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/LM;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40726
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KD;->A02:Lcom/facebook/ads/redexgen/X/8D;

    .line 40727
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KD;->A07:Ljava/lang/String;

    .line 40728
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/KD;->A05:Lcom/facebook/ads/redexgen/X/LM;

    .line 40729
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/KD;->A04:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40730
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/KD;->A0E:Ljava/lang/String;

    .line 40731
    iput p6, p0, Lcom/facebook/ads/redexgen/X/KD;->A00:I

    .line 40732
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/KD;->A0B:Z

    .line 40733
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/KD;->A09:Z

    .line 40734
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/KD;->A0D:Lcom/facebook/ads/redexgen/X/Jy;

    .line 40735
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/Jq;->A00(Lcom/facebook/ads/redexgen/X/Jt;)Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    .line 40736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A04()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 40737
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/KD;->A08:Ljava/lang/String;

    .line 40738
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/KD;->A06:Ljava/lang/String;

    .line 40739
    iput-object p12, p0, Lcom/facebook/ads/redexgen/X/KD;->A01:Lcom/facebook/ads/AdExperienceType;

    .line 40740
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KD;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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

    const/16 v0, 0x108

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KD;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x33t
        -0x21t
        -0x4ft
        -0x4ct
        -0x31t
        -0x4bt
        -0x38t
        -0x40t
        -0x4bt
        -0x3et
        -0x47t
        -0x4bt
        -0x42t
        -0x4dt
        -0x4bt
        -0x31t
        -0x3ct
        -0x37t
        -0x40t
        -0x4bt
        -0x69t
        -0x66t
        -0x4bt
        -0x58t
        -0x65t
        -0x5at
        -0x5bt
        -0x58t
        -0x56t
        -0x61t
        -0x5ct
        -0x63t
        -0x4bt
        -0x67t
        -0x5bt
        -0x5ct
        -0x64t
        -0x61t
        -0x63t
        -0x4bt
        -0x5et
        -0x69t
        -0x57t
        -0x56t
        -0x4bt
        -0x55t
        -0x5at
        -0x66t
        -0x69t
        -0x56t
        -0x65t
        -0x4bt
        -0x56t
        -0x61t
        -0x5dt
        -0x65t
        -0x33t
        -0x2ct
        -0x31t
        -0x16t
        -0x2ct
        -0x31t
        0xbt
        0x12t
        0xdt
        0x28t
        0x1dt
        0x12t
        0x16t
        0xet
        0x28t
        0x1dt
        0x18t
        0x14t
        0xet
        0x17t
        -0x1ct
        -0x13t
        -0x16t
        -0x1at
        -0x11t
        -0xbt
        0x0t
        -0xdt
        -0x1at
        -0xet
        -0xat
        -0x1at
        -0xct
        -0xbt
        0x0t
        -0x16t
        -0x1bt
        -0x69t
        -0x5dt
        -0x5ct
        -0x5ct
        -0x6bt
        -0x6ct
        -0x6bt
        -0x63t
        -0x61t
        -0x51t
        -0x6ft
        -0x6ct
        -0x51t
        -0x67t
        -0x6ct
        -0x3at
        -0x27t
        -0x2bt
        -0x2dt
        -0x3et
        -0x20t
        -0x37t
        -0x36t
        -0x31t
        -0x2bt
        -0x2ct
        -0x47t
        -0x4at
        -0x46t
        -0x48t
        -0x47t
        -0x3bt
        -0x8t
        -0xdt
        -0xbt
        -0x10t
        -0x4at
        -0x4ft
        -0x4dt
        -0x52t
        -0x34t
        -0x4dt
        -0x47t
        -0x52t
        -0x4ct
        -0x36t
        -0x2ct
        -0x20t
        -0x32t
        -0x2at
        -0x33t
        -0x2bt
        -0x36t
        -0x20t
        -0x3et
        -0x3bt
        -0x20t
        -0x3at
        -0x27t
        -0x2ft
        -0x3at
        -0x2dt
        -0x36t
        -0x3at
        -0x31t
        -0x3ct
        -0x3at
        -0x5at
        -0x5et
        -0x46t
        -0x53t
        -0x60t
        -0x52t
        -0x51t
        -0x53t
        -0x5ct
        -0x62t
        -0x51t
        -0x60t
        -0x61t
        0x7t
        0xet
        0x6t
        0x18t
        -0x6t
        -0x3t
        0xct
        0x18t
        0xbt
        -0x2t
        0xat
        0xet
        -0x2t
        0xct
        0xdt
        -0x2t
        -0x3t
        -0x1et
        -0x22t
        -0x2dt
        -0x2bt
        -0x29t
        -0x21t
        -0x29t
        -0x20t
        -0x1at
        -0xft
        -0x25t
        -0x2at
        -0x1at
        -0x1et
        -0x29t
        -0x27t
        -0x25t
        -0x1dt
        -0x25t
        -0x1ct
        -0x16t
        -0xbt
        -0x16t
        -0x11t
        -0x1at
        -0x25t
        -0x4bt
        -0x58t
        -0x4ct
        -0x48t
        -0x58t
        -0x4at
        -0x49t
        -0x3et
        -0x49t
        -0x54t
        -0x50t
        -0x58t
        -0x2ft
        -0x2et
        -0x41t
        -0x3ft
        -0x37t
        -0x23t
        -0x2et
        -0x30t
        -0x41t
        -0x3ft
        -0x3dt
        0x17t
        0x8t
        0x10t
        0x13t
        0xft
        0x4t
        0x17t
        0x8t
        0x22t
        0xct
        0x7t
        -0x3t
        -0x12t
        -0x4t
        -0x3t
        0x8t
        -0xat
        -0x8t
        -0x13t
        -0x12t
        -0x4t
        -0x12t
        -0x17t
        -0x7t
        -0x13t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u7auSF2QbA7keT455OtLfVATNnMuonV2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9Ni6xyVwZaeKacoBimRjslH6Dei"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NGE2fLmKrMN6Gw2Fz9z7jAXvyfAydpGl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "srT3S5MN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jMoNZ8Vk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oZZQeSbHWWSZcPAQallJMC7N5h2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GNfhbJ55AYf3nQ2lY9fIFOrmofPjrLRg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qccEv4BxkjzqCatZiOtTgryF8DF84JXr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40741
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40742
    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 40743
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A00:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Jq;
    .locals 1

    .line 40744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/Jt;
    .locals 1

    .line 40745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A04:Lcom/facebook/ads/redexgen/X/Jt;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/LM;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A05:Lcom/facebook/ads/redexgen/X/LM;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 40747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A09(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40748
    .local v1, "staticParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 40749
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v4

    .line 40750
    const/16 v2, 0x7d

    const/4 v1, 0x4

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40751
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A04()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40752
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 40753
    .local p1, "idfaFlag":Ljava/lang/String;
    .restart local p1    # "idfaFlag":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x81

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40754
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A09:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x5d

    const/4 v1, 0x5

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40755
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A07:Ljava/lang/String;

    const/16 v2, 0xbe

    const/16 v1, 0xc

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40756
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KD;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eq v1, v0, :cond_0

    .line 40757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xca

    const/16 v1, 0xe

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40758
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A05:Lcom/facebook/ads/redexgen/X/LM;

    if-eqz v0, :cond_1

    .line 40759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x103

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A05:Lcom/facebook/ads/redexgen/X/LM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x77

    const/4 v1, 0x6

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40761
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A04:Lcom/facebook/ads/redexgen/X/Jt;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "MtgCRt6raT7lLAmxmnhZWRhCoK6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TefOAifnH3N8w6fQm3K3ucYxLzr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 40762
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xef

    const/16 v1, 0xb

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "oEScE6GwBx0T7gd10O4WpCDAWbiGO08C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "F3x5JK4fAwlkZj0maRZJGdAXlKAKJxnY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40763
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0B:Z

    if-eqz v0, :cond_5

    .line 40764
    const/16 v2, 0xfa

    const/16 v1, 0x9

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40765
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A0E:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_1

    .line 40766
    .end local p1    # "idfaFlag":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "FP1GrzNs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ZRgJooEV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    .line 40767
    const/16 v6, 0x62

    const/16 v5, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    const/4 v0, 0x2

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40768
    :cond_8
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A00:I

    if-eqz v0, :cond_9

    .line 40769
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xad

    const/16 v1, 0x11

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40770
    :cond_9
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A0A:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "n2WYlcbw5EIAgUEIMXTCWTN9wPxeCuHJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "DhMtmXZzR3hIXz6ocgFTcGfm1e6bGNLX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_a

    .line 40771
    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_12

    const/16 v2, 0x8a

    const/16 v1, 0x16

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40772
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A02:Lcom/facebook/ads/redexgen/X/8D;

    .line 40773
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lk;->A02(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 40774
    const/16 v2, 0xa0

    const/16 v1, 0xd

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A05(J)Ljava/lang/String;

    move-result-object v4

    .line 40776
    const/16 v2, 0xd8

    const/16 v1, 0xc

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0D:Lcom/facebook/ads/redexgen/X/Jy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jy;->A07()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0D:Lcom/facebook/ads/redexgen/X/Jy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jy;->A05()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 40778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0D:Lcom/facebook/ads/redexgen/X/Jy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jy;->A05()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x38

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40779
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A0D:Lcom/facebook/ads/redexgen/X/Jy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jy;->A06()Ljava/lang/String;

    move-result-object v4

    .line 40780
    .local v3, "bidTimeToken":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 40781
    const/16 v2, 0x3e

    const/16 v1, 0xe

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40782
    :cond_c
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A08:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "Rb6QfnGn8WFdpD3GIq6bu6TZFnq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "JVdE8JKPK2IDnLMzJ7kGHpVY6qo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    .line 40783
    :goto_5
    const/16 v2, 0xe4

    const/16 v1, 0xb

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40784
    :cond_d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x4c

    const/16 v1, 0x11

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KD;->A02:Lcom/facebook/ads/redexgen/X/8D;

    .line 40786
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A00(Lcom/facebook/ads/redexgen/X/Wl;)J

    move-result-wide v0

    .line 40787
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A06(J)Ljava/lang/String;

    move-result-object v4

    .line 40788
    const/16 v2, 0x14

    const/16 v1, 0x24

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40789
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A06:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 40790
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40791
    :cond_e
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KD;->A01:Lcom/facebook/ads/AdExperienceType;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "tGjYAqFF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "TXoU1tLM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_f

    .line 40792
    :goto_6
    invoke-virtual {v4}, Lcom/facebook/ads/AdExperienceType;->getAdExperienceType()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40793
    :cond_f
    return-object v3

    :cond_10
    if-eqz v4, :cond_f

    goto :goto_6

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "HTiu1Wsn5d6NXsmhI2BzfO9bs0R"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "0VhCYUOJaTCkC5F2gS3qjd5ztPN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    goto/16 :goto_5

    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "ZxPDFffPbPKKx6Gzq6Q1tn9g5jR9gI4c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "GNuuYNFYJ1hn0RwNsfKLn7kD1DSr4DvR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v2, 0x8a

    const/16 v1, 0x16

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    if-eqz v4, :cond_a

    goto/16 :goto_3

    :cond_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/KD;->A0G:[Ljava/lang/String;

    const-string v1, "HxZ4Z0F8cEJY3nZiqqQFAmyopMZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kDj7B2TdtM6pcSuFxLBVxijt65d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/KD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KD;->A03(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
