.class public final Lcom/facebook/ads/redexgen/X/KE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KD;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final A0A:Lcom/facebook/ads/redexgen/X/Lk;

.field public static final A0B:Ljava/util/concurrent/Executor;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/KB;

.field public A02:Lcom/facebook/ads/redexgen/X/KD;

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/KF;

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40717
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KE;->A0D()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KE;->A0C()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lk;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KE;->A0A:Lcom/facebook/ads/redexgen/X/Lk;

    .line 40718
    sget-object v0, Lcom/facebook/ads/redexgen/X/KE;->A0A:Lcom/facebook/ads/redexgen/X/Lk;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 40719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40720
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40721
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40722
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KF;->A00()Lcom/facebook/ads/redexgen/X/KF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/KF;

    .line 40723
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KI;->A00()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:Ljava/lang/String;

    .line 40724
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KE;)J
    .locals 1

    .line 40725
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 40726
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/KB;
    .locals 0

    .line 40727
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:Lcom/facebook/ads/redexgen/X/KB;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/KF;
    .locals 0

    .line 40728
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/KF;

    return-object p0
.end method

.method private A04(J)Lcom/facebook/ads/redexgen/X/QL;
    .locals 1

    .line 40729
    new-instance v0, Lcom/facebook/ads/redexgen/X/cM;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cM;-><init>(Lcom/facebook/ads/redexgen/X/KE;J)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/KE;J)Lcom/facebook/ads/redexgen/X/QL;
    .locals 0

    .line 40730
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KE;->A04(J)Lcom/facebook/ads/redexgen/X/QL;

    move-result-object p0

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/KE;)Ljava/lang/String;
    .locals 0

    .line 40731
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/KE;)Ljava/lang/String;
    .locals 0

    .line 40732
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/KE;)Ljava/util/Map;
    .locals 0

    .line 40733
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/KE;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 40734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:Ljava/util/Map;

    return-object p1
.end method

.method private A0B()V
    .locals 6

    .line 40735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0C(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40736
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KE;
    :cond_0
    return-void

    .line 40737
    :cond_1
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 40738
    .local p0, "ex":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 40739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40740
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A1f:I

    .line 40741
    const/16 v2, 0x6a

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40742
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KE;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x3at
        0x68t
        0x6et
        0x39t
        0x3dt
        0x6ct
        0x7at
        0x69t
        0x6bt
        0x77t
        0x75t
        0x4et
        0x41t
        0x44t
        0x48t
        0x43t
        0x59t
        0x52t
        0x5ft
        0x48t
        0x5ct
        0x58t
        0x48t
        0x5et
        0x59t
        0x52t
        0x44t
        0x49t
        0x62t
        0x58t
        0xbt
        0x79t
        0x65t
        0x11t
        0xbt
        0x64t
        0x65t
        0xat
        0x6ct
        0x63t
        0x66t
        0x66t
        0xat
        0x58t
        0x4ft
        0x49t
        0x4ft
        0x43t
        0x5ct
        0x4ft
        0x4et
        0x14t
        0x35t
        0x7at
        0x1ct
        0x33t
        0x36t
        0x36t
        0x7at
        0x3ft
        0x28t
        0x28t
        0x35t
        0x28t
        0x7at
        0x39t
        0x35t
        0x3et
        0x3ft
        0x7at
        0x1t
        0x7ft
        0x29t
        0x7t
        0x7at
        0x7ft
        0x29t
        0x26t
        0x7t
        0x48t
        0x6t
        0xdt
        0x1ct
        0x1ft
        0x7t
        0x1at
        0x3t
        0x48t
        0xbt
        0x7t
        0x6t
        0x6t
        0xdt
        0xbt
        0x1ct
        0x1t
        0x7t
        0x6t
        0x58t
        0x5at
        0x51t
        0x5at
        0x4dt
        0x56t
        0x5ct
        0x28t
        0x23t
        0x32t
        0x31t
        0x29t
        0x34t
        0x2dt
        0x37t
        0x36t
        0x1ft
        0x30t
        0x35t
        0x35t
        0x11t
        0x36t
        0x36t
        0x32t
    .end array-data
.end method

.method public static A0D()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jHqhq9rNYSSw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oXXasJZKheaqJc0eeEDaqL9fqatR6yjH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HZfV4vlkHnOHSqnfuZFUyeF6uFp1ZMa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ctGGwCiuI8x2mhpb6iYaTSYvEv38GMVI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hooRY0JbS2MOmGEMLhPLLpjKFYik6yA6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UUaZIloNsnWPLtNmJ6BLiWitv8uuoCfe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8CdfBsPlUzO8votQ5auuotJRUMhSpJIA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YHWLBZkCs2mlLEga5omnGJot9WkTYHBz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KE;->A09:[Ljava/lang/String;

    return-void
.end method

.method private A0E(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0x71

    const/16 v1, 0xa

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x24

    const/16 v1, 0x10

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40743
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 40744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x34

    const/16 v1, 0x1a

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40745
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 40746
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 1

    .line 40747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Lcom/facebook/ads/redexgen/X/KD;

    if-eqz v0, :cond_0

    .line 40748
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KD;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 40749
    :cond_0
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 1

    .line 40750
    new-instance v0, Lcom/facebook/ads/redexgen/X/cO;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cO;-><init>(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Ljava/lang/Runnable;)V

    .line 40751
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0

    .line 40752
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0

    .line 40753
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/Jl;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/cP;)V
    .locals 0

    .line 40754
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0M(Lcom/facebook/ads/redexgen/X/cP;)V

    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;J)V
    .locals 0

    .line 40755
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KE;->A0O(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;J)V
    .locals 0

    .line 40756
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KE;->A0P(Ljava/lang/String;J)V

    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/cP;)V
    .locals 1

    .line 40757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Lcom/facebook/ads/redexgen/X/KD;

    if-eqz v0, :cond_0

    .line 40758
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KD;->ABk(Lcom/facebook/ads/redexgen/X/cP;)V

    .line 40759
    :cond_0
    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/cP;)V
    .locals 1

    .line 40760
    new-instance v0, Lcom/facebook/ads/redexgen/X/cN;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cN;-><init>(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/cP;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Ljava/lang/Runnable;)V

    .line 40761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40762
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A02()Lcom/facebook/ads/redexgen/X/Xs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xs;->A0D()Lcom/facebook/ads/redexgen/X/Qv;

    move-result-object v0

    .line 40763
    .local p0, "syncModule":Lcom/facebook/ads/redexgen/X/Qv;
    if-eqz v0, :cond_0

    .line 40764
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A5O()V

    .line 40765
    .end local p0    # "syncModule":Lcom/facebook/ads/redexgen/X/Qv;
    :cond_0
    return-void
.end method

.method private A0O(Ljava/lang/String;J)V
    .locals 12

    .line 40766
    :try_start_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:Lcom/facebook/ads/redexgen/X/KF;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:Ljava/lang/String;

    .line 40767
    move-object v8, p1

    move-wide v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/KF;->A06(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/KH;

    move-result-object v5

    .line 40768
    .local p0, "serverResponse":Lcom/facebook/ads/redexgen/X/KH;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KH;->A00()Lcom/facebook/ads/redexgen/X/8w;

    move-result-object v3

    .line 40769
    .local v8, "placement":Lcom/facebook/ads/redexgen/X/8w;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/5r;->A06(Lcom/facebook/ads/redexgen/X/XK;Ljava/lang/String;)V

    .line 40770
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 40771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0N(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v1

    .line 40772
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A20(Ljava/lang/String;)V

    .line 40773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 40774
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40775
    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    .line 40776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/28;->A0P(Lcom/facebook/ads/redexgen/X/XK;Ljava/lang/String;)V

    .line 40777
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 40778
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0B()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:Lcom/facebook/ads/redexgen/X/KB;

    .line 40779
    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KA;->A06(JLcom/facebook/ads/redexgen/X/KB;)V

    .line 40780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lv;->A01(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V

    .line 40781
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    const/4 v1, 0x7

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40782
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LC;->A02()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 40783
    .local v6, "reactNativeException":Lcom/facebook/ads/redexgen/X/8f;
    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/8f;->A04(I)V

    .line 40784
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/8f;->A08(Z)V

    .line 40785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40786
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    const/16 v2, 0x63

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1F:I

    .line 40787
    invoke-interface {v6, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/8d;->A8t(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40788
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    .end local v6    # "reactNativeException":Lcom/facebook/ads/redexgen/X/8f;
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A00:[I

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KH;->A01()Lcom/facebook/ads/redexgen/X/KG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KG;->ordinal()I

    move-result v0

    aget v1, v1, v0

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 40789
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40790
    .local v9, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40791
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40792
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v5

    .line 40793
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40794
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40795
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 40796
    invoke-static {v2, v8}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/Jl;)V

    goto/16 :goto_2

    .line 40797
    .end local v9    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    check-cast v5, Lcom/facebook/ads/redexgen/X/cQ;

    .line 40798
    .local v9, "serverResponseError":Lcom/facebook/ads/redexgen/X/cQ;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cQ;->A04()Ljava/lang/String;

    move-result-object v7

    .line 40799
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cQ;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40800
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 40801
    .local v6, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cQ;->A03()I

    move-result v0

    invoke-direct {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/KE;->A0E(ILjava/lang/String;)V

    .line 40802
    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v8

    .line 40803
    .local v7, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40804
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40805
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v4

    .line 40806
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 40807
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 40808
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 40809
    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/Jl;)V

    goto/16 :goto_2

    .line 40810
    .end local v9    # "serverResponseError":Lcom/facebook/ads/redexgen/X/cQ;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v6    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v7    # "finalErrMessage":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    check-cast v4, Lcom/facebook/ads/redexgen/X/cP;

    .line 40811
    .local v9, "ads":Lcom/facebook/ads/redexgen/X/cP;
    if-eqz v3, :cond_5

    .line 40812
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 40813
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/KA;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KB;)V

    .line 40815
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 40816
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:Ljava/util/Map;

    const/16 v2, 0xc

    const/16 v1, 0x11

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40817
    .local v6, "clientChallenge":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KH;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40818
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40819
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40820
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KH;->A02()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/J2;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/J2;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Ljava/lang/String;)V

    .line 40821
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J2;->A0C()V

    .line 40822
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    .end local v6    # "clientChallenge":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2n(J)V

    .line 40823
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/KE;->A0N(Lcom/facebook/ads/redexgen/X/cP;)V

    goto :goto_2

    .line 40824
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40825
    :catch_0
    move-exception v0

    .line 40826
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 40827
    .local v8, "errorMessage":Ljava/lang/String;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40828
    .local v9, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40829
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40830
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v5

    .line 40831
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40832
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40833
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A09:[Ljava/lang/String;

    const-string v1, "KiE48ndyzelvmzNW6bdZaRvZ6MMpVlPo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "apnThSuxD28F5jipUISQB7XXqWmqfDCi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 40834
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 40835
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_2
    return-void
.end method

.method private A0P(Ljava/lang/String;J)V
    .locals 2

    .line 40836
    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A0B:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cL;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/cL;-><init>(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;J)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40837
    return-void
.end method


# virtual methods
.method public final A0Q(Lcom/facebook/ads/redexgen/X/KB;)V
    .locals 10

    .line 40838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/LW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A07:Lcom/facebook/ads/redexgen/X/LW;

    if-ne v1, v0, :cond_0

    .line 40840
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0B()V

    .line 40841
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40842
    .local p0, "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/16 v2, 0x4e

    const/16 v1, 0x15

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A06(III)Ljava/lang/String;

    move-result-object v8

    .line 40843
    .local v3, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40844
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40845
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v5

    .line 40846
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40847
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40848
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 40849
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 40850
    return-void

    .line 40851
    .end local p0    # "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:Lcom/facebook/ads/redexgen/X/KB;

    .line 40852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A0B(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 40853
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KA;->A09(Lcom/facebook/ads/redexgen/X/KB;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40854
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KA;->A02(Lcom/facebook/ads/redexgen/X/KB;)Ljava/lang/String;

    move-result-object v2

    .line 40855
    .local p0, "lastResponse":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 40856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEV()V

    .line 40857
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->A0P(Ljava/lang/String;J)V

    .line 40858
    return-void

    .line 40859
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40860
    .local p1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 40861
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:J

    .line 40862
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v4

    .line 40863
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 40864
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 40865
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 40866
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2m(JILjava/lang/String;Z)V

    .line 40867
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 40868
    return-void

    .line 40869
    .end local p0    # "lastResponse":Ljava/lang/String;
    .end local p1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A0B:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cK;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cK;-><init>(Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/KB;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40870
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 0

    .line 40871
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:Lcom/facebook/ads/redexgen/X/KD;

    .line 40872
    return-void
.end method
