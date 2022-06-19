.class public final Lcom/facebook/ads/redexgen/X/56;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;
    .locals 0

    .line 12960
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object p0

    .line 12961
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/8F;->A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object p0

    .line 12962
    .local p1, "funnelModule":Lcom/facebook/ads/redexgen/X/0U;
    if-eqz p0, :cond_0

    .line 12963
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/0U;->A8y()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object p0

    return-object p0

    .line 12964
    :cond_0
    new-instance p0, Lcom/facebook/ads/redexgen/X/cL;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cL;-><init>()V

    return-object p0
.end method

.method public static A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 3

    .line 12965
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 12966
    return-object v0
.end method

.method public static A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 3

    .line 12967
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/cL;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/cL;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 3

    .line 12968
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 3

    .line 12969
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12970
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 12971
    return-object v0

    .line 12972
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/56;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/56;->A00:[Ljava/lang/String;

    const-string v1, "B"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J1bgC2YpAkuTguvKBul5HQJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 3

    .line 12973
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Dz;
    .locals 3

    .line 12974
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8F;->A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dz;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dz;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0U;)V

    .line 12975
    return-object v0
.end method

.method public static A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;
    .locals 2

    .line 12976
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A08()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    return-object v0
.end method

.method public static declared-synchronized A08()Lcom/facebook/ads/redexgen/X/8F;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/56;

    monitor-enter v1

    .line 12977
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "28H1kjICyCSP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QKFmg3qmSW84YfLR5DXewrEtWZ47Hzy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Em"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YyES7HR0UsWs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rGxFrAuyTsOha0QpVFZkpdTTHXBTZM0k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CeAnScf1I32vhT13KQ6XZJy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/56;->A00:[Ljava/lang/String;

    return-void
.end method
