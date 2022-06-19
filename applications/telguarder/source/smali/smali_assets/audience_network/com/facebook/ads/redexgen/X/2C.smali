.class public final Lcom/facebook/ads/redexgen/X/2C;
.super Lcom/facebook/ads/redexgen/X/3c;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ID;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Vy;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaFormat;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/B6;

.field public final A0D:Lcom/facebook/ads/redexgen/X/BC;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2C;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2C;->A06()V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/B7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/redexgen/X/As;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/B7;",
            "Lcom/facebook/ads/redexgen/X/As;",
            "[",
            "Lcom/facebook/ads/redexgen/X/Az;",
            ")V"
        }
    .end annotation

    .line 4621
    .local v1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v7, Lcom/facebook/ads/redexgen/X/W0;

    move-object/from16 v0, p8

    invoke-direct {v7, p7, v0}, Lcom/facebook/ads/redexgen/X/W0;-><init>(Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;)V

    move-object v0, p0

    move-object v6, p6

    move-object v5, p5

    move v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/2C;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;Lcom/facebook/ads/redexgen/X/BC;)V

    .line 4622
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;Lcom/facebook/ads/redexgen/X/BC;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/B7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/B7;",
            "Lcom/facebook/ads/redexgen/X/BC;",
            ")V"
        }
    .end annotation

    .line 4623
    .local p5, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3c;-><init>(ILcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Z)V

    .line 4624
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0B:Landroid/content/Context;

    .line 4625
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    .line 4626
    new-instance v0, Lcom/facebook/ads/redexgen/X/B6;

    invoke-direct {v0, p5, p6}, Lcom/facebook/ads/redexgen/X/B6;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    .line 4627
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vy;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Vy;-><init>(Lcom/facebook/ads/redexgen/X/2C;Lcom/facebook/ads/redexgen/X/BQ;)V

    invoke-interface {p7, v0}, Lcom/facebook/ads/redexgen/X/BC;->ADn(Lcom/facebook/ads/redexgen/X/BA;)V

    .line 4628
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 5

    .line 4629
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4630
    const/4 v4, 0x1

    .line 4631
    .local p0, "needsRawDecoderWorkaround":Z
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-ne v1, v0, :cond_0

    .line 4632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4633
    .local p1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 4634
    const/16 v2, 0x25

    const/16 v1, 0x19

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4635
    const/4 v4, 0x0

    .line 4636
    .end local p1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz v4, :cond_1

    .line 4637
    const/4 v0, -0x1

    return v0

    .line 4638
    .end local p0    # "needsRawDecoderWorkaround":Z
    :cond_1
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    return v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;[Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 1

    .line 4639
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2C;->A00(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    .line 4640
    .local p0, "maxInputSize":I
    return v0
.end method

.method private final A02(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 4641
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 4642
    .local p0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4643
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4644
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4645
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 4646
    const/16 v2, 0x63

    const/16 v1, 0xe

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p3}, Lcom/facebook/ads/redexgen/X/Dq;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 4647
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 4648
    const/4 v7, 0x0

    const/16 v6, 0x75

    const/16 v5, 0x8

    const/16 v3, 0x41

    sget-object v1, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const-string v1, "xOC0KowF2KBvtiHgpSs7fTKAiyVs3fM2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "BHL8iGtnKWLpUHugzWNEuXsnQUpTpQhb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v6, v5, v3}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4649
    :cond_0
    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/2C;)Lcom/facebook/ads/redexgen/X/B6;
    .locals 0

    .line 4650
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2C;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 6

    .line 4651
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2C;->A81()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BC;->A68(Z)J

    move-result-wide v2

    .line 4652
    .local p0, "newCurrentPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 4653
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A08:Z

    if-eqz v0, :cond_1

    .line 4654
    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/2C;->A05:J

    .line 4655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A08:Z

    .line 4656
    :cond_0
    return-void

    .line 4657
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A05:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x97

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2C;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x10t
        -0x12t
        -0x7t
        -0x31t
        -0xct
        -0x1at
        -0x1ct
        -0x31t
        0x2t
        0x2t
        0x4t
        -0x31t
        0x5t
        0x6t
        0x4t
        -0x7et
        -0x80t
        -0x75t
        0x61t
        -0x66t
        -0x5et
        -0x5et
        -0x66t
        -0x61t
        -0x68t
        0x61t
        -0x5bt
        -0x6ct
        -0x56t
        0x61t
        -0x69t
        -0x68t
        -0x6at
        -0x5et
        -0x69t
        -0x68t
        -0x5bt
        -0xft
        -0x2t
        -0xct
        0x2t
        -0x1t
        -0x7t
        -0xct
        -0x42t
        0x3t
        -0x1t
        -0xat
        0x4t
        0x7t
        -0xft
        0x2t
        -0xbt
        -0x42t
        -0x4t
        -0xbt
        -0xft
        -0x2t
        -0xet
        -0xft
        -0xdt
        -0x5t
        -0x27t
        -0x13t
        -0x24t
        -0x1ft
        -0x19t
        -0x59t
        -0x16t
        -0x27t
        -0x11t
        0x4t
        0x9t
        0x2t
        0xft
        0xft
        0x6t
        0xdt
        -0x32t
        0x4t
        0x10t
        0x16t
        0xft
        0x15t
        -0xat
        -0xdt
        0x0t
        -0x3t
        -0x6t
        0x2t
        -0xdt
        -0x68t
        -0x6bt
        -0x5et
        -0x61t
        -0x5ft
        -0x64t
        -0x5ct
        -0x6bt
        -0x66t
        -0x72t
        -0x5bt
        0x5at
        -0x6at
        -0x65t
        -0x63t
        -0x5et
        -0x5ft
        0x5at
        -0x60t
        -0x6at
        -0x59t
        -0x6et
        -0xat
        -0xet
        -0xat
        -0x12t
        -0x2at
        -0x28t
        -0x31t
        -0x2bt
        -0x28t
        -0x31t
        -0x26t
        -0x21t
        -0x5ft
        -0x71t
        -0x65t
        -0x62t
        -0x66t
        -0x6dt
        0x5bt
        -0x60t
        -0x71t
        -0x5et
        -0x6dt
        -0x29t
        -0x3bt
        -0x2ft
        -0x29t
        -0x27t
        -0x2et
        -0x35t
        -0x26t
        -0x3bt
        -0x2et
        -0x31t
        -0x3at
        -0x34t
        -0x2ct
        -0x3bt
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Xv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JHC3pa0u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "C"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ug8n1qkHjly9hMrxztwEeg99QfhrA3hz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aHQncHUnzRBhwS5g8nlWQnjXEp2sV5YA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8fxhZPqKm185Js4gLzF5buX0LYK5BzLZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UAmaLmRDsdTNh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Mp3ZBFWyQB0bcX0tj2IvYariv0n49IR8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/2C;Z)Z
    .locals 0

    .line 4658
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2C;->A08:Z

    return p1
.end method

.method public static A09(Ljava/lang/String;)Z
    .locals 3

    .line 4659
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 4660
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    .line 4661
    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 4662
    const/16 v2, 0x8f

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 4663
    const/16 v2, 0x54

    const/4 v1, 0x7

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 4664
    const/16 v2, 0x5b

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4665
    :goto_0
    return v0

    .line 4666
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0A(Ljava/lang/String;)Z
    .locals 2

    .line 4667
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IF;->A00(Ljava/lang/String;)I

    move-result v1

    .line 4668
    .local p0, "encoding":I
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BC;->A80(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A15()V
    .locals 3

    .line 4669
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->ACz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4670
    :try_start_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A15()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 4672
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4673
    return-void

    .line 4674
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 4675
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4676
    throw v2

    .line 4677
    :catchall_1
    move-exception v2

    .line 4678
    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A15()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 4680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4681
    throw v2

    .line 4682
    :catchall_2
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 4683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4684
    throw v2
.end method

.method public final A16()V
    .locals 1

    .line 4685
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A16()V

    .line 4686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->ACT()V

    .line 4687
    return-void
.end method

.method public final A17()V
    .locals 1

    .line 4688
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2C;->A05()V

    .line 4689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->pause()V

    .line 4690
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A17()V

    .line 4691
    return-void
.end method

.method public final A18(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4692
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3c;->A18(JZ)V

    .line 4693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->reset()V

    .line 4694
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2C;->A05:J

    .line 4695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A07:Z

    .line 4696
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A08:Z

    .line 4697
    return-void
.end method

.method public final A19(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4698
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3c;->A19(Z)V

    .line 4699
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A05(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4700
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A14()Lcom/facebook/ads/redexgen/X/AZ;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    .line 4701
    .local p0, "tunnelingAudioSessionId":I
    if-eqz v1, :cond_0

    .line 4702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BC;->A57(I)V

    .line 4703
    :goto_0
    return-void

    .line 4704
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const-string v1, "s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/BC;->A4l()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1D(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 1

    .line 4705
    const/4 v0, 0x0

    return v0
.end method

.method public final A1E(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 4706
    .local v5, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    move-object/from16 v4, p3

    iget-object v8, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 4707
    .local p0, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IF;->A0A(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4708
    return v3

    .line 4709
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v7, 0x15

    if-lt v0, v7, :cond_1

    const/16 v13, 0x20

    .line 4710
    .local p1, "tunnelingSupport":I
    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v12

    .line 4711
    .local v8, "supportsFormatDrm":Z
    const/4 v11, 0x4

    if-eqz v12, :cond_2

    .line 4712
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/2C;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4713
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Dk;->A6v()Lcom/facebook/ads/redexgen/X/De;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const-string v1, "Ze0O"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 4714
    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    .line 4715
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 4716
    :cond_2
    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BC;->A80(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    .line 4717
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/BC;->A80(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4718
    :cond_4
    return v10

    .line 4719
    :cond_5
    const/4 v5, 0x0

    .line 4720
    .local v3, "requiresSecureDecryption":Z
    iget-object v9, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_e

    .line 4721
    .local v13, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const-string v1, "zQscakpqwzJ0EzckUePgyWY5zfi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v9, :cond_6

    .line 4722
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    if-ge v1, v0, :cond_6

    .line 4723
    invoke-virtual {v9, v1}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03:Z

    or-int/2addr v5, v0

    .line 4724
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4725
    .end local v0    # "i":I
    :cond_6
    invoke-interface {p1, v8, v5}, Lcom/facebook/ads/redexgen/X/Dk;->A6E(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v2

    .line 4726
    .local v0, "decoderInfo":Lcom/facebook/ads/redexgen/X/De;
    if-nez v2, :cond_8

    .line 4727
    if-eqz v5, :cond_7

    invoke-interface {p1, v8, v3}, Lcom/facebook/ads/redexgen/X/Dk;->A6E(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4728
    const/4 v10, 0x2

    .line 4729
    :cond_7
    return v10

    .line 4730
    :cond_8
    if-nez v12, :cond_9

    .line 4731
    return v6

    .line 4732
    :cond_9
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-lt v0, v7, :cond_b

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    .line 4733
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/De;->A0H(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-eq v0, v1, :cond_b

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    .line 4734
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/De;->A0G(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 v3, 0x1

    .line 4735
    .local v1, "decoderCapable":Z
    :cond_c
    if-eqz v3, :cond_d

    .line 4736
    .local v4, "formatSupport":I
    :goto_2
    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    .line 4737
    :cond_d
    const/4 v11, 0x3

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/De;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 4738
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2C;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4739
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Dk;->A6v()Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    .line 4740
    .local p0, "passthroughDecoderInfo":Lcom/facebook/ads/redexgen/X/De;
    if-eqz v0, :cond_0

    .line 4741
    return-object v0

    .line 4742
    .end local p0    # "passthroughDecoderInfo":Lcom/facebook/ads/redexgen/X/De;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3c;->A1H(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    return-object v0
.end method

.method public final A1K()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4743
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->ACU()V

    .line 4744
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/BB; {:try_start_0 .. :try_end_0} :catch_0

    .line 4745
    :catch_0
    move-exception v1

    .line 4746
    .local p0, "e":Lcom/facebook/ads/redexgen/X/BB;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final A1N(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4747
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2C;->A06:Landroid/media/MediaFormat;

    if-eqz v3, :cond_0

    .line 4748
    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A00(Ljava/lang/String;)I

    move-result v3

    .line 4749
    .local p0, "encoding":I
    iget-object p2, p0, Lcom/facebook/ads/redexgen/X/2C;->A06:Landroid/media/MediaFormat;

    .line 4750
    .local p1, "format":Landroid/media/MediaFormat;
    .restart local p1    # "format":Landroid/media/MediaFormat;
    :goto_0
    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 4751
    .local p2, "channelCount":I
    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 4752
    .local v2, "sampleRate":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A09:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-ne v4, v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A00:I

    if-ge v0, v1, :cond_1

    .line 4753
    new-array v7, v0, [I

    .line 4754
    .local p2, "channelMap":[I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A00:I

    if-ge v1, v0, :cond_2

    .line 4755
    aput v1, v7, v1

    .line 4756
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4757
    .end local p0    # "encoding":I
    .end local p1    # "format":Landroid/media/MediaFormat;
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2C;->A04:I

    .line 4758
    .restart local p0    # "encoding":I
    goto :goto_0

    .line 4759
    .end local p2    # "channelMap":[I
    :cond_1
    const/4 v7, 0x0

    .line 4760
    .local v1, "channelMap":[I
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    const/4 v6, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/2C;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/2C;->A03:I

    invoke-interface/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/BC;->A43(IIII[III)V

    .line 4761
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/B8; {:try_start_0 .. :try_end_0} :catch_0

    .line 4762
    :catch_0
    move-exception v1

    .line 4763
    .local p2, "e":Lcom/facebook/ads/redexgen/X/B8;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final A1O(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4764
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3c;->A1O(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 4765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/B6;->A03(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 4766
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4767
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    .line 4768
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A04:I

    .line 4769
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A00:I

    .line 4770
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A02:I

    .line 4771
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A03:I

    .line 4772
    return-void

    .line 4773
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 5

    .line 4774
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A07:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4775
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A05:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 4776
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A05:J

    .line 4777
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A07:Z

    .line 4778
    :cond_1
    return-void
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/De;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5

    .line 4779
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A1C()[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/2C;->A01(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;[Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A01:I

    .line 4780
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A09(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A09:Z

    .line 4781
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/De;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0A:Z

    .line 4782
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v1

    .line 4783
    .local p0, "codecMimeType":Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A01:I

    invoke-direct {p0, p3, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A02(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 4784
    .local p1, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4785
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0A:Z

    if-eqz v0, :cond_0

    .line 4786
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/2C;->A06:Landroid/media/MediaFormat;

    .line 4787
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2C;->A06:Landroid/media/MediaFormat;

    iget-object v3, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2C;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    :goto_1
    return-void

    .line 4789
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A06:Landroid/media/MediaFormat;

    goto :goto_1

    .line 4790
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/lang/String;

    goto :goto_0
.end method

.method public final A1R(Ljava/lang/String;JJ)V
    .locals 6

    .line 4791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0C:Lcom/facebook/ads/redexgen/X/B6;

    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/B6;->A06(Ljava/lang/String;JJ)V

    .line 4792
    return-void
.end method

.method public final A1S(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4793
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0A:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 4794
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4795
    return v2

    .line 4796
    :cond_0
    if-eqz p11, :cond_1

    .line 4797
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A08:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A08:I

    .line 4799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->A7Z()V

    .line 4800
    return v2

    .line 4801
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0, p6, p9, p10}, Lcom/facebook/ads/redexgen/X/BC;->A7W(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4802
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A06:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A06:I

    .line 4804
    return v2

    .line 4805
    :cond_2
    return v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/B9; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/ads/redexgen/X/BB; {:try_start_0 .. :try_end_0} :catch_1

    .line 4806
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4807
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final A6k()Lcom/facebook/ads/redexgen/X/ID;
    .locals 0

    .line 4808
    return-object p0
.end method

.method public final A70()Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 4809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    return-object v0
.end method

.method public final A73()J
    .locals 5

    .line 4810
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A7H()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4811
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2C;->A05()V

    .line 4812
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/2C;->A05:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2C;->A0F:[Ljava/lang/String;

    const-string v1, "6z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A7a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4813
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 4814
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dh;->A7a(ILjava/lang/Object;)V

    .line 4815
    :goto_0
    return-void

    .line 4816
    :cond_0
    check-cast p2, Lcom/facebook/ads/redexgen/X/Ar;

    .line 4817
    .local p0, "audioAttributes":Lcom/facebook/ads/redexgen/X/Ar;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/BC;->ADg(Lcom/facebook/ads/redexgen/X/Ar;)V

    .line 4818
    goto :goto_0

    .line 4819
    .end local p0    # "audioAttributes":Lcom/facebook/ads/redexgen/X/Ar;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BC;->setVolume(F)V

    .line 4820
    goto :goto_0
.end method

.method public final A81()Z
    .locals 1

    .line 4821
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A81()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->A81()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8B()Z
    .locals 1

    .line 4822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BC;->A7d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A8B()Z

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

.method public final ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 4823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2C;->A0D:Lcom/facebook/ads/redexgen/X/BC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/BC;->ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    return-object v0
.end method
