.class public final Lcom/facebook/ads/redexgen/X/F1;
.super Lcom/facebook/ads/redexgen/X/SV;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1w;
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/1w;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Sa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/1v;

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 32062
    invoke-static {}, Lcom/facebook/ads/redexgen/X/F1;->A00()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/F1;->A04:Lcom/facebook/ads/redexgen/X/1w;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1v;)V
    .locals 2

    .line 32063
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/F1;->A04:Lcom/facebook/ads/redexgen/X/1w;

    .line 32064
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/1w;->A4N(Lcom/facebook/ads/redexgen/X/1v;)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v0

    .line 32065
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SV;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1y;)V

    .line 32066
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 32067
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32068
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Wdifh5HSN4RyvogFUrIVqQJQULlKdEei"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S34yOHPbjBOZXrhEKXqsFwPvtnd1qciy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vu9eRI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x0OqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VYF0eZRg0jpnLcLhIoRoBnoO3djZf6SI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "33GTCt01Ki3rQT8tpwoWMPFpMqFvVQrj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pa13jV0ykdfTm6Oo414mEZE7qu5xzGka"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tj8XsVszyFe6dIsjKXzcwTwgC3z6jHVp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F1;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 5

    .line 32069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_0

    .line 32070
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0A()V

    .line 32071
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v3, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v1, Lcom/facebook/ads/redexgen/X/F1;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F1;->A03:[Ljava/lang/String;

    const-string v1, "bjBCaQy28rNQq0pISHtZZouKJ3cbndZJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/1s;->ADg(Lcom/facebook/ads/redexgen/X/1r;)V

    .line 32072
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()V
    .locals 3

    .line 32073
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sa;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 32074
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 32075
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A0A()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A06()Ljava/lang/String;

    move-result-object v0

    .line 32076
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0B(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 32077
    return-void
.end method

.method public final A08(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/InterstitialAd;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32078
    .local p3, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32079
    return-void

    .line 32080
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 32081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_1

    .line 32082
    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Sa;->A0B(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 32083
    return-void

    .line 32084
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/1v;->A0J(Ljava/util/EnumSet;)V

    .line 32085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/1v;->A0G(Ljava/lang/String;)V

    .line 32086
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F1;->A07()V

    .line 32087
    return-void
.end method

.method public final A09()Z
    .locals 6

    .line 32088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_0

    .line 32089
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0C()Z

    move-result v0

    return v0

    .line 32090
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 32091
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LZ;->A00()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A00()J

    move-result-wide v0

    cmp-long v3, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/F1;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/F1;->A03:[Ljava/lang/String;

    const-string v1, "spPOKGUnJm6foAMMjUQWH3rPbfiGZlB3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 32092
    :goto_0
    return v0

    .line 32093
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0A()Z
    .locals 2

    .line 32094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_0

    .line 32095
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0D()Z

    move-result v0

    return v0

    .line 32096
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5W()Lcom/facebook/ads/redexgen/X/1r;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A06:Lcom/facebook/ads/redexgen/X/1r;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 4

    .line 32097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5H()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 32098
    return v3

    .line 32099
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 32100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    if-eqz v0, :cond_1

    .line 32101
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0E()Z

    move-result v0

    return v0

    .line 32102
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F1;->A01:Lcom/facebook/ads/redexgen/X/1v;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sa;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    .line 32103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F1;->A00:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0E()Z

    .line 32104
    return v3
.end method
