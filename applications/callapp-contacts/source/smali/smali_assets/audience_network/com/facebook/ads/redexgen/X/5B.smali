.class public final Lcom/facebook/ads/redexgen/X/5B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public A02:Lcom/facebook/ads/redexgen/X/55;

.field public A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public A04:Lcom/facebook/ads/redexgen/X/JT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/At;

.field public A06:Z

.field public A07:Z

.field public A08:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/Le;

.field public final A0A:Lcom/facebook/ads/redexgen/X/L4;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KW;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KL;

.field public final A0E:Lcom/facebook/ads/redexgen/X/K7;

.field public final A0F:Lcom/facebook/ads/redexgen/X/K1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 12986
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5B;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5B;->A02()V

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12988
    new-instance v0, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Em;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0D:Lcom/facebook/ads/redexgen/X/KL;

    .line 12989
    new-instance v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0C:Lcom/facebook/ads/redexgen/X/KQ;

    .line 12990
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0B:Lcom/facebook/ads/redexgen/X/KW;

    .line 12991
    new-instance v0, Lcom/facebook/ads/redexgen/X/Eh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0E:Lcom/facebook/ads/redexgen/X/K7;

    .line 12992
    new-instance v0, Lcom/facebook/ads/redexgen/X/Eg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A09:Lcom/facebook/ads/redexgen/X/Le;

    .line 12993
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ef;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0F:Lcom/facebook/ads/redexgen/X/K1;

    .line 12994
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ec;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ec;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    .line 12995
    new-instance v0, Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/55;

    .line 12996
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5B;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 12997
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5B;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xcf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5B;->A0G:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        0x7t
        0xft
        -0x6t
        0x5t
        0x2t
        -0x3t
        -0x47t
        -0x11t
        0x2t
        -0x2t
        0x10t
        -0x47t
        -0x4t
        0x8t
        0x7t
        0xct
        0xdt
        0xbt
        0xet
        -0x4t
        0xdt
        0x8t
        0xbt
        -0x47t
        0x9t
        -0x6t
        0xbt
        -0x6t
        0x6t
        0xct
        -0x47t
        0xdt
        0x12t
        0x9t
        -0x2t
        -0x39t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0xct
        -0x7t
        -0xet
        -0x55t
        -0x8t
        0x0t
        -0x2t
        -0x1t
        -0x55t
        -0x13t
        -0x10t
        -0x55t
        -0x5t
        -0x3t
        -0x10t
        -0x12t
        -0x10t
        -0x11t
        -0x10t
        -0x11t
        -0x55t
        -0x13t
        0x4t
        -0x55t
        -0x14t
        -0x55t
        -0x12t
        -0x14t
        -0x9t
        -0x9t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x10t
        -0x7t
        -0xet
        -0x14t
        -0xet
        -0x10t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0x49t
        -0x55t
        -0x14t
        -0x7t
        -0x11t
        -0x55t
        -0xft
        -0x6t
        -0x9t
        -0x9t
        -0x6t
        0x2t
        -0x10t
        -0x11t
        -0x55t
        -0x13t
        0x4t
        -0x55t
        -0x14t
        -0x55t
        -0x12t
        -0x14t
        -0x9t
        -0x9t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x11t
        -0xct
        -0x2t
        -0x10t
        -0x7t
        -0xet
        -0x14t
        -0xet
        -0x10t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0x47t
        -0x1bt
        -0x16t
        -0xct
        -0x1at
        -0x11t
        -0x18t
        -0x1et
        -0x18t
        -0x1at
        -0x2ct
        -0x1at
        -0x1at
        -0x14t
        -0x5ft
        -0x1ct
        -0x1et
        -0x13t
        -0x13t
        -0x1at
        -0x1bt
        -0x5ft
        -0x8t
        -0x16t
        -0xbt
        -0x17t
        -0x10t
        -0xat
        -0xbt
        -0x5ft
        -0x1at
        -0x11t
        -0x18t
        -0x1et
        -0x18t
        -0x1at
        -0x2ct
        -0x1at
        -0x1at
        -0x14t
        -0x51t
        0x4at
        0x53t
        0x4ct
        0x46t
        0x4ct
        0x4at
        0x38t
        0x4at
        0x4at
        0x50t
        0x5t
        0x48t
        0x46t
        0x51t
        0x51t
        0x4at
        0x49t
        0x5t
        0x5ct
        0x4et
        0x59t
        0x4dt
        0x54t
        0x5at
        0x59t
        0x5t
        0x49t
        0x4et
        0x58t
        0x4at
        0x53t
        0x4ct
        0x46t
        0x4ct
        0x4at
        0x38t
        0x4at
        0x4at
        0x50t
        0x13t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ds1OlE9QLNwB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aoTFD1mdY9qS2iG1b6xBMIzf9BXXSrYm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "osndMvDCAJCV1YpU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nBivoQhUG9UhcV9idWewaYAmGQw5UcJS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JB025Vwse6xgHKaH4PdlPsgjNbTaZijW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Rr8Hg5ZtJOltbAd8rryGswWrdJNm13cq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EfdUYpEvlCzoAxPYZB8PQhxNy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DXUiKhR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 12998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 12999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->setClientToken(Ljava/lang/String;)V

    .line 13000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->setVideoMPD(Ljava/lang/String;)V

    .line 13001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->setVideoURI(Landroid/net/Uri;)V

    .line 13002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->setVideoCTA(Ljava/lang/String;)V

    .line 13003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/At;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 13004
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 13005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 13006
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    .line 13007
    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/cD;->A1b(ZZ)V

    .line 13008
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    .line 13009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/JT;

    if-eqz v0, :cond_1

    .line 13010
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JT;->AEQ()V

    .line 13011
    :cond_1
    return-void
.end method

.method public final A05(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 13012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    .line 13013
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    .line 13014
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XJ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/XJ;->A0D(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 13015
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/5C;

    .line 13016
    .local p1, "nativeAdApi":Lcom/facebook/ads/redexgen/X/5C;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13017
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1A()Ljava/lang/String;

    move-result-object v0

    .line 13018
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->setClientToken(Ljava/lang/String;)V

    .line 13019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->setVideoMPD(Ljava/lang/String;)V

    .line 13020
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5C;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVideoURI(Ljava/lang/String;)V

    .line 13021
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0y()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    .line 13022
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/Rp;
    if-eqz v0, :cond_0

    .line 13023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A0G()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVideoProgressReportIntervalMs(I)V

    .line 13024
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->setVideoCTA(Ljava/lang/String;)V

    .line 13025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/At;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 13026
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5C;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 13027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/JT;

    if-eqz v0, :cond_1

    .line 13028
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/JT;->ADo(Lcom/facebook/ads/NativeAd;)V

    .line 13029
    :cond_1
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/JC;)V
    .locals 1

    .line 13030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/At;->setAdEventManager(Lcom/facebook/ads/redexgen/X/JC;)V

    .line 13031
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/JT;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/JT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13032
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/JT;

    .line 13033
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/MH;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/MH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/At;->setListener(Lcom/facebook/ads/redexgen/X/MH;)V

    .line 13035
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 13036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0S()V

    .line 13037
    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .locals 4

    .line 13038
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    if-nez v0, :cond_2

    .line 13039
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    const-string v1, "WtsbSHtQErqq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "XLMSbaKAMNULMDv3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 13040
    sget-object v3, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    const/16 v2, 0x7f

    const/16 v1, 0x28

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13041
    :cond_1
    return-void

    .line 13042
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    .line 13043
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A07:Z

    if-eqz v0, :cond_3

    .line 13044
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13045
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/PO;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PO;

    move-result-object v1

    const/4 v0, 0x3

    .line 13046
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 13047
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    .line 13048
    return-void
.end method

.method public final engageSeek()V
    .locals 4

    .line 13049
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    if-eqz v0, :cond_1

    .line 13050
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13051
    sget-object v3, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    const/16 v2, 0xa7

    const/16 v1, 0x28

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13052
    :cond_0
    return-void

    .line 13053
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    .line 13054
    sget-object v1, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QB;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A07:Z

    .line 13055
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 13056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    .line 13057
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 1

    .line 13058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/55;

    return-object v0
.end method

.method public final getCurrentTimeMs()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 13059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 13060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoView()Landroid/view/View;
    .locals 1

    .line 13061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVolume()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 13062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVolume()F

    move-result v0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 7

    .line 13063
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 13064
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 13065
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/XJ;

    if-eqz v0, :cond_3

    .line 13066
    check-cast v3, Lcom/facebook/ads/redexgen/X/XJ;

    .line 13067
    .local p1, "adContextWrapper":Lcom/facebook/ads/redexgen/X/XJ;
    .restart local p1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/XJ;
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 13068
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_4

    .line 13069
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 13070
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/At;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13071
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/At;->setEnableBackgroundVideo(Z)V

    .line 13072
    const/4 v3, -0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13073
    .local p2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/55;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:Lcom/facebook/ads/redexgen/X/LF;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LF;)V

    .line 13076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13077
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0D:Lcom/facebook/ads/redexgen/X/KL;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0C:Lcom/facebook/ads/redexgen/X/KQ;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0B:Lcom/facebook/ads/redexgen/X/KW;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0E:Lcom/facebook/ads/redexgen/X/K7;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A09:Lcom/facebook/ads/redexgen/X/Le;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0F:Lcom/facebook/ads/redexgen/X/K1;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0A:Lcom/facebook/ads/redexgen/X/L4;

    aput-object v0, v2, v1

    .line 13078
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 13079
    return-void

    .line 13080
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 13081
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/At;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13082
    goto :goto_1

    .line 13083
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/At;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13084
    goto :goto_1

    .line 13085
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/At;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13086
    goto :goto_1

    .line 13087
    .end local p1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/XJ;
    :cond_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    goto/16 :goto_0

    .line 13088
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pause(Z)V
    .locals 2

    .line 13089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 13090
    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .locals 3

    .line 13091
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    .line 13092
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/PO;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PO;

    move-result-object v1

    .line 13093
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 13094
    return-void
.end method

.method public final seekTo(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 13095
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    if-nez v0, :cond_1

    .line 13096
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13097
    sget-object v3, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    const/16 v2, 0x25

    const/16 v1, 0x5a

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13098
    :cond_0
    return-void

    .line 13099
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A0V(I)V

    .line 13100
    return-void
.end method

.method public final setVolume(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 13101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setVolume(F)V

    .line 13102
    return-void
.end method

.method public final shouldAutoplay()Z
    .locals 3

    .line 13103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/At;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    .line 13104
    :cond_0
    return v2

    .line 13105
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method
