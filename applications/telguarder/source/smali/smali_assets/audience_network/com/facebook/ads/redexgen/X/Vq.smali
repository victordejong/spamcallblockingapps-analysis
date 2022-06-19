.class public final Lcom/facebook/ads/redexgen/X/Vq;
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
            "Lcom/facebook/ads/redexgen/X/Vq<",
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
            "Lcom/facebook/ads/redexgen/X/Vq<",
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vq;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vq;->A04()V

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

    .line 61738
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    .local p4, "mediaDrm":Lcom/facebook/ads/redexgen/X/C7;, "Lcom/facebook/ads/internal/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p5, "provisioningManager":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<TT;>;"
    .local p9, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0C:Ljava/util/UUID;

    .line 61740
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    .line 61741
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    .line 61742
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0E:I

    .line 61743
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    .line 61744
    if-nez p6, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    .line 61745
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0J:Ljava/util/HashMap;

    .line 61746
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0B:Lcom/facebook/ads/redexgen/X/CB;

    .line 61747
    iput p11, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0D:I

    .line 61748
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    .line 61749
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61750
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bg;

    invoke-direct {v0, p0, p9}, Lcom/facebook/ads/redexgen/X/Bg;-><init>(Lcom/facebook/ads/redexgen/X/Vq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0A:Lcom/facebook/ads/redexgen/X/Bg;

    .line 61751
    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A02:Landroid/os/HandlerThread;

    .line 61752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(Lcom/facebook/ads/redexgen/X/Vq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    .line 61754
    return-void

    .line 61755
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Vq;)I
    .locals 0

    .line 61756
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0D:I

    return p0
.end method

.method private A01()J
    .locals 4

    .line 61757
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/9u;->A05:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0C:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61758
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 61759
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/CF;->A01(Lcom/facebook/ads/redexgen/X/Bz;)Landroid/util/Pair;

    move-result-object v1

    .line 61760
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

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5e

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

    .line 61761
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 61762
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61763
    new-instance v0, Lcom/facebook/ads/redexgen/X/CA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CA;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    .line 61764
    :cond_0
    return-void
.end method

.method public static A04()V
    .locals 4

    const/16 v0, 0x8c

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "sCQ7IJpyx8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Vq;->A0K:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x4dt
        0x6ct
        0x6ft
        0x68t
        0x7ct
        0x65t
        0x7dt
        0x4dt
        0x7bt
        0x64t
        0x5at
        0x6ct
        0x7at
        0x7at
        0x60t
        0x66t
        0x67t
        0x78t
        0x4et
        0x51t
        0x6et
        0x59t
        0x4dt
        0x49t
        0x59t
        0x4ft
        0x48t
        0x74t
        0x5dt
        0x52t
        0x58t
        0x50t
        0x59t
        0x4et
        0x64t
        0x53t
        0x53t
        0x4et
        0x53t
        0x1t
        0x55t
        0x53t
        0x58t
        0x48t
        0x4ft
        0x46t
        0x1t
        0x55t
        0x4et
        0x1t
        0x53t
        0x44t
        0x52t
        0x55t
        0x4et
        0x53t
        0x44t
        0x1t
        0x76t
        0x48t
        0x45t
        0x44t
        0x57t
        0x48t
        0x4ft
        0x44t
        0x1t
        0x4at
        0x44t
        0x58t
        0x52t
        0xft
        0x79t
        0x50t
        0x50t
        0x5at
        0x5ft
        0x58t
        0x53t
        0x16t
        0x5at
        0x5ft
        0x55t
        0x53t
        0x58t
        0x45t
        0x53t
        0x16t
        0x5et
        0x57t
        0x45t
        0x16t
        0x53t
        0x4et
        0x46t
        0x5ft
        0x44t
        0x53t
        0x52t
        0x16t
        0x59t
        0x44t
        0x16t
        0x41t
        0x5ft
        0x5at
        0x5at
        0x16t
        0x53t
        0x4et
        0x46t
        0x5ft
        0x44t
        0x53t
        0x16t
        0x45t
        0x59t
        0x59t
        0x58t
        0x18t
        0x16t
        0x64t
        0x53t
        0x5bt
        0x57t
        0x5ft
        0x58t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x45t
        0x53t
        0x55t
        0x59t
        0x58t
        0x52t
        0x45t
        0xct
        0x16t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2axfNLxMrvwwG2KHfVOIeliA29Zdw7NK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A0hnafFCoJilBeJH3Xe8pS4OScxFHOPJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0C2leY3w3E1MUDtcGf3JRN09RYNMCKr9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ERT6yme4bloj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mx5RsJ7e7CsZwzC1t4RRlV4wm4x4vJGS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m2qjItFn7wI8g2XBf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JZ5HMfv28xzdaeSAv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private A06(IZ)V
    .locals 10

    .line 61765
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x3

    move v8, p1

    if-ne v8, v0, :cond_0

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    .line 61766
    .local p2, "scope":[B
    :goto_0
    const/4 v6, 0x0

    .line 61767
    .local p0, "initData":[B
    const/4 v7, 0x0

    .line 61768
    .local v8, "mimeType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 61769
    .local v0, "licenseServerUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_1

    .line 61770
    iget-object v6, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 61771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v7, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 61772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v3, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    goto :goto_1

    .line 61773
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    goto :goto_0

    .line 61774
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 61775
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v0    # "licenseServerUrl":Ljava/lang/String;
    .local v7, "mimeType":Ljava/lang/String;
    .local v3, "licenseServerUrl":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0J:Ljava/util/HashMap;

    .line 61776
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/C7;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/facebook/ads/redexgen/X/C2;

    move-result-object v0

    .line 61777
    .local v8, "mediaDrmKeyRequest":Lcom/facebook/ads/redexgen/X/C2;
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A06:Ljava/lang/Object;

    .line 61778
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vq;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A06:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Bf;->A02(ILjava/lang/Object;Z)V

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61779
    :catch_0
    move-exception v0

    .line 61780
    .local v8, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A0A(Ljava/lang/Exception;)V

    .line 61781
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Vq;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 61782
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vq;->A0C(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Vq;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 61783
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vq;->A0B(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private A09(Ljava/lang/Exception;)V
    .locals 2

    .line 61784
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bx;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Bx;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A04:Lcom/facebook/ads/redexgen/X/Bx;

    .line 61785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Bn;->A05(Ljava/lang/Exception;)V

    .line 61786
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 61787
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61788
    :cond_0
    return-void
.end method

.method private A0A(Ljava/lang/Exception;)V
    .locals 1

    .line 61789
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 61790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Bh;->ACf(Lcom/facebook/ads/redexgen/X/Vq;)V

    .line 61791
    :goto_0
    return-void

    .line 61792
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private A0B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 61793
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A06:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61794
    :cond_0
    return-void

    .line 61795
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A06:Ljava/lang/Object;

    .line 61796
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 61797
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vq;->A0A(Ljava/lang/Exception;)V

    .line 61798
    return-void

    .line 61799
    :cond_2
    :try_start_0
    check-cast p2, [B

    .line 61800
    .local p0, "responseData":[B
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0E:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 61801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/C7;->provideKeyResponse([B[B)[B

    .line 61802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A02()V

    goto :goto_0

    .line 61803
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/C7;->provideKeyResponse([B[B)[B

    move-result-object v5

    .line 61804
    .local p1, "keySetId":[B
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "TmZGeAwXOQiJDp91dtEna4BxG4B3Txg9"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_4

    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0E:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v5, :cond_5

    array-length v0, v5

    if-eqz v0, :cond_5

    .line 61805
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    .line 61806
    :cond_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A01()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61808
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61809
    :catch_0
    move-exception v0

    .line 61810
    .local p0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A0A(Ljava/lang/Exception;)V

    .line 61811
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private A0C(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 61812
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A07:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61813
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vq;
    :cond_0
    return-void

    .line 61814
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A07:Ljava/lang/Object;

    .line 61815
    instance-of v3, p2, Ljava/lang/Exception;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "QkhdePbfzdgomGJH20kmfXSr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 61816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Bh;->ABK(Ljava/lang/Exception;)V

    .line 61817
    return-void

    .line 61818
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    check-cast p2, [B

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/C7;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bh;->ABJ()V

    .line 61820
    return-void

    .line 61821
    :catch_0
    move-exception v1

    .line 61822
    .local p0, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bh;->ABK(Ljava/lang/Exception;)V

    .line 61823
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Z)V
    .locals 7

    .line 61824
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0E:I

    const/4 v1, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    if-eq v0, v6, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 61825
    :cond_0
    :goto_0
    return-void

    .line 61826
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61827
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A06(IZ)V

    goto :goto_0

    .line 61828
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    if-nez v0, :cond_3

    .line 61829
    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A06(IZ)V

    goto :goto_0

    .line 61830
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61831
    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A06(IZ)V

    goto :goto_0

    .line 61832
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    if-nez v0, :cond_5

    .line 61833
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A06(IZ)V

    goto :goto_0

    .line 61834
    :cond_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    const/4 v5, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "ERE9Zs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v3, v5, :cond_6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61835
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A01()J

    move-result-wide v3

    .line 61836
    .local v1, "licenseDurationRemainingSec":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0E:I

    if-nez v0, :cond_7

    const-wide/16 v1, 0x3c

    cmp-long v0, v3, v1

    if-gtz v0, :cond_7

    .line 61837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x44

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61838
    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A06(IZ)V

    goto :goto_0

    .line 61839
    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_8

    .line 61840
    new-instance v0, Lcom/facebook/ads/redexgen/X/CA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CA;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61841
    :cond_8
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0G:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A03()V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E()Z
    .locals 2

    .line 61843
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

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

    .line 61844
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A08:[B

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C7;->restoreKeys([B[B)V

    .line 61845
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61846
    :catch_0
    move-exception v4

    .line 61847
    .local p0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0x26

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61848
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    .line 61849
    .end local p0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private A0G(Z)Z
    .locals 3

    .line 61850
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0E()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 61851
    return v2

    .line 61852
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C7;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    .line 61853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C7;->createMediaCrypto([B)Lcom/facebook/ads/redexgen/X/C1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A05:Lcom/facebook/ads/redexgen/X/C1;

    .line 61854
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61855
    return v2
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61856
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vq;
    :catch_0
    move-exception v0

    .line 61857
    .local p0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_1

    .line 61858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Bh;->ACf(Lcom/facebook/ads/redexgen/X/Vq;)V

    goto :goto_0

    .line 61859
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61860
    :catch_1
    move-exception v0

    .line 61861
    .local p0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    .line 61862
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0H()V
    .locals 2

    .line 61863
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A00:I

    if-ne v0, v1, :cond_1

    .line 61864
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    if-ne v0, v1, :cond_0

    .line 61865
    return-void

    .line 61866
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Vq;->A0G(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61867
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Vq;->A0D(Z)V

    .line 61868
    :cond_1
    return-void
.end method

.method public final A0I()V
    .locals 4

    .line 61869
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A0G(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61870
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "pJsLTfUBDDja"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vq;->A0D(Z)V

    .line 61871
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0J()V
    .locals 4

    .line 61872
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C7;->getProvisionRequest()Lcom/facebook/ads/redexgen/X/C6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A07:Ljava/lang/Object;

    .line 61873
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vq;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vq;->A07:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Bf;->A02(ILjava/lang/Object;Z)V

    .line 61874
    return-void
.end method

.method public final A0K(I)V
    .locals 3

    .line 61875
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61876
    return-void

    .line 61877
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    .line 61878
    :goto_0
    return-void

    .line 61879
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vq;->A03()V

    .line 61880
    goto :goto_0

    .line 61881
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vq;->A0D(Z)V

    .line 61882
    goto :goto_0

    .line 61883
    :cond_3
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_4

    .line 61884
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "wi0Ut7SYt27RcoMXrDuBwaFFXy6BjHJQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0F:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Bh;->ACf(Lcom/facebook/ads/redexgen/X/Vq;)V

    .line 61885
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L(Ljava/lang/Exception;)V
    .locals 0

    .line 61886
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A09(Ljava/lang/Exception;)V

    .line 61887
    return-void
.end method

.method public final A0M()Z
    .locals 6

    .line 61888
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A00:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A00:I

    const/4 v0, 0x0

    if-nez v1, :cond_2

    .line 61889
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    .line 61890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0A:Lcom/facebook/ads/redexgen/X/Bg;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Bg;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Bf;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61892
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    .line 61893
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vq;->A02:Landroid/os/HandlerThread;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vq;->A0L:[Ljava/lang/String;

    const-string v1, "fFzulGMKHBGbWnvWU2S9EcIgIKHpr7YB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 61894
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A02:Landroid/os/HandlerThread;

    .line 61895
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A05:Lcom/facebook/ads/redexgen/X/C1;

    .line 61896
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A04:Lcom/facebook/ads/redexgen/X/Bx;

    .line 61897
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A06:Ljava/lang/Object;

    .line 61898
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A07:Ljava/lang/Object;

    .line 61899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    if-eqz v1, :cond_0

    .line 61900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C7;->closeSession([B)V

    .line 61901
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    .line 61902
    :cond_0
    return v5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61903
    :cond_2
    return v0
.end method

.method public final A0N([B)Z
    .locals 1

    .line 61904
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

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

    .line 61905
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public final A6P()Lcom/facebook/ads/redexgen/X/Bx;
    .locals 2

    .line 61906
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A04:Lcom/facebook/ads/redexgen/X/Bx;

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

    .line 61907
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A05:Lcom/facebook/ads/redexgen/X/C1;

    return-object v0
.end method

.method public final A7H()I
    .locals 1

    .line 61908
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A01:I

    return v0
.end method

.method public final ACg()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61909
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vq;->A09:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vq;->A0I:Lcom/facebook/ads/redexgen/X/C7;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C7;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
