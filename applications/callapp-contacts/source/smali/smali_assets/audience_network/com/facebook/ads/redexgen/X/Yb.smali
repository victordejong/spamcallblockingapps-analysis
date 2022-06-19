.class public final Lcom/facebook/ads/redexgen/X/Yb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bz;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Bf;,
        Lcom/facebook/ads/redexgen/X/Bg;,
        Lcom/facebook/ads/redexgen/X/Bh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/C1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Bz<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/os/HandlerThread;

.field public A03:Lcom/facebook/ads/redexgen/X/Bf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Yb<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Bx;

.field public A05:Lcom/facebook/ads/redexgen/X/C1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public A06:Ljava/lang/Object;

.field public A07:Ljava/lang/Object;

.field public A08:[B

.field public A09:[B

.field public final A0A:Lcom/facebook/ads/redexgen/X/Bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Yb<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/CB;

.field public final A0C:Ljava/util/UUID;

.field public final A0D:I

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/Bh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Bh<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A0G:Lcom/facebook/ads/redexgen/X/Bn;

.field public final A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

.field public final A0I:Lcom/facebook/ads/redexgen/X/C7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yb;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yb;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/C7;Lcom/facebook/ads/redexgen/X/Bh;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lcom/facebook/ads/redexgen/X/CB;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Bn;I)V
    .locals 3
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/facebook/ads/redexgen/X/C7<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/Bh<",
            "TT;>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;",
            "I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/CB;",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/Bn;",
            "I)V"
        }
    .end annotation

    .line 61084
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    .local p4, "mediaDrm":Lcom/facebook/ads/redexgen/X/C7;, "Lcom/facebook/ads/internal/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p5, "provisioningManager":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<TT;>;"
    .local p9, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61085
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0C:Ljava/util/UUID;

    .line 61086
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    .line 61087
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    .line 61088
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0E:I

    .line 61089
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    .line 61090
    if-nez p6, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    .line 61091
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0J:Ljava/util/HashMap;

    .line 61092
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0B:Lcom/facebook/ads/redexgen/X/CB;

    .line 61093
    iput p11, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0D:I

    .line 61094
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    .line 61095
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61096
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bg;

    invoke-direct {v0, p0, p9}, Lcom/facebook/ads/redexgen/X/Bg;-><init>(Lcom/facebook/ads/redexgen/X/Yb;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0A:Lcom/facebook/ads/redexgen/X/Bg;

    .line 61097
    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Landroid/os/HandlerThread;

    .line 61098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(Lcom/facebook/ads/redexgen/X/Yb;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    .line 61100
    return-void

    .line 61101
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Yb;)I
    .locals 0

    .line 61102
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0D:I

    return p0
.end method

.method private A01()J
    .locals 4

    .line 61103
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/9u;->A05:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0C:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61104
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 61105
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/CF;->A01(Lcom/facebook/ads/redexgen/X/Bz;)Landroid/util/Pair;

    move-result-object v1

    .line 61106
    .local p0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yb;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 2

    .line 61107
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 61108
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61109
    new-instance v0, Lcom/facebook/ads/redexgen/X/CA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CA;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    .line 61110
    :cond_0
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x8c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yb;->A0K:[B

    return-void

    :array_0
    .array-data 1
        0x26t
        0x47t
        0x48t
        0x43t
        0x57t
        0x4et
        0x56t
        0x26t
        0x54t
        0x4ft
        0x35t
        0x47t
        0x55t
        0x55t
        0x4bt
        0x51t
        0x50t
        -0x33t
        -0x5t
        -0xat
        -0x25t
        -0x12t
        -0x6t
        -0x2t
        -0x12t
        -0x4t
        -0x3t
        -0x2ft
        -0x16t
        -0x9t
        -0x13t
        -0xbt
        -0x12t
        -0x5t
        -0x37t
        -0xat
        -0xat
        -0xdt
        -0xat
        -0x5ct
        -0x8t
        -0xat
        -0x3t
        -0x13t
        -0xet
        -0x15t
        -0x5ct
        -0x8t
        -0xdt
        -0x5ct
        -0xat
        -0x17t
        -0x9t
        -0x8t
        -0xdt
        -0xat
        -0x17t
        -0x5ct
        -0x25t
        -0x13t
        -0x18t
        -0x17t
        -0x6t
        -0x13t
        -0xet
        -0x17t
        -0x5ct
        -0x11t
        -0x17t
        -0x3t
        -0x9t
        -0x4et
        -0x17t
        0x0t
        0x0t
        0x6t
        0x3t
        0x8t
        -0x1t
        -0x46t
        0x6t
        0x3t
        -0x3t
        -0x1t
        0x8t
        0xdt
        -0x1t
        -0x46t
        0x2t
        -0x5t
        0xdt
        -0x46t
        -0x1t
        0x12t
        0xat
        0x3t
        0xct
        -0x1t
        -0x2t
        -0x46t
        0x9t
        0xct
        -0x46t
        0x11t
        0x3t
        0x6t
        0x6t
        -0x46t
        -0x1t
        0x12t
        0xat
        0x3t
        0xct
        -0x1t
        -0x46t
        0xdt
        0x9t
        0x9t
        0x8t
        -0x38t
        -0x46t
        -0x14t
        -0x1t
        0x7t
        -0x5t
        0x3t
        0x8t
        0x3t
        0x8t
        0x1t
        -0x46t
        0xdt
        -0x1t
        -0x3t
        0x9t
        0x8t
        -0x2t
        0xdt
        -0x2ct
        -0x46t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ygnbftuzQ623Ar"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0dBxCv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0mS6EqtDw1IrcjMleAT8IB1AlC6o9dAz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RvmLzAjUPGIONaTchxcxVzTcBBQZgw7Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nJTfBRZW6rn0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sj1G7dKmGRmO2HqivExl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qBp8iQwY5MoBhJy8uyiyd2Hnkft4tubm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GRqzAUhZ8aAEJGz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private A06(IZ)V
    .locals 8

    .line 61111
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x3

    move v6, p1

    if-ne v6, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    .line 61112
    .local p2, "scope":[B
    :goto_0
    const/4 v4, 0x0

    .line 61113
    .local p0, "initData":[B
    const/4 v5, 0x0

    .line 61114
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 61115
    .local v0, "licenseServerUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_1

    .line 61116
    iget-object v4, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 61117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v5, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 61118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    goto :goto_1

    .line 61119
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    goto :goto_0

    .line 61120
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v0    # "licenseServerUrl":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    .local v1, "licenseServerUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0J:Ljava/util/HashMap;

    .line 61121
    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/C7;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/facebook/ads/redexgen/X/C2;

    move-result-object v0

    .line 61122
    .local v6, "mediaDrmKeyRequest":Lcom/facebook/ads/redexgen/X/C2;
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/Object;

    .line 61123
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Bf;->A02(ILjava/lang/Object;Z)V

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61124
    :catch_0
    move-exception v0

    .line 61125
    .local v6, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0A(Ljava/lang/Exception;)V

    .line 61126
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Yb;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 61127
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Yb;->A0C(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Yb;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 61128
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Yb;->A0B(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private A09(Ljava/lang/Exception;)V
    .locals 2

    .line 61129
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bx;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Bx;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A04:Lcom/facebook/ads/redexgen/X/Bx;

    .line 61130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Bn;->A04(Ljava/lang/Exception;)V

    .line 61131
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 61132
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61133
    :cond_0
    return-void
.end method

.method private A0A(Ljava/lang/Exception;)V
    .locals 1

    .line 61134
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 61135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Bh;->ACf(Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 61136
    :goto_0
    return-void

    .line 61137
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private A0B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 61138
    .local v3, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const-string v1, "Dj52Xz5E9G6B"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "yQtL6VAJC1YqjW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 61139
    :cond_0
    return-void

    .line 61140
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/Object;

    .line 61141
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 61142
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Yb;->A0A(Ljava/lang/Exception;)V

    .line 61143
    return-void

    .line 61144
    :cond_2
    :try_start_0
    check-cast p2, [B

    .line 61145
    .local p0, "responseData":[B
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const-string v1, "2X8HJVAZNrszLj0VXzfxBiDDerG65NXA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_4

    goto :goto_0

    :cond_3
    if-ne v4, v3, :cond_4

    .line 61146
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/C7;->provideKeyResponse([B[B)[B

    .line 61147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A01()V

    goto :goto_1

    .line 61148
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/C7;->provideKeyResponse([B[B)[B

    move-result-object v2

    .line 61149
    .local p1, "keySetId":[B
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0E:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0E:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v2, :cond_6

    array-length v0, v2

    if-eqz v0, :cond_6

    .line 61150
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    .line 61151
    :cond_6
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A00()V

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61153
    :catch_0
    move-exception v0

    .line 61154
    .local p0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0A(Ljava/lang/Exception;)V

    .line 61155
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0C(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 61156
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61157
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Yb;
    :cond_0
    return-void

    .line 61158
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Ljava/lang/Object;

    .line 61159
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 61160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Bh;->ABK(Ljava/lang/Exception;)V

    .line 61161
    return-void

    .line 61162
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    check-cast p2, [B

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/C7;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bh;->ABJ()V

    .line 61164
    return-void

    .line 61165
    :catch_0
    move-exception v4

    .line 61166
    .local p0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const-string v1, "a4sDA20kWFGOKzGfRWeaug5eKqIpzvIQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/Bh;->ABK(Ljava/lang/Exception;)V

    .line 61167
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Z)V
    .locals 7

    .line 61168
    .local v3, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0E:I

    const/4 v1, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    if-eq v0, v6, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 61169
    :cond_0
    :goto_0
    return-void

    .line 61170
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61171
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(IZ)V

    goto :goto_0

    .line 61172
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const-string v1, "nvqtgBbI1rUZtdpDbdJLT2qwzjn5A3EQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 61173
    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(IZ)V

    goto :goto_0

    .line 61174
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61175
    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(IZ)V

    goto :goto_0

    .line 61176
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    if-nez v0, :cond_5

    .line 61177
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(IZ)V

    goto :goto_0

    .line 61178
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    const/4 v5, 0x4

    if-eq v0, v5, :cond_6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61179
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A01()J

    move-result-wide v3

    .line 61180
    .local v1, "licenseDurationRemainingSec":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0E:I

    if-nez v0, :cond_7

    const-wide/16 v1, 0x3c

    cmp-long v0, v3, v1

    if-gtz v0, :cond_7

    .line 61181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x44

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61182
    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(IZ)V

    goto :goto_0

    .line 61183
    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_8

    .line 61184
    new-instance v0, Lcom/facebook/ads/redexgen/X/CA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CA;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61185
    :cond_8
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A02()V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E()Z
    .locals 2

    .line 61187
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0F()Z
    .locals 5

    .line 61188
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:[B

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C7;->restoreKeys([B[B)V

    .line 61189
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61190
    :catch_0
    move-exception v4

    .line 61191
    .local p0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0x26

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61192
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    .line 61193
    .end local p0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private A0G(Z)Z
    .locals 3

    .line 61194
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 61195
    return v2

    .line 61196
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C7;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    .line 61197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C7;->createMediaCrypto([B)Lcom/facebook/ads/redexgen/X/C1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A05:Lcom/facebook/ads/redexgen/X/C1;

    .line 61198
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61199
    return v2
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61200
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Yb;
    :catch_0
    move-exception v0

    .line 61201
    .local p0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_1

    .line 61202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Bh;->ACf(Lcom/facebook/ads/redexgen/X/Yb;)V

    goto :goto_0

    .line 61203
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61204
    :catch_1
    move-exception v0

    .line 61205
    .local p0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    .line 61206
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0H()V
    .locals 2

    .line 61207
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    if-ne v0, v1, :cond_1

    .line 61208
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    if-ne v0, v1, :cond_0

    .line 61209
    return-void

    .line 61210
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0G(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61211
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Z)V

    .line 61212
    :cond_1
    return-void
.end method

.method public final A0I()V
    .locals 1

    .line 61213
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0G(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Z)V

    .line 61215
    :cond_0
    return-void
.end method

.method public final A0J()V
    .locals 4

    .line 61216
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C7;->getProvisionRequest()Lcom/facebook/ads/redexgen/X/C6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Ljava/lang/Object;

    .line 61217
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Bf;->A02(ILjava/lang/Object;Z)V

    .line 61218
    return-void
.end method

.method public final A0K(I)V
    .locals 4

    .line 61219
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61220
    return-void

    .line 61221
    :cond_0
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const-string v1, "lZu3kopIqXcrfR3er40TopUaCPNEg1WS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x3

    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    .line 61222
    :goto_0
    return-void

    .line 61223
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A03()V

    .line 61224
    goto :goto_0

    .line 61225
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Z)V

    .line 61226
    goto :goto_0

    .line 61227
    :cond_3
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Bh;->ACf(Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 61229
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L(Ljava/lang/Exception;)V
    .locals 0

    .line 61230
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Ljava/lang/Exception;)V

    .line 61231
    return-void
.end method

.method public final A0M()Z
    .locals 4

    .line 61232
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 61233
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    .line 61234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0A:Lcom/facebook/ads/redexgen/X/Bg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Bg;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Bf;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61236
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    .line 61237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 61238
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Landroid/os/HandlerThread;

    .line 61239
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A05:Lcom/facebook/ads/redexgen/X/C1;

    .line 61240
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A04:Lcom/facebook/ads/redexgen/X/Bx;

    .line 61241
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/Object;

    .line 61242
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Ljava/lang/Object;

    .line 61243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    if-eqz v1, :cond_0

    .line 61244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C7;->closeSession([B)V

    .line 61245
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    .line 61246
    :cond_0
    return v3

    .line 61247
    :cond_1
    return v0
.end method

.method public final A0N([B)Z
    .locals 1

    .line 61248
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O([B)Z
    .locals 1

    .line 61249
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public final A6P()Lcom/facebook/ads/redexgen/X/Bx;
    .locals 2

    .line 61250
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A04:Lcom/facebook/ads/redexgen/X/Bx;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6l()Lcom/facebook/ads/redexgen/X/C1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61251
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A05:Lcom/facebook/ads/redexgen/X/C1;

    return-object v0
.end method

.method public final A7F()I
    .locals 1

    .line 61252
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:I

    return v0
.end method

.method public final ACg()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61253
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yb;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:[B

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yb;->A0L:[Ljava/lang/String;

    const-string v1, "lzhfD5NgGZX1H2DfqRAO4AgkK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/C7;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
