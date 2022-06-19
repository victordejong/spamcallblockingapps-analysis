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

.field public A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public A04:Lcom/facebook/ads/redexgen/X/JV;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/AN;

.field public A06:Z

.field public A07:Z

.field public A08:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/L6;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KZ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KN;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KA;

.field public final A0E:Lcom/facebook/ads/redexgen/X/K7;

.field public final A0F:Lcom/facebook/ads/redexgen/X/K0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 13078
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

    .line 13079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13080
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ef;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0D:Lcom/facebook/ads/redexgen/X/KA;

    .line 13081
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ec;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ec;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0C:Lcom/facebook/ads/redexgen/X/KN;

    .line 13082
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ea;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ea;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    .line 13083
    new-instance v0, Lcom/facebook/ads/redexgen/X/ES;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ES;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0E:Lcom/facebook/ads/redexgen/X/K7;

    .line 13084
    new-instance v0, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ER;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A09:Lcom/facebook/ads/redexgen/X/L6;

    .line 13085
    new-instance v0, Lcom/facebook/ads/redexgen/X/EQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EQ;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0F:Lcom/facebook/ads/redexgen/X/K0;

    .line 13086
    new-instance v0, Lcom/facebook/ads/redexgen/X/EP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EP;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0A:Lcom/facebook/ads/redexgen/X/KZ;

    .line 13087
    new-instance v0, Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/55;

    .line 13088
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5B;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 13089
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

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

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
        0x1ft
        0x38t
        0x20t
        0x37t
        0x3at
        0x3ft
        0x32t
        0x76t
        0x0t
        0x3ft
        0x33t
        0x21t
        0x76t
        0x35t
        0x39t
        0x38t
        0x25t
        0x22t
        0x24t
        0x23t
        0x35t
        0x22t
        0x39t
        0x24t
        0x76t
        0x26t
        0x37t
        0x24t
        0x37t
        0x3bt
        0x25t
        0x76t
        0x22t
        0x2ft
        0x26t
        0x33t
        0x78t
        0x7et
        0x48t
        0x48t
        0x46t
        0x44t
        0x43t
        0x4at
        0xdt
        0x40t
        0x58t
        0x5et
        0x59t
        0xdt
        0x4ft
        0x48t
        0xdt
        0x5dt
        0x5ft
        0x48t
        0x4et
        0x48t
        0x49t
        0x48t
        0x49t
        0xdt
        0x4ft
        0x54t
        0xdt
        0x4ct
        0xdt
        0x4et
        0x4ct
        0x41t
        0x41t
        0xdt
        0x59t
        0x42t
        0xdt
        0x48t
        0x43t
        0x4at
        0x4ct
        0x4at
        0x48t
        0x7et
        0x48t
        0x48t
        0x46t
        0x1t
        0xdt
        0x4ct
        0x43t
        0x49t
        0xdt
        0x4bt
        0x42t
        0x41t
        0x41t
        0x42t
        0x5at
        0x48t
        0x49t
        0xdt
        0x4ft
        0x54t
        0xdt
        0x4ct
        0xdt
        0x4et
        0x4ct
        0x41t
        0x41t
        0xdt
        0x59t
        0x42t
        0xdt
        0x49t
        0x44t
        0x5et
        0x48t
        0x43t
        0x4at
        0x4ct
        0x4at
        0x48t
        0x7et
        0x48t
        0x48t
        0x46t
        0x3t
        0x26t
        0x2bt
        0x31t
        0x27t
        0x2ct
        0x25t
        0x23t
        0x25t
        0x27t
        0x11t
        0x27t
        0x27t
        0x29t
        0x62t
        0x21t
        0x23t
        0x2et
        0x2et
        0x27t
        0x26t
        0x62t
        0x35t
        0x2bt
        0x36t
        0x2at
        0x2dt
        0x37t
        0x36t
        0x62t
        0x27t
        0x2ct
        0x25t
        0x23t
        0x25t
        0x27t
        0x11t
        0x27t
        0x27t
        0x29t
        0x6ct
        0x6ct
        0x67t
        0x6et
        0x68t
        0x6et
        0x6ct
        0x5at
        0x6ct
        0x6ct
        0x62t
        0x29t
        0x6at
        0x68t
        0x65t
        0x65t
        0x6ct
        0x6dt
        0x29t
        0x7et
        0x60t
        0x7dt
        0x61t
        0x66t
        0x7ct
        0x7dt
        0x29t
        0x6dt
        0x60t
        0x7at
        0x6ct
        0x67t
        0x6et
        0x68t
        0x6et
        0x6ct
        0x5at
        0x6ct
        0x6ct
        0x62t
        0x27t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Iqv8cTE9pbJV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CYHnjvYzZ1Zp8VPlfffkEyqwlctrpQBL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X8G7CA2UCcBTYjTzfkqICRpH9C9x48uG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IuynGJFHahmt0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YKtJTe5IUh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gPGIa6LKGgSGxdMiTt4aCF2OLs57juUg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T83"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DMaEshMk8cfihQw150z6d7U8VPkriS4i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 13090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 13091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AN;->setClientToken(Ljava/lang/String;)V

    .line 13092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AN;->setVideoMPD(Ljava/lang/String;)V

    .line 13093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->setVideoURI(Landroid/net/Uri;)V

    .line 13094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AN;->setVideoCTA(Ljava/lang/String;)V

    .line 13095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AN;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 13096
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 13097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 13098
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    .line 13099
    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/T6;->A1b(ZZ)V

    .line 13100
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    .line 13101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/JV;

    if-eqz v0, :cond_1

    .line 13102
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JV;->AES()V

    .line 13103
    :cond_1
    return-void
.end method

.method public final A05(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 13104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    .line 13105
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    .line 13106
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Wm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Wm;->A0E(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 13107
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/5C;

    .line 13108
    .local p1, "nativeAdApi":Lcom/facebook/ads/redexgen/X/5C;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13109
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1A()Ljava/lang/String;

    move-result-object v0

    .line 13110
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->setClientToken(Ljava/lang/String;)V

    .line 13111
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->setVideoMPD(Ljava/lang/String;)V

    .line 13112
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5C;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoURI(Ljava/lang/String;)V

    .line 13113
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0y()Lcom/facebook/ads/redexgen/X/c9;

    move-result-object v0

    .line 13114
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/c9;
    if-eqz v0, :cond_0

    .line 13115
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c9;->A0G()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoProgressReportIntervalMs(I)V

    .line 13116
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->setVideoCTA(Ljava/lang/String;)V

    .line 13117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AN;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 13118
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5C;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 13119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/JV;

    if-eqz v0, :cond_1

    .line 13120
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/JV;->ADp(Lcom/facebook/ads/NativeAd;)V

    .line 13121
    :cond_1
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/JC;)V
    .locals 1

    .line 13122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AN;->setAdEventManager(Lcom/facebook/ads/redexgen/X/JC;)V

    .line 13123
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/JV;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/JV;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13124
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 13125
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/MF;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/MF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AN;->setListener(Lcom/facebook/ads/redexgen/X/MF;)V

    .line 13127
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 13128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0T()V

    .line 13129
    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .locals 5

    .line 13130
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    if-nez v0, :cond_2

    .line 13131
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13132
    sget-object v4, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    const/16 v2, 0x7f

    const/16 v1, 0x28

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    const-string v1, "GDpgiWeynUT3r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Fcrjr5dO1W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13133
    :cond_1
    return-void

    .line 13134
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    .line 13135
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A07:Z

    if-eqz v0, :cond_3

    .line 13136
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13137
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/PJ;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PJ;

    move-result-object v1

    const/4 v0, 0x3

    .line 13138
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 13139
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    .line 13140
    return-void
.end method

.method public final engageSeek()V
    .locals 4

    .line 13141
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    if-eqz v0, :cond_1

    .line 13142
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13143
    sget-object v3, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    const/16 v2, 0xa7

    const/16 v1, 0x28

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13144
    :cond_0
    return-void

    .line 13145
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    .line 13146
    sget-object v1, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q6;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A07:Z

    .line 13147
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 13148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    .line 13149
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 1

    .line 13150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/55;

    return-object v0
.end method

.method public final getCurrentTimeMs()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 13151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 13152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoView()Landroid/view/View;
    .locals 1

    .line 13153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVolume()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 13154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVolume()F

    move-result v0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 7

    .line 13155
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 13156
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 13157
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v0, :cond_3

    .line 13158
    check-cast v3, Lcom/facebook/ads/redexgen/X/Wm;

    .line 13159
    .local p1, "adContextWrapper":Lcom/facebook/ads/redexgen/X/Wm;
    .restart local p1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/Wm;
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13160
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_4

    .line 13161
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 13162
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13163
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AN;->setEnableBackgroundVideo(Z)V

    .line 13164
    const/4 v3, -0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13165
    .local p2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Oj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/55;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/55;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13167
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 13168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13169
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0D:Lcom/facebook/ads/redexgen/X/KA;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0C:Lcom/facebook/ads/redexgen/X/KN;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0E:Lcom/facebook/ads/redexgen/X/K7;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A09:Lcom/facebook/ads/redexgen/X/L6;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0F:Lcom/facebook/ads/redexgen/X/K0;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A0A:Lcom/facebook/ads/redexgen/X/KZ;

    aput-object v0, v2, v1

    .line 13170
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 13171
    return-void

    .line 13172
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 13173
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13174
    goto :goto_1

    .line 13175
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13176
    goto :goto_1

    .line 13177
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13178
    goto :goto_1

    .line 13179
    .end local p1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/Wm;
    :cond_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    goto/16 :goto_0

    .line 13180
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pause(Z)V
    .locals 2

    .line 13181
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 13182
    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .locals 3

    .line 13183
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    .line 13184
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/PJ;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PJ;

    move-result-object v1

    .line 13185
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 13186
    return-void
.end method

.method public final seekTo(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 13187
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A06:Z

    if-nez v0, :cond_2

    .line 13188
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5B;->A0H:[Ljava/lang/String;

    const-string v1, "0wh1LQIbECU2tB2xLmMlqLa216eizCy3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 13189
    sget-object v3, Lcom/facebook/ads/redexgen/X/5B;->A0I:Ljava/lang/String;

    const/16 v2, 0x25

    const/16 v1, 0x5a

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13190
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13191
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->A0W(I)V

    .line 13192
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

    .line 13193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setVolume(F)V

    .line 13194
    return-void
.end method

.method public final shouldAutoplay()Z
    .locals 3

    .line 13195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A05:Lcom/facebook/ads/redexgen/X/AN;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_1

    .line 13196
    :cond_0
    return v2

    .line 13197
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
