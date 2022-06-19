.class public final Lcom/facebook/ads/redexgen/X/At;
.super Lcom/facebook/ads/redexgen/X/PD;
.source ""


# static fields
.field public static A0E:[B

.field public static final A0F:Ljava/lang/String;


# instance fields
.field public A00:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/JC;

.field public A03:Lcom/facebook/ads/redexgen/X/MH;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/7y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/14;

.field public final A09:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Le;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KW;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21874
    invoke-static {}, Lcom/facebook/ads/redexgen/X/At;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/At;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/At;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 21875
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 21876
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0D:Ljava/lang/String;

    .line 21877
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Aw;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0C:Lcom/facebook/ads/redexgen/X/KQ;

    .line 21878
    new-instance v0, Lcom/facebook/ads/redexgen/X/Av;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Av;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0B:Lcom/facebook/ads/redexgen/X/KW;

    .line 21879
    new-instance v0, Lcom/facebook/ads/redexgen/X/Au;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Au;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0A:Lcom/facebook/ads/redexgen/X/Le;

    .line 21880
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/At;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21881
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 21882
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/At;->A02()V

    .line 21883
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21884
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    .line 21885
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0D:Ljava/lang/String;

    .line 21886
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Aw;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0C:Lcom/facebook/ads/redexgen/X/KQ;

    .line 21887
    new-instance v0, Lcom/facebook/ads/redexgen/X/Av;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Av;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0B:Lcom/facebook/ads/redexgen/X/KW;

    .line 21888
    new-instance v0, Lcom/facebook/ads/redexgen/X/Au;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Au;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0A:Lcom/facebook/ads/redexgen/X/Le;

    .line 21889
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/At;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21890
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 21891
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/At;->A02()V

    .line 21892
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21893
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    .line 21894
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0D:Ljava/lang/String;

    .line 21895
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Aw;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0C:Lcom/facebook/ads/redexgen/X/KQ;

    .line 21896
    new-instance v0, Lcom/facebook/ads/redexgen/X/Av;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Av;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0B:Lcom/facebook/ads/redexgen/X/KW;

    .line 21897
    new-instance v0, Lcom/facebook/ads/redexgen/X/Au;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Au;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0A:Lcom/facebook/ads/redexgen/X/Le;

    .line 21898
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/At;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A08:Lcom/facebook/ads/redexgen/X/14;

    .line 21899
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 21900
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/At;->A02()V

    .line 21901
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/At;)Lcom/facebook/ads/redexgen/X/MH;
    .locals 0

    .line 21902
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/At;->A03:Lcom/facebook/ads/redexgen/X/MH;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/At;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 4

    .line 21903
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/At;->A0C:Lcom/facebook/ads/redexgen/X/KQ;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/At;->A0B:Lcom/facebook/ads/redexgen/X/KW;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/At;->A0A:Lcom/facebook/ads/redexgen/X/Le;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 21904
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x14a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/At;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        -0x68t
        -0x5bt
        0x5et
        -0x55t
        0x57t
        -0x56t
        -0x55t
        -0x68t
        -0x57t
        -0x55t
        0x57t
        0x78t
        -0x54t
        -0x65t
        -0x60t
        -0x64t
        -0x5bt
        -0x66t
        -0x64t
        -0x7bt
        -0x64t
        -0x55t
        -0x52t
        -0x5at
        -0x57t
        -0x5et
        0x78t
        -0x66t
        -0x55t
        -0x60t
        -0x53t
        -0x60t
        -0x55t
        -0x50t
        0x65t
        0x57t
        -0x7ct
        -0x68t
        -0x5et
        -0x64t
        0x57t
        -0x56t
        -0x54t
        -0x57t
        -0x64t
        0x57t
        -0x55t
        -0x61t
        -0x68t
        -0x55t
        0x57t
        -0x60t
        -0x55t
        0x5et
        -0x56t
        0x57t
        -0x60t
        -0x5bt
        0x57t
        -0x50t
        -0x5at
        -0x54t
        -0x57t
        0x57t
        0x78t
        -0x5bt
        -0x65t
        -0x57t
        -0x5at
        -0x60t
        -0x65t
        -0x7ct
        -0x68t
        -0x5bt
        -0x60t
        -0x63t
        -0x64t
        -0x56t
        -0x55t
        0x65t
        -0x51t
        -0x5ct
        -0x5dt
        0x57t
        -0x63t
        -0x60t
        -0x5dt
        -0x64t
        0x65t
        -0x4dt
        -0x20t
        -0x20t
        -0x23t
        -0x20t
        -0x58t
        -0x72t
        0x6dt
        0x69t
        0x68t
        -0x64t
        -0x75t
        -0x70t
        -0x74t
        -0x6bt
        -0x76t
        -0x74t
        0x75t
        -0x74t
        -0x65t
        -0x62t
        -0x6at
        -0x67t
        -0x6et
        0x71t
        -0x67t
        -0x69t
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x67t
        -0x70t
        -0x73t
        -0x77t
        -0x6et
        -0x68t
        0x78t
        -0x6dt
        -0x71t
        -0x77t
        -0x6et
        0x44t
        -0x76t
        -0x73t
        -0x6at
        -0x69t
        -0x68t
        0x71t
        -0x67t
        -0x69t
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x79t
        0x76t
        0x6dt
        0x44t
        -0x6dt
        -0x6at
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x71t
        0x74t
        0x68t
        0x44t
        -0x76t
        -0x73t
        -0x6at
        -0x69t
        -0x68t
        -0x10t
        -0x3t
        -0x12t
        -0x10t
        -0xet
        0x3t
        -0x8t
        0x5t
        -0x8t
        0x3t
        0x8t
        -0x50t
        -0x47t
        -0x4at
        -0x4et
        -0x45t
        -0x3ft
        -0x5ft
        -0x44t
        -0x48t
        -0x4et
        -0x45t
        -0x7t
        -0x16t
        -0x5t
        -0x4t
        -0xet
        -0x9t
        -0x10t
        -0x6bt
        -0x69t
        -0x76t
        -0x77t
        -0x76t
        -0x75t
        -0x72t
        -0x6dt
        -0x76t
        -0x77t
        0x74t
        -0x69t
        -0x72t
        -0x76t
        -0x6dt
        -0x67t
        -0x7at
        -0x67t
        -0x72t
        -0x6ct
        -0x6dt
        0x70t
        -0x76t
        -0x62t
        -0x30t
        -0x37t
        -0x3ct
        -0x34t
        -0x30t
        -0x40t
        -0x5ct
        -0x41t
        -0x27t
        -0x29t
        -0x37t
        -0x4et
        -0x3bt
        -0x28t
        -0x33t
        -0x26t
        -0x37t
        -0x59t
        -0x28t
        -0x3bt
        -0x5at
        -0x27t
        -0x28t
        -0x28t
        -0x2dt
        -0x2et
        -0x29t
        -0x36t
        -0x3bt
        -0x3at
        -0x30t
        -0x53t
        -0x30t
        -0x38t
        -0x38t
        -0x3at
        -0x2dt
        -0x16t
        -0x23t
        -0x28t
        -0x27t
        -0x1dt
        -0x3ft
        -0x3ct
        -0x48t
        -0x78t
        0x7bt
        0x76t
        0x77t
        -0x7ft
        0x65t
        0x77t
        0x77t
        0x7dt
        0x66t
        0x7bt
        0x7ft
        0x77t
        -0x28t
        -0x35t
        -0x3at
        -0x39t
        -0x2ft
        -0x49t
        -0x4ct
        -0x52t
        -0x3t
        -0x10t
        -0x15t
        -0x14t
        -0xat
        -0x1at
        -0x5t
        -0x10t
        -0xct
        -0x14t
        -0x1at
        -0x9t
        -0xat
        -0xdt
        -0xdt
        -0x10t
        -0xbt
        -0x12t
        -0x1at
        -0x10t
        -0xbt
        -0x5t
        -0x14t
        -0x7t
        -0x3t
        -0x18t
        -0xdt
        -0x57t
        -0x64t
        -0x68t
        -0x56t
        -0x79t
        -0x54t
        -0x5dt
        -0x68t
    .end array-data
.end method

.method private A04(Landroid/content/Intent;)V
    .locals 4

    .line 21905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-nez v0, :cond_0

    .line 21906
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/At;->A05(Ljava/lang/String;)V

    .line 21907
    return-void

    .line 21908
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A00:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A07:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 21909
    const/16 v2, 0x8b

    const/16 v1, 0x25

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/At;->A05(Ljava/lang/String;)V

    .line 21910
    return-void

    .line 21911
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/At;->A06:Ljava/lang/String;

    const/16 v2, 0xed

    const/16 v1, 0x12

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21912
    sget-object v3, Lcom/facebook/ads/redexgen/X/KK;->A05:Lcom/facebook/ads/redexgen/X/KK;

    const/16 v2, 0x142

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11f

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21914
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/At;->A05:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v3

    .line 21915
    :cond_2
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21916
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/At;->A07:Ljava/lang/String;

    const/16 v2, 0x10a

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21917
    const/16 v3, 0xd

    const/16 v2, 0xcd

    const/16 v1, 0x18

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21918
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v3

    const/16 v2, 0x112

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21919
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/At;->A0D:Ljava/lang/String;

    const/16 v2, 0xe5

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A04:Lcom/facebook/ads/redexgen/X/7y;

    .line 21921
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0W()Landroid/os/Bundle;

    move-result-object v3

    .line 21922
    const/16 v2, 0xff

    const/16 v1, 0xb

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21923
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getVideoProgressReportIntervalMs()I

    move-result v3

    .line 21924
    const/16 v2, 0x127

    const/16 v1, 0x1b

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21925
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21926
    return-void
.end method

.method private A05(Ljava/lang/String;)V
    .locals 7

    .line 21927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 21928
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A1q:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 21929
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21930
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 21931
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21932
    sget-object v0, Lcom/facebook/ads/redexgen/X/At;->A0F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21933
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0i()V
    .locals 1

    .line 21934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A01:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 21935
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->onCtaBroadcast()V

    .line 21936
    :cond_0
    return-void
.end method

.method public final A0j()V
    .locals 7

    .line 21937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v2

    .line 21938
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/At;->A04(Landroid/content/Intent;)V

    .line 21939
    const/4 v1, 0x0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 21940
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/At;->setVisibility(I)V

    .line 21941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kp;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21942
    :catch_0
    move-exception v5

    .line 21943
    .local v0, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 21944
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 21945
    const/16 v2, 0xb0

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 21946
    const/16 v2, 0x61

    const/16 v1, 0x11

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21947
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/redexgen/X/MH;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A03:Lcom/facebook/ads/redexgen/X/MH;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 21949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A0D:Ljava/lang/String;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 21950
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PD;->onAttachedToWindow()V

    .line 21951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A08:Lcom/facebook/ads/redexgen/X/14;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/14;->A03()V

    .line 21952
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 21953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A08:Lcom/facebook/ads/redexgen/X/14;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/14;->A04()V

    .line 21954
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PD;->onDetachedFromWindow()V

    .line 21955
    return-void
.end method

.method public setAdEventManager(Lcom/facebook/ads/redexgen/X/JC;)V
    .locals 0

    .line 21956
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A02:Lcom/facebook/ads/redexgen/X/JC;

    .line 21957
    return-void
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-eqz v0, :cond_0

    .line 21959
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7y;->A0h()V

    .line 21960
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A05:Ljava/lang/String;

    .line 21961
    if-eqz p1, :cond_1

    .line 21962
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/At;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/At;->A02:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/lang/String;)V

    .line 21963
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A04:Lcom/facebook/ads/redexgen/X/7y;

    .line 21964
    return-void

    .line 21965
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableBackgroundVideo(Z)V
    .locals 1

    .line 21966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->setBackgroundPlaybackEnabled(Z)V

    .line 21967
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/MH;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/MH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A03:Lcom/facebook/ads/redexgen/X/MH;

    .line 21969
    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/NativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21970
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A01:Lcom/facebook/ads/NativeAd;

    .line 21971
    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21972
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A06:Ljava/lang/String;

    .line 21973
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21974
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-nez v0, :cond_0

    .line 21975
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/At;->A05(Ljava/lang/String;)V

    .line 21976
    return-void

    .line 21977
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A07:Ljava/lang/String;

    .line 21978
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setVideoMPD(Ljava/lang/String;)V

    .line 21979
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21980
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/At;->A04:Lcom/facebook/ads/redexgen/X/7y;

    if-nez v0, :cond_0

    .line 21981
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/At;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/At;->A05(Ljava/lang/String;)V

    .line 21982
    return-void

    .line 21983
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/At;->A00:Landroid/net/Uri;

    .line 21984
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setVideoURI(Landroid/net/Uri;)V

    .line 21985
    return-void
.end method
