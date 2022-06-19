.class public final Lcom/facebook/ads/redexgen/X/JG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PK;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Oj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/L6;

.field public final A07:Lcom/facebook/ads/redexgen/X/KS;

.field public final A08:Lcom/facebook/ads/redexgen/X/KN;

.field public final A09:Lcom/facebook/ads/redexgen/X/K9;

.field public final A0A:Lcom/facebook/ads/redexgen/X/K3;

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Pg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JG;->A04()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 39872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39873
    new-instance v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7r;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Lcom/facebook/ads/redexgen/X/KS;

    .line 39874
    new-instance v0, Lcom/facebook/ads/redexgen/X/7p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7p;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A06:Lcom/facebook/ads/redexgen/X/L6;

    .line 39875
    new-instance v0, Lcom/facebook/ads/redexgen/X/7o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7o;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A08:Lcom/facebook/ads/redexgen/X/KN;

    .line 39876
    new-instance v0, Lcom/facebook/ads/redexgen/X/7n;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7n;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Lcom/facebook/ads/redexgen/X/K9;

    .line 39877
    new-instance v0, Lcom/facebook/ads/redexgen/X/7m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7m;-><init>(Lcom/facebook/ads/redexgen/X/JG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/K3;

    .line 39878
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:Landroid/os/Handler;

    .line 39879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Ljava/util/List;

    .line 39880
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:I

    .line 39881
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:Z

    .line 39882
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JG;)I
    .locals 0

    .line 39883
    iget p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JG;)Landroid/os/Handler;
    .locals 0

    .line 39884
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JG;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 39885
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:Lcom/facebook/ads/redexgen/X/Oj;

    return-object p0
.end method

.method private A03()V
    .locals 5

    .line 39886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 39887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/JG;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0C:[Ljava/lang/String;

    const-string v1, "Y40dGjVL9Zscw9FMyiKWKh6z3JvZ0T5u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hO4VpYUkDoigTR3nwiJ8PFOPPoG0N1QG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Pg;

    .line 39888
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/Pg;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pg;->cancel()V

    .line 39889
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/Pg;
    goto :goto_0

    .line 39890
    :cond_1
    return-void
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ZSu0wXuDbQnaud22BC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QCmSLF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fQxhtf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E3sU0uCnWEnB3ZcSzOkvj4xNFgaNSXPe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ye0yKWwaCEsRuR61siA7kBVWrkv2bkox"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1q930HE08Ni0sTckStF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wfAs2pJjw0biCEJKLi3nGPcNksloIp8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZBBhRoR6L"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JG;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/JG;)V
    .locals 0

    .line 39891
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A03()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/JG;ZZ)V
    .locals 0

    .line 39892
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JG;->A07(ZZ)V

    return-void
.end method

.method private A07(ZZ)V
    .locals 2

    .line 39893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Pg;

    .line 39894
    .local p1, "animation":Lcom/facebook/ads/redexgen/X/Pg;
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pg;->A3L(ZZ)V

    .line 39895
    .end local p1    # "animation":Lcom/facebook/ads/redexgen/X/Pg;
    goto :goto_0

    .line 39896
    :cond_0
    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/JG;)Z
    .locals 0

    .line 39897
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/JG;)Z
    .locals 0

    .line 39898
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/JG;)Z
    .locals 0

    .line 39899
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JG;->A04:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/JG;Lcom/facebook/ads/redexgen/X/Pf;)Z
    .locals 0

    .line 39900
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JG;->A0E(Lcom/facebook/ads/redexgen/X/Pf;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/JG;Z)Z
    .locals 0

    .line 39901
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:Z

    return p1
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/JG;Z)Z
    .locals 0

    .line 39902
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A04:Z

    return p1
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Pf;)Z
    .locals 2

    .line 39903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Pg;

    .line 39904
    .local p1, "animation":Lcom/facebook/ads/redexgen/X/Pg;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pg;->A7I()Lcom/facebook/ads/redexgen/X/Pf;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 39905
    const/4 v0, 0x0

    return v0

    .line 39906
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0F()V
    .locals 1

    .line 39907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39908
    return-void
.end method

.method public final A0G()V
    .locals 2

    .line 39909
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:Z

    if-eqz v0, :cond_0

    .line 39910
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 39911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:Z

    .line 39912
    :cond_0
    return-void
.end method

.method public final A0H()V
    .locals 1

    .line 39913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A04:Z

    .line 39914
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A03:Z

    .line 39915
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/JG;->A07(ZZ)V

    .line 39916
    return-void
.end method

.method public final A0I(I)V
    .locals 0

    .line 39917
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A00:I

    .line 39918
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/Pg;)V
    .locals 1

    .line 39919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39920
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 39921
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A02:Z

    return v0
.end method

.method public final A8M(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 4

    .line 39922
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:Lcom/facebook/ads/redexgen/X/Oj;

    .line 39923
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/K3;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A08:Lcom/facebook/ads/redexgen/X/KN;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Lcom/facebook/ads/redexgen/X/K9;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A06:Lcom/facebook/ads/redexgen/X/L6;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 39924
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 39925
    return-void
.end method

.method public final AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 4

    .line 39926
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;->A03()V

    .line 39927
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A06:Lcom/facebook/ads/redexgen/X/L6;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A0A:Lcom/facebook/ads/redexgen/X/K3;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A08:Lcom/facebook/ads/redexgen/X/KN;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A09:Lcom/facebook/ads/redexgen/X/K9;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JG;->A07:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 39928
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 39929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JG;->A01:Lcom/facebook/ads/redexgen/X/Oj;

    .line 39930
    return-void
.end method
