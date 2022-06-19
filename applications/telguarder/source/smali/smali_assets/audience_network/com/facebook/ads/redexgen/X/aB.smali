.class public final Lcom/facebook/ads/redexgen/X/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Q;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5T;

.field public final A01:Lcom/facebook/ads/redexgen/X/7D;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 66749
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aB;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aB;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/aB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aB;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5T;Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    .line 66750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66751
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/5T;

    .line 66752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/5T;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/aB;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/5T;->A3D(Lcom/facebook/ads/redexgen/X/5V;)V

    .line 66753
    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:Lcom/facebook/ads/redexgen/X/7D;

    .line 66754
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A01()V

    .line 66755
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aB;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2d

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
    .locals 6

    .line 66756
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 66757
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aB;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A03:[Ljava/lang/String;

    const-string v1, "B9WAOcp3zNbG4sQr12bKZPkRro"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6ENVq9NVFWRAnG6rhAVuoXedHs5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/5T;

    .line 66758
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5T;->A5c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66759
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/5T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5T;->A5c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/5W;

    .line 66760
    .local v4, "asset":Lcom/facebook/ads/redexgen/X/5W;
    sget-object v1, Lcom/facebook/ads/redexgen/X/5S;->A00:[I

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/5W;->A7S()Lcom/facebook/ads/redexgen/X/5X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5X;->ordinal()I

    move-result v0

    aget v1, v1, v0

    if-eq v1, v4, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 66761
    :cond_2
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/5W;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aB;->A06(Ljava/lang/String;)V

    goto :goto_0

    .line 66762
    :cond_3
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/5W;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aB;->A07(Ljava/lang/String;)V

    .line 66763
    goto :goto_0

    .line 66764
    :cond_4
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/5W;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aB;->A05(Ljava/lang/String;)V

    .line 66765
    goto :goto_0

    .line 66766
    :cond_5
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:Lcom/facebook/ads/redexgen/X/7D;

    new-instance v4, Lcom/facebook/ads/redexgen/X/aC;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/aC;-><init>(Lcom/facebook/ads/redexgen/X/aB;)V

    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    .line 66767
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x84

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aB;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x73t
        0x64t
        0x6dt
        0x6et
        0x60t
        0x65t
        0x68t
        0x6ft
        0x66t
        0x21t
        0x24t
        0x65t
        0x21t
        0x60t
        0x72t
        0x72t
        0x64t
        0x75t
        0x72t
        0x3ct
        0x1et
        0x9t
        0x0t
        0x3t
        0xdt
        0x8t
        0x5t
        0x2t
        0xbt
        0x4ct
        0x5t
        0x1t
        0xdt
        0xbt
        0x9t
        0x56t
        0x4ct
        0x49t
        0x1ft
        0x76t
        0x54t
        0x43t
        0x4at
        0x49t
        0x47t
        0x42t
        0x4ft
        0x48t
        0x41t
        0x6t
        0x4bt
        0x47t
        0x54t
        0x4dt
        0x53t
        0x56t
        0x1ct
        0x6t
        0x3t
        0x55t
        0x56t
        0x74t
        0x63t
        0x6at
        0x69t
        0x67t
        0x62t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x70t
        0x6ft
        0x62t
        0x63t
        0x69t
        0x3ct
        0x26t
        0x23t
        0x75t
        0x32t
        0x65t
        0x30t
        0x30t
        0x60t
        0x61t
        0x62t
        0x62t
        0x7bt
        0x34t
        0x6et
        0x65t
        0x64t
        0x7bt
        0x67t
        0x67t
        0x33t
        0x6ft
        0x7bt
        0x37t
        0x64t
        0x37t
        0x65t
        0x7bt
        0x64t
        0x37t
        0x64t
        0x37t
        0x33t
        0x64t
        0x32t
        0x34t
        0x35t
        0x35t
        0x33t
        0x62t
        0x37t
        0x35t
        0x22t
        0x21t
        0x22t
        0x33t
        0x24t
        0x2ft
        0x6at
        0x71t
        0x74t
        0x71t
        0x70t
        0x68t
        0x71t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lJVeP2IR7ua2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jEDUnDrnc1QBGJRRXgI1zLNGeQAVlRB5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4J1evWwVBwsv6j2jE3cxdE8l4EvJqUWx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hbOpPbm2Lvz8WBi4M4lcAmyYP20RrxkZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "42MJRsHMkke9vUn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N1ePHibZvm11p1YoQp9n3cvTSohhnC86"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pzMHmXStxFGPpObuVYX1kVlrzXN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JuJmyZjKd3poC4Sz8wRazc2gW2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aB;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/aB;)V
    .locals 0

    .line 66768
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A01()V

    return-void
.end method

.method private A05(Ljava/lang/String;)V
    .locals 10

    .line 66769
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    move-object v5, p1

    if-eqz v0, :cond_0

    .line 66770
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v3, v0

    const/16 v2, 0x14

    const/16 v1, 0x14

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66771
    :cond_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/7A;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 66772
    .local p0, "imageData":Lcom/facebook/ads/redexgen/X/7A;
    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/7A;->A01:Ljava/lang/String;

    .line 66773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 66774
    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 6

    .line 66775
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 66776
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/16 v2, 0x28

    const/16 v1, 0x15

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66777
    :cond_0
    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v3, p1, v4, v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66778
    .local p0, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    iput-boolean v5, v3, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 66779
    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7C;->A02:Ljava/lang/String;

    .line 66780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 66781
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 6

    .line 66782
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 66783
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/16 v2, 0x3d

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66784
    :cond_0
    const/16 v2, 0x51

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x7d

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v3, p1, v4, v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66785
    .local p0, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    iput-boolean v5, v3, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 66786
    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7C;->A02:Ljava/lang/String;

    .line 66787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0b(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 66788
    return-void
.end method
