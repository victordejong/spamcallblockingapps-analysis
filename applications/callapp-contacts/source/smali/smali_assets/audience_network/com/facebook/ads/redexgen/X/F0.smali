.class public final Lcom/facebook/ads/redexgen/X/F0;
.super Lcom/facebook/ads/redexgen/X/SV;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Sd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/1z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1z;)V
    .locals 2

    .line 32017
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/F0;->A00(Lcom/facebook/ads/redexgen/X/1z;)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SV;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1y;)V

    .line 32018
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    .line 32019
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/1z;)Lcom/facebook/ads/redexgen/X/1y;
    .locals 1

    .line 32020
    new-instance v0, Lcom/facebook/ads/redexgen/X/Si;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Si;-><init>(Lcom/facebook/ads/redexgen/X/1z;)V

    return-object v0
.end method


# virtual methods
.method public final A05()V
    .locals 2

    .line 32021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_0

    .line 32022
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0D()V

    .line 32023
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1s;->ADg(Lcom/facebook/ads/redexgen/X/1r;)V

    .line 32024
    return-void
.end method

.method public final A07()V
    .locals 4

    .line 32025
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/Sd;-><init>(Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    .line 32026
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1z;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1z;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0F(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 32027
    return-void
.end method

.method public final A08(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 32028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    .line 32029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_0

    .line 32030
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sd;->A0E(Lcom/facebook/ads/RewardData;)V

    .line 32031
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32033
    return-void

    .line 32034
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1z;->A02(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 32035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_1

    .line 32036
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Sd;->A0F(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 32037
    return-void

    .line 32038
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/1z;->A05:Ljava/lang/String;

    .line 32039
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/1z;->A02:Lcom/facebook/ads/AdExperienceType;

    .line 32040
    iput-boolean p4, v0, Lcom/facebook/ads/redexgen/X/1z;->A08:Z

    .line 32041
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F0;->A07()V

    .line 32042
    return-void
.end method

.method public final A0A()Z
    .locals 5

    .line 32043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_0

    .line 32044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0G()Z

    move-result v0

    return v0

    .line 32045
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 32046
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LZ;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 32047
    :goto_0
    return v0

    .line 32048
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 2

    .line 32049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_0

    .line 32050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0H()Z

    move-result v0

    return v0

    .line 32051
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

.method public final A0C(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    .line 32052
    check-cast p2, Lcom/facebook/ads/redexgen/X/5P;

    .line 32053
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5P;->A00()I

    move-result v4

    .line 32054
    .local p0, "appOrientation":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5H()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 32055
    return v3

    .line 32056
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1z;->A02(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 32057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_1

    .line 32058
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Sd;->A0I(I)Z

    move-result v0

    return v0

    .line 32059
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F0;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/Sd;-><init>(Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    .line 32060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F0;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Sd;->A0I(I)Z

    .line 32061
    return v3
.end method
