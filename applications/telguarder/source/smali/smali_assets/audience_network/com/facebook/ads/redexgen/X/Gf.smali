.class public final Lcom/facebook/ads/redexgen/X/Gf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle$OptionalBoolean;,
        Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle$FontSizeUnit;,
        Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/text/Layout$Alignment;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/Gf;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gf;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gf;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34986
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:I

    .line 34987
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:I

    .line 34988
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    .line 34989
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    .line 34990
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    .line 34991
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Gf;Z)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 4

    .line 34992
    if-eqz p1, :cond_8

    .line 34993
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0C:Z

    if-nez v0, :cond_0

    iget-boolean v3, p1, Lcom/facebook/ads/redexgen/X/Gf;->A0C:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    const-string v1, "UwvIKjgs48LbakSy6n6XxiRXeVEXR1YX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4MjC6ZkJ6tJUJeafJGtppXuLsS3LWtb0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 34994
    iget v3, p1, Lcom/facebook/ads/redexgen/X/Gf;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    const-string v1, "bXGGQt5A"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Gf;->A0C(I)Lcom/facebook/ads/redexgen/X/Gf;

    .line 34995
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 34996
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    .line 34997
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    if-ne v0, v1, :cond_2

    .line 34998
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    .line 34999
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A09:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 35000
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A09:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A09:Ljava/lang/String;

    .line 35001
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:I

    if-ne v0, v1, :cond_4

    .line 35002
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:I

    .line 35003
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:I

    if-ne v0, v1, :cond_5

    .line 35004
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:I

    .line 35005
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 35006
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A08:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:Landroid/text/Layout$Alignment;

    .line 35007
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    if-ne v0, v1, :cond_7

    .line 35008
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    .line 35009
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:F

    .line 35010
    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0B:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A0B:Z

    if-eqz v0, :cond_8

    .line 35011
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0B(I)Lcom/facebook/ads/redexgen/X/Gf;

    .line 35012
    :cond_8
    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gf;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x35

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

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gf;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x11t
        0x32t
        0x30t
        0x38t
        0x34t
        0x21t
        0x3ct
        0x26t
        0x3dt
        0x37t
        0x73t
        0x30t
        0x3ct
        0x3ft
        0x3ct
        0x21t
        0x73t
        0x3bt
        0x32t
        0x20t
        0x73t
        0x3dt
        0x3ct
        0x27t
        0x73t
        0x31t
        0x36t
        0x36t
        0x3dt
        0x73t
        0x37t
        0x36t
        0x35t
        0x3at
        0x3dt
        0x36t
        0x37t
        0x7dt
        0x6bt
        0x42t
        0x43t
        0x59t
        0xdt
        0x4et
        0x42t
        0x41t
        0x42t
        0x5ft
        0xdt
        0x45t
        0x4ct
        0x5et
        0xdt
        0x43t
        0x42t
        0x59t
        0xdt
        0x4ft
        0x48t
        0x48t
        0x43t
        0xdt
        0x49t
        0x48t
        0x4bt
        0x44t
        0x43t
        0x48t
        0x49t
        0x3t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cAOYTgJ9uCy7hgcfuns9WoNM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xxA8OgPhzkShcp00X86v9N79tRJX8mFo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o1qAmfT5FDzcUIOoDWsgaNpyOsjhg5HL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3cmw8lphoZ5enYc1nKZ5Zd7SjWQvSN3G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PZK6tYLRDnp9e0x9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mF1C4tGv5jmOUoKnfBhIYZI8YaKEqcaT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iuqYe4mWMEb20WbfWA79IJrscuw3cc8Z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VMMVTObjfAdBB0bum6l26miog9cMu1Ot"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()F
    .locals 1

    .line 35013
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:F

    return v0
.end method

.method public final A05()I
    .locals 3

    .line 35014
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0B:Z

    if-eqz v0, :cond_0

    .line 35015
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    return v0

    .line 35016
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()I
    .locals 3

    .line 35017
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0C:Z

    if-eqz v0, :cond_0

    .line 35018
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A03:I

    return v0

    .line 35019
    :cond_0
    const/16 v2, 0x26

    const/16 v1, 0x20

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A07()I
    .locals 1

    .line 35020
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    return v0
.end method

.method public final A08()I
    .locals 5

    .line 35021
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    if-ne v0, v1, :cond_0

    .line 35022
    return v1

    .line 35023
    :cond_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A0F:[Ljava/lang/String;

    const-string v1, "QUoEjCjmHtmCJZtRATS5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v2, 0x1

    if-ne v4, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    :cond_1
    or-int/2addr v1, v3

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A09()Landroid/text/Layout$Alignment;
    .locals 1

    .line 35024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final A0A(F)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 0

    .line 35025
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:F

    .line 35026
    return-object p0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35027
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    .line 35028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0B:Z

    .line 35029
    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 2

    .line 35030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0D:Lcom/facebook/ads/redexgen/X/Gf;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 35031
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A03:I

    .line 35032
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0C:Z

    .line 35033
    return-object p0

    .line 35034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 0

    .line 35035
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    .line 35036
    return-object p0
.end method

.method public final A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 0

    .line 35037
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:Landroid/text/Layout$Alignment;

    .line 35038
    return-object p0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35039
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A00(Lcom/facebook/ads/redexgen/X/Gf;Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0D:Lcom/facebook/ads/redexgen/X/Gf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 35041
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A09:Ljava/lang/String;

    .line 35042
    return-object p0

    .line 35043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 0

    .line 35044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0A:Ljava/lang/String;

    .line 35045
    return-object p0
.end method

.method public final A0I(Z)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0D:Lcom/facebook/ads/redexgen/X/Gf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 35047
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    .line 35048
    return-object p0

    .line 35049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0D:Lcom/facebook/ads/redexgen/X/Gf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 35051
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    .line 35052
    return-object p0

    .line 35053
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0K(Z)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0D:Lcom/facebook/ads/redexgen/X/Gf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 35055
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:I

    .line 35056
    return-object p0

    .line 35057
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0L(Z)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 1

    .line 35058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0D:Lcom/facebook/ads/redexgen/X/Gf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 35059
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:I

    .line 35060
    return-object p0

    .line 35061
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0M()Ljava/lang/String;
    .locals 1

    .line 35062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0N()Ljava/lang/String;
    .locals 1

    .line 35063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0O()Z
    .locals 1

    .line 35064
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0B:Z

    return v0
.end method

.method public final A0P()Z
    .locals 1

    .line 35065
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A0C:Z

    return v0
.end method

.method public final A0Q()Z
    .locals 2

    .line 35066
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R()Z
    .locals 2

    .line 35067
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
