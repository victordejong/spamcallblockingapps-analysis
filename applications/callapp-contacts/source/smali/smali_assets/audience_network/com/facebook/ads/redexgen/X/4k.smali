.class public final Lcom/facebook/ads/redexgen/X/4k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4i;,
        Lcom/facebook/ads/redexgen/X/4j;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/So;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/So<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            "Lcom/facebook/ads/redexgen/X/4i;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/2O;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2O<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4k;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4k;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12054
    new-instance v0, Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/So;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    .line 12055
    new-instance v0, Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2O;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;
    .locals 7

    .line 12056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A09(Ljava/lang/Object;)I

    move-result v4

    .line 12057
    .local p0, "index":I
    const/4 v6, 0x0

    if-gez v4, :cond_0

    .line 12058
    return-object v6

    .line 12059
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "RHZyqyNxFTR6m1AGKtHrgUPkGPlMmpqW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0C(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4i;

    .line 12060
    .local p2, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-eqz v3, :cond_7

    iget v5, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/2addr v5, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    if-eqz v5, :cond_7

    .line 12061
    :goto_0
    iget v1, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12062
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 12063
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12064
    .local p1, "info":Lcom/facebook/ads/redexgen/X/4F;
    .restart local p1    # "info":Lcom/facebook/ads/redexgen/X/4F;
    :goto_1
    iget v6, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "LDlhycQGZBtlD6IMRSONBH11SqKxQWfy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "DCgYh9gvbnrpKHe96mnmPCff01xTtOfJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    and-int/lit8 v0, v6, 0xc

    if-nez v0, :cond_1

    .line 12065
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0B(I)Ljava/lang/Object;

    .line 12066
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4i;->A02(Lcom/facebook/ads/redexgen/X/4i;)V

    .line 12067
    :cond_1
    return-object v5

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "9mfdPnfY5V3FVy8Q2gQ6uDsmmOIXndsz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ekMjHGebRREBiMI4gT56rHDvbCCByAvd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v6, 0xc

    if-nez v0, :cond_1

    goto :goto_2

    .line 12068
    .end local p1    # "info":Lcom/facebook/ads/redexgen/X/4F;
    :cond_3
    const/16 v5, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "AZoo0ocwP6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Mxzo3dXJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne p2, v5, :cond_6

    .line 12069
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "nmlFinlgwywloeecjd6T2DESHLiwmDf9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PTtZpiu630HNHwiWHX52cLnM9FmNSlfo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v5, :cond_7

    goto/16 :goto_0

    .line 12070
    .end local p1
    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12071
    :cond_7
    return-object v6

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

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

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4k;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x3bt
        -0x3dt
        -0x3ct
        0x70t
        -0x40t
        -0x3et
        -0x41t
        -0x3at
        -0x47t
        -0x4ct
        -0x4bt
        0x70t
        -0x4at
        -0x44t
        -0x4ft
        -0x49t
        0x70t
        -0x60t
        -0x5et
        -0x6bt
        0x70t
        -0x41t
        -0x3et
        0x70t
        -0x60t
        -0x61t
        -0x5dt
        -0x5ct
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WXpxlTya5H7kpLIT7UUfzIgXOYds4Vfk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JVDNa5tAOP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "C1CZfaM4quGDjTOWU4x6KBGTC5pPu33J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VymAVHyd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "K8p7KG0zsDoAf7GmBTiUCUpdPzk9iS4o"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MydLOSuorekD0WEADrXIrTB2aFx1Ufvf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1zIVUT6Fxq52O6VZbnoN9TsXnO1jN3fj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "z9Q03TMU5lxkReREt3I6AE4mCa6N3G46"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12072
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12073
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 12074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2O;->A08(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    return-object v0
.end method

.method public final A07()V
    .locals 1

    .line 12075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2X;->clear()V

    .line 12076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->A09()V

    .line 12077
    return-void
.end method

.method public final A08()V
    .locals 0

    .line 12078
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A01()V

    .line 12079
    return-void
.end method

.method public final A09(JLcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 12080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2O;->A0B(JLjava/lang/Object;)V

    .line 12081
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 12082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12083
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12084
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12086
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12087
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 12088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12089
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12090
    return-void

    .line 12091
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12092
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 12093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->A06()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 12094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2O;->A07(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 12095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2O;->A0A(I)V

    .line 12096
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12097
    .local p0, "info":Lcom/facebook/ads/redexgen/X/4i;
    if-eqz v0, :cond_1

    .line 12098
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4i;->A02(Lcom/facebook/ads/redexgen/X/4i;)V

    .line 12099
    :cond_1
    return-void

    .line 12100
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 0

    .line 12101
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 12102
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 2

    .line 12103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12104
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12105
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12107
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12108
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12109
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 2

    .line 12110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12111
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12112
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12114
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    .line 12115
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12116
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 2

    .line 12117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12118
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12119
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12121
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12122
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12123
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4j;)V
    .locals 8

    .line 12124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2X;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .local p0, "index":I
    :goto_0
    if-ltz v4, :cond_8

    .line 12125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0A(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4c;

    .line 12126
    .local p1, "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0B(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4i;

    .line 12127
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4i;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    const/4 v0, 0x3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    .line 12128
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/4j;->AER(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 12129
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/4i;->A02(Lcom/facebook/ads/redexgen/X/4i;)V

    .line 12130
    .end local p1    # "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0    # "record":Lcom/facebook/ads/redexgen/X/4i;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 12131
    :cond_1
    iget v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 12132
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    if-nez v0, :cond_2

    .line 12133
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/4j;->AER(Lcom/facebook/ads/redexgen/X/4c;)V

    goto :goto_1

    .line 12134
    :cond_2
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "fJVAe19tdP"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const-string v1, "3fJsXDGb"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-interface {p1, v3, v7, v6}, Lcom/facebook/ads/redexgen/X/4j;->ACc(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12135
    :cond_3
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    const/16 v0, 0xe

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    .line 12136
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACa(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12137
    :cond_4
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    const/16 v0, 0xc

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_5

    .line 12138
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACe(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12139
    :cond_5
    iget v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 12140
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    const/4 v0, 0x0

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACc(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12141
    :cond_6
    iget v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 12142
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACa(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12143
    .end local p0    # "index":I
    :cond_8
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 2

    .line 12144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12145
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 1

    .line 12146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12147
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
