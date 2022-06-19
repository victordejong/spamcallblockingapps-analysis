.class public final Lcom/facebook/ads/redexgen/X/Ew;
.super Lcom/facebook/ads/redexgen/X/bV;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1w;
    }
.end annotation


# static fields
.field public static final A03:Lcom/facebook/ads/redexgen/X/1w;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/bQ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/1v;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 32084
    new-instance v0, Lcom/facebook/ads/redexgen/X/bL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ew;->A03:Lcom/facebook/ads/redexgen/X/1w;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1v;)V
    .locals 2

    .line 32085
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ew;->A03:Lcom/facebook/ads/redexgen/X/1w;

    .line 32086
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/1w;->A4K(Lcom/facebook/ads/redexgen/X/1v;)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v0

    .line 32087
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1y;)V

    .line 32088
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 32089
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32090
    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 32091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    if-eqz v0, :cond_0

    .line 32092
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0A()V

    .line 32093
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A03:Lcom/facebook/ads/redexgen/X/1r;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1s;->ADh(Lcom/facebook/ads/redexgen/X/1r;)V

    .line 32094
    return-void
.end method

.method public final A08()V
    .locals 3

    .line 32095
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bQ;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/bQ;-><init>(Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    .line 32096
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    .line 32097
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A0A()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A06()Ljava/lang/String;

    move-result-object v0

    .line 32098
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0B(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 32099
    return-void
.end method

.method public final A09(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V
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

    .line 32100
    .local p3, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32101
    return-void

    .line 32102
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 32103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    if-eqz v0, :cond_1

    .line 32104
    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/bQ;->A0B(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 32105
    return-void

    .line 32106
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/1v;->A0J(Ljava/util/EnumSet;)V

    .line 32107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/1v;->A0G(Ljava/lang/String;)V

    .line 32108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ew;->A08()V

    .line 32109
    return-void
.end method

.method public final A0A()Z
    .locals 5

    .line 32110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    if-eqz v0, :cond_0

    .line 32111
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0C()Z

    move-result v0

    return v0

    .line 32112
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 32113
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lb;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A00()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 32114
    :goto_0
    return v0

    .line 32115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 2

    .line 32116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    if-eqz v0, :cond_0

    .line 32117
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0D()Z

    move-result v0

    return v0

    .line 32118
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5W()Lcom/facebook/ads/redexgen/X/1r;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A05:Lcom/facebook/ads/redexgen/X/1r;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 4

    .line 32119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5F()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 32120
    return v3

    .line 32121
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1v;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 32122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    if-eqz v0, :cond_1

    .line 32123
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0E()Z

    move-result v0

    return v0

    .line 32124
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/1v;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bQ;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/bQ;-><init>(Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    .line 32125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A0E()Z

    .line 32126
    return v3
.end method
