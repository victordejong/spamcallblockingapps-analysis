.class public abstract Lcom/facebook/ads/redexgen/X/bh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KF;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardcodedIPAddressUse"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Landroid/os/Handler;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/0s;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/KG;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/0n;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/8w;

.field public A05:Lcom/facebook/ads/redexgen/X/KD;

.field public A06:Lcom/facebook/ads/redexgen/X/0o;

.field public final A07:Lcom/facebook/ads/redexgen/X/1m;

.field public final A08:Lcom/facebook/ads/redexgen/X/JC;

.field public final A09:Lcom/facebook/ads/redexgen/X/0s;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KG;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Wm;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 70008
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bh;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bh;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ll;->A02()V

    .line 70009
    const-class v0, Lcom/facebook/ads/redexgen/X/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bh;->A0I:Ljava/lang/String;

    .line 70010
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/bh;->A0F:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 5

    .line 70011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70012
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A03:J

    .line 70013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A02:Ljava/lang/String;

    .line 70014
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70015
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    .line 70016
    sget-object v0, Lcom/facebook/ads/redexgen/X/bh;->A0H:Lcom/facebook/ads/redexgen/X/KG;

    if-eqz v0, :cond_1

    .line 70017
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0A:Lcom/facebook/ads/redexgen/X/KG;

    .line 70018
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0A:Lcom/facebook/ads/redexgen/X/KG;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/KG;->A0Q(Lcom/facebook/ads/redexgen/X/KF;)V

    .line 70019
    sget-object v0, Lcom/facebook/ads/redexgen/X/bh;->A0G:Lcom/facebook/ads/redexgen/X/0s;

    if-eqz v0, :cond_0

    .line 70020
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A09:Lcom/facebook/ads/redexgen/X/0s;

    .line 70021
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 70022
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A09:Lcom/facebook/ads/redexgen/X/0s;

    goto :goto_1

    .line 70023
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KG;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0A:Lcom/facebook/ads/redexgen/X/KG;

    goto :goto_0

    .line 70024
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 70025
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_2

    .line 70026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto :goto_3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70027
    :catch_0
    move-exception v4

    .line 70028
    .local p0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/bh;->A0I:Ljava/lang/String;

    const/16 v2, 0x30

    const/16 v1, 0x23

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70029
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 70030
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A08:Lcom/facebook/ads/redexgen/X/JC;

    .line 70031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4U()V

    .line 70032
    return-void
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bh;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x109

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bh;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x17t
        -0x1at
        -0xbt
        -0x7t
        -0x16t
        -0x9t
        -0x5bt
        -0x17t
        -0xct
        -0x16t
        -0x8t
        -0x5bt
        -0xdt
        -0xct
        -0x7t
        -0x5bt
        -0x16t
        -0x3t
        -0x12t
        -0x8t
        -0x7t
        -0xet
        0x15t
        0x12t
        0x21t
        0x25t
        0x16t
        0x23t
        -0x2ft
        0x1at
        0x24t
        -0x2ft
        0x1ft
        0x26t
        0x1dt
        0x1dt
        -0x2ft
        0x20t
        0x1ft
        -0x2ft
        0x24t
        0x25t
        0x12t
        0x23t
        0x25t
        -0xet
        0x15t
        -0x33t
        -0x18t
        -0x10t
        -0xdt
        -0x14t
        -0x15t
        -0x59t
        -0x5t
        -0xat
        -0x59t
        -0x10t
        -0xbt
        -0x10t
        -0x5t
        -0x10t
        -0x18t
        -0xdt
        -0x10t
        0x1t
        -0x14t
        -0x59t
        -0x36t
        -0xat
        -0xat
        -0xet
        -0x10t
        -0x14t
        -0x2ct
        -0x18t
        -0xbt
        -0x18t
        -0x12t
        -0x14t
        -0x7t
        -0x4bt
        -0x4et
        -0x2dt
        -0x7ct
        -0x2ft
        -0x2dt
        -0x2at
        -0x37t
        -0x7ct
        -0x3bt
        -0x38t
        -0x7ct
        -0x39t
        -0x3bt
        -0x2et
        -0x38t
        -0x33t
        -0x38t
        -0x3bt
        -0x28t
        -0x37t
        -0x29t
        -0x6et
        0x1ct
        0x37t
        0x34t
        0x33t
        0x2ct
        -0x1bt
        0x26t
        0x29t
        0x26t
        0x35t
        0x39t
        0x2at
        0x37t
        -0x1bt
        0x39t
        0x3et
        0x35t
        0x2at
        -0xdt
        -0x2t
        0x1t
        -0x43t
        -0x2t
        0x9t
        0xft
        0x2t
        -0x2t
        0x1t
        0x16t
        -0x43t
        0x10t
        0x11t
        -0x2t
        0xft
        0x11t
        0x2t
        0x1t
        -0x28t
        -0x19t
        -0x20t
        0x41t
        0x52t
        0x32t
        0x2ft
        0x42t
        0x2ft
        0x1dt
        0x30t
        0x38t
        0x33t
        0x31t
        0x42t
        -0x12t
        0x37t
        0x41t
        -0x12t
        0x3ct
        0x43t
        0x3at
        0x3at
        -0x2ft
        -0x26t
        -0x31t
        -0x22t
        -0x1bt
        -0x24t
        -0x20t
        -0x2ft
        -0x30t
        -0x35t
        -0x2bt
        -0x30t
        0x40t
        0x49t
        0x51t
        0x44t
        0x4dt
        0x4at
        0x49t
        0x48t
        0x40t
        0x49t
        0x4ft
        -0x5t
        0x44t
        0x4et
        -0x5t
        0x40t
        0x48t
        0x4bt
        0x4ft
        0x54t
        -0x2ft
        -0x23t
        -0x30t
        -0x24t
        -0x20t
        -0x30t
        -0x27t
        -0x32t
        -0x1ct
        -0x36t
        -0x32t
        -0x34t
        -0x25t
        -0x25t
        -0x2ct
        -0x27t
        -0x2et
        -0x18t
        -0x13t
        -0xbt
        -0x20t
        -0x15t
        -0x18t
        -0x1dt
        -0x61t
        -0x11t
        -0x15t
        -0x20t
        -0x1et
        -0x1ct
        -0x14t
        -0x1ct
        -0x13t
        -0xdt
        -0x61t
        -0x18t
        -0x13t
        -0x61t
        -0xft
        -0x1ct
        -0xet
        -0x11t
        -0x12t
        -0x13t
        -0xet
        -0x1ct
        0x1at
        0x1dt
        0xft
        0x12t
        0xdt
        0x22t
        0x17t
        0x1bt
        0x13t
        0xdt
        0x1bt
        0x21t
        0x49t
        0x3ct
        0x48t
        0x4ct
        0x3ct
        0x4at
        0x4bt
        0x36t
        0x40t
        0x3bt
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mx9sJqsz4sgJcdPgoYbgRIW9VnwzqRx6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rFbyGWP2Ub8PQhtH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vlmOFoI5eqS6Nw0ENJhYNh6o4BRmenqE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JTMxf3amnDxIP84vbXSIdB2jgXN5bQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LkG9NIMCA2H26FKF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xLNm9V1ZNmyFYJ5qhdZubuzSePd6Iimu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SoM7bEoo8CKfR8pxc6QG8O9JCd0xBEh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bh;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 12

    .line 70033
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/St;->A00()Lcom/facebook/ads/redexgen/X/8w;

    move-result-object v1

    .line 70034
    .local p1, "placement":Lcom/facebook/ads/redexgen/X/8w;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70035
    .end local v4
    .end local v1
    .end local v0
    .end local v2
    .end local v1
    .end local v0
    .end local v3
    .end local v0
    .end local v2
    :cond_0
    const/16 v2, 0xd6

    const/16 v1, 0x1d

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 70036
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 70037
    .local v1, "error":Lcom/facebook/ads/redexgen/X/Jn;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70038
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70039
    return-void

    .line 70040
    :cond_1
    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/bh;->A04:Lcom/facebook/ads/redexgen/X/8w;

    .line 70041
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 70042
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/bh;->A04:Lcom/facebook/ads/redexgen/X/8w;

    .line 70043
    .local v4, "currentPlacement":Lcom/facebook/ads/redexgen/X/8w;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8u;

    move-result-object v3

    .line 70044
    .local v1, "placementAd":Lcom/facebook/ads/redexgen/X/8u;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_2

    .line 70045
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v6

    .line 70046
    .local v0, "error":Lcom/facebook/ads/redexgen/X/Jn;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    .line 70048
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x53

    const/16 v1, 0x16

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70049
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70050
    return-void

    .line 70051
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/Jn;
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8u;->A02()Ljava/lang/String;

    move-result-object v7

    .line 70052
    .local v2, "adapterName":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bh;->A09:Lcom/facebook/ads/redexgen/X/0s;

    .line 70053
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0s;->A01(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v2

    .line 70054
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-nez v2, :cond_3

    .line 70055
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70056
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A0P:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0, v7}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70057
    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 70058
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70059
    return-void

    .line 70060
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1m;->A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    .line 70061
    .local v0, "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0n;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eq v1, v0, :cond_4

    .line 70062
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v6

    .line 70063
    .restart local v0    # "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70064
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    .line 70065
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x69

    const/16 v1, 0x13

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70066
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70067
    return-void

    .line 70068
    .end local v0    # "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    :cond_4
    iput-object v2, v4, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 70069
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v8

    .line 70070
    .local v0, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8u;->A04()Lorg/json/JSONObject;

    move-result-object v7

    .line 70071
    .local v3, "dataObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_7

    .line 70072
    const/16 v6, 0xff

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70073
    .local v0, "requestId":Ljava/lang/String;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->ADt(Ljava/lang/String;)V

    .line 70074
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8D;->A09(Ljava/lang/String;)V

    .line 70075
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 70076
    .local v2, "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    if-eqz v0, :cond_5

    .line 70077
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8D;->A09(Ljava/lang/String;)V

    .line 70078
    :cond_5
    const/16 v6, 0xc5

    const/16 v1, 0x11

    const/16 v0, 0xc

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0C(Lorg/json/JSONObject;)V

    .line 70079
    .end local v0    # "requestId":Ljava/lang/String;
    .end local v2    # "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    new-instance v6, Lcom/facebook/ads/redexgen/X/1n;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    .line 70080
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/1n;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;J)V

    .line 70081
    .local v0, "loadConfig":Lcom/facebook/ads/redexgen/X/1n;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A05:Lcom/facebook/ads/redexgen/X/KD;

    if-nez v0, :cond_6

    .line 70082
    const/16 v2, 0xb1

    const/16 v1, 0x14

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 70083
    .local v2, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v2

    .line 70084
    .local v0, "error":Lcom/facebook/ads/redexgen/X/Jn;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70085
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70086
    return-void

    .line 70087
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/Jn;
    :cond_6
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/facebook/ads/redexgen/X/bh;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V

    .line 70088
    return-void

    .line 70089
    .end local v0
    :cond_7
    const/16 v2, 0x93

    const/16 v1, 0x12

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 70090
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v2

    .line 70091
    .local v2, "error":Lcom/facebook/ads/redexgen/X/Jn;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70092
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70093
    return-void
.end method

.method private final A0B(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(Z)V

    .line 70095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A03:J

    .line 70096
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_1

    .line 70097
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70098
    return-void

    .line 70099
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70100
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1m;->A07:Lcom/facebook/ads/redexgen/X/Jt;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jy;

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Jo; {:try_start_0 .. :try_end_0} :catch_0

    .line 70101
    .local p0, "bidPayload":Lcom/facebook/ads/redexgen/X/Jy;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70102
    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/ads/redexgen/X/1m;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Jy;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/KD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A05:Lcom/facebook/ads/redexgen/X/KD;

    .line 70103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A0A:Lcom/facebook/ads/redexgen/X/KG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A05:Lcom/facebook/ads/redexgen/X/KD;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0P(Lcom/facebook/ads/redexgen/X/KD;)V

    .line 70104
    return-void

    .line 70105
    .end local p0    # "bidPayload":Lcom/facebook/ads/redexgen/X/Jy;
    :catch_0
    move-exception v0

    .line 70106
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Jo;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A03(Lcom/facebook/ads/redexgen/X/Jo;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70107
    return-void
.end method

.method private A0C(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70108
    if-eqz p1, :cond_0

    .line 70109
    const/16 v2, 0xa5

    const/16 v1, 0xc

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A02:Ljava/lang/String;

    .line 70110
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0u;->A0G(Lorg/json/JSONObject;)V

    .line 70111
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0D()J
    .locals 5

    .line 70112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A04:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    .line 70113
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A04()J

    move-result-wide v0

    return-wide v0

    .line 70114
    :cond_0
    const-wide/16 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bh;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bh;->A0E:[Ljava/lang/String;

    const-string v1, "cOTrI9DB0oxjTyLR1voyMrEgWVbVphTL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A0E()Landroid/os/Handler;
    .locals 1

    .line 70115
    sget-object v0, Lcom/facebook/ads/redexgen/X/bh;->A0F:Landroid/os/Handler;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/8x;
    .locals 1

    .line 70116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A04:Lcom/facebook/ads/redexgen/X/8w;

    if-nez v0, :cond_0

    .line 70117
    const/4 v0, 0x0

    return-object v0

    .line 70118
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 70120
    const/4 v0, 0x0

    return-object v0

    .line 70121
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 5

    .line 70122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2f(J)V

    .line 70123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 70124
    return-void

    .line 70125
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 70126
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf3

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 70128
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A08:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v1, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 70129
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 70130
    return-void
.end method

.method public final A0I()V
    .locals 5

    .line 70131
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    .line 70132
    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 70133
    .local p0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70134
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0F:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 70135
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 70136
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70137
    .local v3, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70138
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z()V

    .line 70140
    return-void

    .line 70141
    .end local p0    # "errorMessage":Ljava/lang/String;
    .end local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0C:Z

    if-eqz v0, :cond_1

    .line 70142
    const/16 v2, 0x7c

    const/16 v1, 0x12

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 70143
    .restart local p0    # "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70144
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0C:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 70145
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 70146
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70147
    .restart local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70148
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Y()V

    .line 70150
    return-void

    .line 70151
    .end local p0    # "errorMessage":Ljava/lang/String;
    .end local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70152
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bh;->A08:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8o(Ljava/lang/String;)V

    .line 70153
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4a()V

    .line 70154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0C:Z

    .line 70155
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bh;->A0L()V

    .line 70156
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 70157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0T(Z)V

    .line 70158
    return-void
.end method

.method public final A0K()V
    .locals 1

    .line 70159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70160
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0D(Ljava/lang/String;)V

    .line 70161
    :cond_0
    return-void
.end method

.method public abstract A0L()V
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 0

    .line 70162
    if-eqz p1, :cond_0

    .line 70163
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0n;->onDestroy()V

    .line 70164
    :cond_0
    return-void
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/0o;)V
    .locals 0

    .line 70165
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    .line 70166
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 4

    .line 70167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4T()V

    .line 70168
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 70169
    .local p0, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x91

    const/4 v1, 0x2

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70170
    .local p1, "clientToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A08:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 70172
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A03:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 70173
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    :cond_0
    return-void
.end method

.method public A0Q(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0B(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 70175
    return-void
.end method

.method public final A0R(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70176
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0Q(Ljava/lang/String;)V

    .line 70177
    return-void
.end method

.method public final A0S(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70178
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bh;->A0B(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 70179
    return-void
.end method

.method public A0T(Z)V
    .locals 1

    .line 70180
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0C:Z

    if-nez v0, :cond_0

    .line 70181
    return-void

    .line 70182
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4b()V

    .line 70183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0C:Z

    .line 70185
    return-void
.end method

.method public final A0U()Z
    .locals 1

    .line 70186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A04:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized AA6(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 2

    monitor-enter p0

    .line 70187
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bi;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bi;-><init>(Lcom/facebook/ads/redexgen/X/bh;Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70188
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70189
    monitor-exit p0

    return-void

    .line 70190
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ABk(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    monitor-enter p0

    .line 70191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0A(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70192
    .restart local v1
    :catch_0
    move-exception v4

    .line 70193
    .local p0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A07(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0I:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 70195
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70196
    .end local p0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 70197
    .end local v2
    .end local v1
    :catchall_0
    move-exception v0

    .end local v1
    monitor-exit p0

    throw v0
.end method
