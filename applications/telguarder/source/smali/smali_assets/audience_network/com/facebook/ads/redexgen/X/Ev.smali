.class public final Lcom/facebook/ads/redexgen/X/Ev;
.super Lcom/facebook/ads/redexgen/X/bV;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/bN;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/1z;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ev;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1z;)V
    .locals 2

    .line 32039
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ev;->A00(Lcom/facebook/ads/redexgen/X/1z;)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1y;)V

    .line 32040
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    .line 32041
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/1z;)Lcom/facebook/ads/redexgen/X/1y;
    .locals 1

    .line 32042
    new-instance v0, Lcom/facebook/ads/redexgen/X/bI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bI;-><init>(Lcom/facebook/ads/redexgen/X/1z;)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eAQfPHHoyWilLfBxOFaJj1G06pGOxPq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "94FVrmFRVghPmyms9ar5cFWRdDurlkVe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0NqQX4CUu3LD8PHaDMvmRAbh4clEtoM7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DpSRaNejvtQ52XA7I6oeLqqk6ldlwRKU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AVeirdKHq7BiC91JmOFjEM59wAwHTkmS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1THCMBeh6DIPctxeAaB65wntvUu4aFha"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yEsJBiLTEnojRHdtAiiv5fZXbmAhiMSc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YuG6RWvr5fcVmyx3SnaQUPOafyGz2fG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ev;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 32043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    if-eqz v0, :cond_0

    .line 32044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A0C()V

    .line 32045
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A03:Lcom/facebook/ads/redexgen/X/1r;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1s;->ADh(Lcom/facebook/ads/redexgen/X/1r;)V

    .line 32046
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 32047
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bN;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/bN;-><init>(Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    .line 32048
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/1z;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1z;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A0E(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 32049
    return-void
.end method

.method public final A09(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 32050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    .line 32051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    if-eqz v0, :cond_0

    .line 32052
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bN;->A0D(Lcom/facebook/ads/RewardData;)V

    .line 32053
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32055
    return-void

    .line 32056
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1z;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 32057
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ev;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ev;->A02:[Ljava/lang/String;

    const-string v1, "HmvSaplq4AbKAOMdMIhEElrOFgimW3KD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "09uOmClVjazEttrl3xKXwRfWiNCJF69n"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 32058
    invoke-virtual {v3, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/bN;->A0E(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 32059
    return-void

    .line 32060
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/1z;->A05:Ljava/lang/String;

    .line 32061
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/1z;->A02:Lcom/facebook/ads/AdExperienceType;

    .line 32062
    iput-boolean p4, v0, Lcom/facebook/ads/redexgen/X/1z;->A08:Z

    .line 32063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ev;->A08()V

    .line 32064
    return-void
.end method

.method public final A0B()Z
    .locals 5

    .line 32065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    if-eqz v0, :cond_0

    .line 32066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A0F()Z

    move-result v0

    return v0

    .line 32067
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 32068
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lb;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 32069
    :goto_0
    return v0

    .line 32070
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C()Z
    .locals 2

    .line 32071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    if-eqz v0, :cond_0

    .line 32072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A0G()Z

    move-result v0

    return v0

    .line 32073
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

.method public final A0D(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    .line 32074
    check-cast p2, Lcom/facebook/ads/redexgen/X/5P;

    .line 32075
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5P;->A00()I

    move-result v4

    .line 32076
    .local p0, "appOrientation":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5F()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 32077
    return v3

    .line 32078
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1z;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 32079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    if-eqz v0, :cond_1

    .line 32080
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bN;->A0H(I)Z

    move-result v0

    return v0

    .line 32081
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bN;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/bN;-><init>(Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    .line 32082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bN;->A0H(I)Z

    .line 32083
    return v3
.end method
