.class public final Lcom/facebook/ads/redexgen/X/P0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public final A02:Lcom/facebook/ads/redexgen/X/8D;

.field public final A03:Lcom/facebook/ads/redexgen/X/JC;

.field public final A04:Lcom/facebook/ads/redexgen/X/JK;

.field public final A05:Lcom/facebook/ads/redexgen/X/Oz;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/P0;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/P0;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/Oz;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "Lcom/facebook/ads/redexgen/X/Oz;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47705
    .local v1, "metricsData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47706
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P0;->A02:Lcom/facebook/ads/redexgen/X/8D;

    .line 47707
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P0;->A05:Lcom/facebook/ads/redexgen/X/Oz;

    .line 47708
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/P0;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 47709
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/P0;->A07:Ljava/util/Map;

    .line 47710
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/P0;->A06:Ljava/lang/String;

    .line 47711
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P0;->A06:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P0;->A03:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A04:Lcom/facebook/ads/redexgen/X/JK;

    .line 47712
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Oz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1L(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A08:Z

    .line 47713
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/P0;->A09:[B

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

.method private A01()V
    .locals 5

    .line 47714
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47715
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3c

    const/16 v1, 0x9

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47716
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/P0;->A08(Ljava/util/Map;)V

    .line 47717
    return-void
.end method

.method private A02()V
    .locals 3

    .line 47718
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P0;->A04:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0X:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 47719
    return-void
.end method

.method private A03()V
    .locals 5

    .line 47720
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47721
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x10

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47722
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/P0;->A08(Ljava/util/Map;)V

    .line 47723
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/P0;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x4ft
        0x4et
        0x4et
        0x55t
        0x54t
        0x65t
        0x59t
        0x56t
        0x53t
        0x59t
        0x51t
        0x5dt
        0x4at
        0x4bt
        0x4bt
        0x50t
        0x51t
        0x60t
        0x51t
        0x5et
        0x52t
        0x5at
        0x8t
        0x3t
        0x9t
        0x32t
        0xet
        0xct
        0x1ft
        0x9t
        0x32t
        0x1et
        0x5t
        0x2t
        0x1at
        0x32t
        0x18t
        0x1dt
        0x13t
        0x0t
        0x13t
        0x18t
        0x2t
        0x29t
        0x13t
        0xet
        0x2t
        0x4t
        0x17t
        0x21t
        0x32t
        0x21t
        0x2at
        0x30t
        0x1bt
        0x30t
        0x3dt
        0x34t
        0x21t
        0x4et
        0x48t
        0x44t
        0x4ct
        0x76t
        0x45t
        0x46t
        0x48t
        0x4dt
        0x51t
        0x58t
        0x4bt
        0x58t
        0x51t
        0x62t
        0x5et
        0x52t
        0x50t
        0x4dt
        0x51t
        0x58t
        0x49t
        0x58t
        0x62t
        0x6bt
        0x78t
        0x6bt
        0x62t
        0x51t
        0x60t
        0x6ft
        0x63t
        0x6bt
        0x68t
        0x26t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4QAeMuK9yCc4xE434"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vsUO926M2mRMCBHvkZDLDSVJZasjRX8H"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "m75JG3kyGBA9Pa8Q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BsXoGLiaQGDi3KDXWPANO86ZRypkU3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NEfK90sKL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NA5kCdAu0CbcY72yECaBPvDnC3FLldwL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T76ZrsNa0P6C1lpNf7S0Tx3scEBkBq8W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cxX21NDQKlhKMPjA26xNh3AVlSUU32"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P0;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 6

    .line 47724
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 47725
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x53

    const/16 v1, 0xa

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47726
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47727
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x45

    const/16 v1, 0xe

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47728
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xb

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47729
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/P0;->A08(Ljava/util/Map;)V

    .line 47730
    return-void
.end method

.method private A07(Ljava/lang/String;FF)V
    .locals 6

    .line 47731
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 47732
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xc

    const/16 v1, 0xb

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47733
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47734
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5e

    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47735
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47736
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x32

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47737
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xb

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47738
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/P0;->A08(Ljava/util/Map;)V

    .line 47739
    return-void
.end method

.method private A08(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47740
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47741
    return-void

    .line 47742
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A07:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47743
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P0;->A02:Lcom/facebook/ads/redexgen/X/8D;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P0;->A00:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A01:Ljava/lang/String;

    .line 47744
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A01(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 47745
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47746
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P0;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A06:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8j(Ljava/lang/String;Ljava/util/Map;)V

    .line 47747
    return-void
.end method


# virtual methods
.method public initializeLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47748
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A08:Z

    if-nez v0, :cond_0

    .line 47749
    return-void

    .line 47750
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P0;->A00:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/P0;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 47751
    sget-object v2, Lcom/facebook/ads/redexgen/X/P0;->A0A:[Ljava/lang/String;

    const-string v1, "4HHX0Lv3voylt1VaUhFjcSRGfPCuBfwt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P0;->A01:Ljava/lang/String;

    .line 47752
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public logButtonClick(Ljava/lang/String;FF)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47753
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A08:Z

    if-nez v0, :cond_0

    .line 47754
    return-void

    .line 47755
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/P0;->A07(Ljava/lang/String;FF)V

    .line 47756
    return-void
.end method

.method public logEndCardShowUp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47757
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A08:Z

    if-nez v0, :cond_0

    .line 47758
    return-void

    .line 47759
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P0;->A03()V

    .line 47760
    return-void
.end method

.method public logGameLoad()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47761
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A08:Z

    if-nez v0, :cond_0

    .line 47762
    return-void

    .line 47763
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P0;->A01()V

    .line 47764
    return-void
.end method

.method public logLevelComplete(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47765
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A08:Z

    if-nez v0, :cond_0

    .line 47766
    return-void

    .line 47767
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P0;->A06(Ljava/lang/String;)V

    .line 47768
    return-void
.end method

.method public onCTAClick()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47769
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P0;->A02()V

    .line 47770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P0;->A05:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A0B()V

    .line 47771
    return-void
.end method
