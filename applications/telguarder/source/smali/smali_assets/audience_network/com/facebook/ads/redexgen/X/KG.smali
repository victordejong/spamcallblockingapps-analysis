.class public final Lcom/facebook/ads/redexgen/X/KG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KF;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static final A09:Lcom/facebook/ads/redexgen/X/Lm;

.field public static final A0A:Ljava/util/concurrent/Executor;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/KD;

.field public A02:Lcom/facebook/ads/redexgen/X/KF;

.field public A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A05:Lcom/facebook/ads/redexgen/X/KH;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40795
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KG;->A0C()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lm;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KG;->A09:Lcom/facebook/ads/redexgen/X/Lm;

    .line 40796
    sget-object v0, Lcom/facebook/ads/redexgen/X/KG;->A09:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KG;->A0A:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 40797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40798
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40800
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KH;->A00()Lcom/facebook/ads/redexgen/X/KH;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A05:Lcom/facebook/ads/redexgen/X/KH;

    .line 40801
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KK;->A00()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A06:Ljava/lang/String;

    .line 40802
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KG;)J
    .locals 1

    .line 40803
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 40804
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/KD;
    .locals 0

    .line 40805
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:Lcom/facebook/ads/redexgen/X/KD;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/KH;
    .locals 0

    .line 40806
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KG;->A05:Lcom/facebook/ads/redexgen/X/KH;

    return-object p0
.end method

.method private A04(J)Lcom/facebook/ads/redexgen/X/QG;
    .locals 1

    .line 40807
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/KG;J)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/KG;J)Lcom/facebook/ads/redexgen/X/QG;
    .locals 0

    .line 40808
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KG;->A04(J)Lcom/facebook/ads/redexgen/X/QG;

    move-result-object p0

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KG;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/KG;)Ljava/lang/String;
    .locals 0

    .line 40809
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KG;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/KG;)Ljava/lang/String;
    .locals 0

    .line 40810
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/KG;)Ljava/util/Map;
    .locals 0

    .line 40811
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/KG;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 40812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Ljava/util/Map;

    return-object p1
.end method

.method private A0B()V
    .locals 6

    .line 40813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QX;->A0C(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40814
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KG;
    :cond_0
    return-void

    .line 40815
    :cond_1
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 40816
    .local p0, "ex":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 40817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40818
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A1g:I

    .line 40819
    const/16 v2, 0x6b

    const/4 v1, 0x7

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40820
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x7c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KG;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x6ft
        0x72t
        0x6at
        0x6dt
        0x72t
        0x70t
        0x71t
        -0x65t
        -0x20t
        -0xft
        -0x11t
        -0x15t
        -0x13t
        -0x19t
        -0x10t
        -0x13t
        -0x17t
        -0xet
        -0x8t
        0x3t
        -0xat
        -0x17t
        -0xbt
        -0x7t
        -0x17t
        -0x9t
        -0x8t
        0x3t
        -0x13t
        -0x18t
        -0x7et
        -0x54t
        0x59t
        -0x75t
        -0x79t
        0x73t
        0x59t
        -0x3et
        -0x3dt
        -0x6ct
        -0x46t
        -0x43t
        -0x40t
        -0x40t
        -0x6ct
        -0x1at
        -0x27t
        -0x29t
        -0x27t
        -0x23t
        -0x16t
        -0x27t
        -0x28t
        -0x27t
        -0x6t
        -0x55t
        -0x2ft
        -0xct
        -0x9t
        -0x9t
        -0x55t
        -0x10t
        -0x3t
        -0x3t
        -0x6t
        -0x3t
        -0x55t
        -0x12t
        -0x6t
        -0x11t
        -0x10t
        -0x55t
        -0x1at
        -0x50t
        -0x2t
        -0x18t
        -0x55t
        -0x50t
        -0x2t
        -0x3at
        -0x19t
        -0x68t
        -0x1at
        -0x23t
        -0x14t
        -0x11t
        -0x19t
        -0x16t
        -0x1dt
        -0x68t
        -0x25t
        -0x19t
        -0x1at
        -0x1at
        -0x23t
        -0x25t
        -0x14t
        -0x1ft
        -0x19t
        -0x1at
        -0x40t
        -0x42t
        -0x39t
        -0x42t
        -0x35t
        -0x3et
        -0x44t
        0xat
        0x1t
        0x10t
        0x13t
        0xbt
        0xet
        0x7t
        -0x25t
        -0x24t
        -0x4dt
        -0x2at
        -0x27t
        -0x27t
        -0x4bt
        -0x24t
        -0x24t
        -0x28t
    .end array-data
.end method

.method private A0D(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0x72

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40821
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 40822
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x35

    const/16 v1, 0x1a

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40823
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/K1;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 40824
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 1

    .line 40825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A02:Lcom/facebook/ads/redexgen/X/KF;

    if-eqz v0, :cond_0

    .line 40826
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KF;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 40827
    :cond_0
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 1

    .line 40828
    new-instance v0, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V

    .line 40829
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 0

    .line 40830
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KG;->A0E(Lcom/facebook/ads/redexgen/X/Jn;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 0

    .line 40831
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KG;->A0F(Lcom/facebook/ads/redexgen/X/Jn;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/St;)V
    .locals 0

    .line 40832
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KG;->A0L(Lcom/facebook/ads/redexgen/X/St;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/KG;Ljava/lang/String;J)V
    .locals 0

    .line 40833
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KG;->A0N(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/KG;Ljava/lang/String;J)V
    .locals 0

    .line 40834
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KG;->A0O(Ljava/lang/String;J)V

    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 1

    .line 40835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A02:Lcom/facebook/ads/redexgen/X/KF;

    if-eqz v0, :cond_0

    .line 40836
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KF;->ABk(Lcom/facebook/ads/redexgen/X/St;)V

    .line 40837
    :cond_0
    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 1

    .line 40838
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sv;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V

    .line 40839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40840
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WN;->A0D()Lcom/facebook/ads/redexgen/X/Qu;

    move-result-object v0

    .line 40841
    .local p0, "syncModule":Lcom/facebook/ads/redexgen/X/Qu;
    if-eqz v0, :cond_0

    .line 40842
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qu;->A5O()V

    .line 40843
    .end local p0    # "syncModule":Lcom/facebook/ads/redexgen/X/Qu;
    :cond_0
    return-void
.end method

.method private A0N(Ljava/lang/String;J)V
    .locals 12

    .line 40844
    :try_start_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/KG;->A05:Lcom/facebook/ads/redexgen/X/KH;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/KG;->A07:Ljava/lang/String;

    .line 40845
    move-wide v9, p2

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/KH;->A06(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/KJ;

    move-result-object v5

    .line 40846
    .local p0, "serverResponse":Lcom/facebook/ads/redexgen/X/KJ;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KJ;->A00()Lcom/facebook/ads/redexgen/X/8w;

    move-result-object v3

    .line 40847
    .local v8, "placement":Lcom/facebook/ads/redexgen/X/8w;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/5r;->A06(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    .line 40848
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 40849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0O(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v1

    .line 40850
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1y(Ljava/lang/String;)V

    .line 40851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 40852
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40853
    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    .line 40854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/28;->A0P(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    .line 40855
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 40856
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0B()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:Lcom/facebook/ads/redexgen/X/KD;

    .line 40857
    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KC;->A05(JLcom/facebook/ads/redexgen/X/KD;)V

    .line 40858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KG;->A0A:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lx;->A01(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8w;)V

    .line 40859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40860
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LE;->A03()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 40861
    .local v6, "reactNativeException":Lcom/facebook/ads/redexgen/X/8f;
    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/8f;->A04(I)V

    .line 40862
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/8f;->A08(Z)V

    .line 40863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40864
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    const/16 v2, 0x64

    const/4 v1, 0x7

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1G:I

    .line 40865
    invoke-interface {v6, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/8d;->A8v(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40866
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    .end local v6    # "reactNativeException":Lcom/facebook/ads/redexgen/X/8f;
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A00:[I

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KJ;->A01()Lcom/facebook/ads/redexgen/X/KI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KI;->ordinal()I

    move-result v0

    aget v1, v1, v0

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 40867
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40868
    .local v9, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40870
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v5

    .line 40871
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40872
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40873
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40874
    invoke-static {v2, v8}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0F(Lcom/facebook/ads/redexgen/X/Jn;)V

    goto/16 :goto_2

    .line 40875
    .end local v9    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    check-cast v5, Lcom/facebook/ads/redexgen/X/Ss;

    .line 40876
    .local v9, "serverResponseError":Lcom/facebook/ads/redexgen/X/Ss;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ss;->A04()Ljava/lang/String;

    move-result-object v7

    .line 40877
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ss;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40878
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 40879
    .local v6, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ss;->A03()I

    move-result v0

    invoke-direct {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/KG;->A0D(ILjava/lang/String;)V

    .line 40880
    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v8

    .line 40881
    .local v7, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40882
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40883
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v4

    .line 40884
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 40885
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 40886
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40887
    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0F(Lcom/facebook/ads/redexgen/X/Jn;)V

    goto/16 :goto_2

    .line 40888
    .end local v9    # "serverResponseError":Lcom/facebook/ads/redexgen/X/Ss;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v6    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v7    # "finalErrMessage":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    check-cast v4, Lcom/facebook/ads/redexgen/X/St;

    .line 40889
    .local v9, "ads":Lcom/facebook/ads/redexgen/X/St;
    if-eqz v3, :cond_5

    .line 40890
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 40891
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:Lcom/facebook/ads/redexgen/X/KD;

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/KC;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KD;)V

    .line 40893
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 40894
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KG;->A03:Ljava/util/Map;

    const/16 v2, 0xd

    const/16 v1, 0x11

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40895
    .local v6, "clientChallenge":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KJ;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40896
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40897
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40898
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KJ;->A02()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/J2;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/J2;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Ljava/lang/String;)V

    .line 40899
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J2;->A0D()V

    .line 40900
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    .end local v6    # "clientChallenge":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2l(J)V

    .line 40901
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/KG;->A0M(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_2

    .line 40902
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40903
    :catch_0
    move-exception v0

    .line 40904
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 40905
    .local v8, "errorMessage":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40906
    .local v9, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40907
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40908
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v4

    .line 40909
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 40910
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 40911
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40912
    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0F(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 40913
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_2
    return-void
.end method

.method private A0O(Ljava/lang/String;J)V
    .locals 2

    .line 40914
    sget-object v1, Lcom/facebook/ads/redexgen/X/KG;->A0A:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/KG;Ljava/lang/String;J)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40915
    return-void
.end method


# virtual methods
.method public final A0P(Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 10

    .line 40916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LY;->A07:Lcom/facebook/ads/redexgen/X/LY;

    if-ne v1, v0, :cond_0

    .line 40918
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KG;->A0B()V

    .line 40919
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40920
    .local p0, "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/16 v2, 0x4f

    const/16 v1, 0x15

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A06(III)Ljava/lang/String;

    move-result-object v8

    .line 40921
    .local v3, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40922
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40923
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v5

    .line 40924
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40925
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40926
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40927
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0F(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 40928
    return-void

    .line 40929
    .end local p0    # "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KG;->A01:Lcom/facebook/ads/redexgen/X/KD;

    .line 40930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A0C(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 40931
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KC;->A08(Lcom/facebook/ads/redexgen/X/KD;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40932
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Lcom/facebook/ads/redexgen/X/KG;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40933
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KC;->A02(Lcom/facebook/ads/redexgen/X/KD;)Ljava/lang/String;

    move-result-object v2

    .line 40934
    .local p0, "lastResponse":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 40935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEX()V

    .line 40936
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KG;->A0O(Ljava/lang/String;J)V

    .line 40937
    return-void

    .line 40938
    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40939
    .local p1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 40940
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:J

    .line 40941
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v4

    .line 40942
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 40943
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 40944
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 40945
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40946
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0F(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 40947
    return-void

    .line 40948
    .end local p0    # "lastResponse":Ljava/lang/String;
    .end local p1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/KG;->A0A:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sy;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Sy;-><init>(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/KD;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40949
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/KF;)V
    .locals 0

    .line 40950
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KG;->A02:Lcom/facebook/ads/redexgen/X/KF;

    .line 40951
    return-void
.end method
