.class public final Lcom/facebook/ads/redexgen/X/2o;
.super Lcom/facebook/ads/redexgen/X/C3;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Gg;

.field public final A01:Lcom/facebook/ads/redexgen/X/Gm;

.field public final A02:Lcom/facebook/ads/redexgen/X/Gp;

.field public final A03:Lcom/facebook/ads/redexgen/X/IM;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Gk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2o;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2o;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5931
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C3;-><init>(Ljava/lang/String;)V

    .line 5932
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gp;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:Lcom/facebook/ads/redexgen/X/Gp;

    .line 5933
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 5934
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gm;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    .line 5935
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gg;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:Lcom/facebook/ads/redexgen/X/Gg;

    .line 5936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    .line 5937
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 5

    .line 5938
    const/4 v3, -0x1

    .line 5939
    .local p0, "foundEvent":I
    const/4 v4, 0x0

    .line 5940
    .local v3, "currentInputPosition":I
    :goto_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 5941
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 5942
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v3

    .line 5943
    .local v4, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 5944
    const/4 v3, 0x0

    goto :goto_0

    .line 5945
    :cond_0
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5946
    const/4 v3, 0x2

    goto :goto_0

    .line 5947
    :cond_1
    const/16 v2, 0x2c

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5948
    const/4 v3, 0x1

    goto :goto_0

    .line 5949
    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    .line 5950
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    .line 5951
    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const-string v1, "wICfUq6cRqM8QSRmpIxw59la3C0B28Gh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "UCa9DZD1GiApguhXmO9GHmNOpL0AOlSY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/az;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 5952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 5953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0F()V

    .line 5954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A05(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 5956
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const-string v1, "yIxA0yuP9hQGFN4fa3NPu5J4rTDeCvUe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    goto :goto_0

    .line 5957
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5958
    .local p0, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCue;>;"
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v5

    .local p2, "event":I
    if-eqz v5, :cond_8

    .line 5959
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    .line 5960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A05(Lcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_1

    .line 5961
    :cond_3
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const-string v1, "ccU6TSbM8V8OtEl7BaomB3QNW5j0Q6sw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_6

    .line 5962
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const-string v1, "YowA8l8uvxZXaVypumJ5yBUyc4sOcAQV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HKbmxYlwqclncAnOAoFTo7zzjR7PE75y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 5963
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    .line 5964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A0F(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Gk;

    move-result-object v1

    .line 5965
    .local p1, "styleBlock":Lcom/facebook/ads/redexgen/X/Gk;
    if-eqz v1, :cond_2

    .line 5966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const-string v1, "RankGpg1WKksvMbJf2r1Mj9i4dXCVfm7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "PTwUfk4233EGPZYG7vYxG5zvlLDyWplM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    goto :goto_2

    .line 5967
    :cond_6
    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    .line 5968
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:Lcom/facebook/ads/redexgen/X/Gp;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A0H(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0E()Lcom/facebook/ads/redexgen/X/ay;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0F()V

    goto/16 :goto_1

    .line 5971
    .end local p1    # "styleBlock":Lcom/facebook/ads/redexgen/X/Gk;
    :cond_7
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5972
    :cond_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/az;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/az;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2o;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2o;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x38t
        0x6bt
        0x6ct
        0x61t
        0x74t
        0x7dt
        0x38t
        0x7at
        0x74t
        0x77t
        0x7bt
        0x73t
        0x38t
        0x6ft
        0x79t
        0x6bt
        0x38t
        0x7et
        0x77t
        0x6dt
        0x76t
        0x7ct
        0x38t
        0x79t
        0x7et
        0x6ct
        0x7dt
        0x6at
        0x38t
        0x6ct
        0x70t
        0x7dt
        0x38t
        0x7et
        0x71t
        0x6at
        0x6bt
        0x6ct
        0x38t
        0x7bt
        0x6dt
        0x7dt
        0x36t
        0x34t
        0x35t
        0x2et
        0x3ft
        0x1ct
        0x1bt
        0x16t
        0x3t
        0xat
        0x1dt
        0x2ft
        0x28t
        0x3ct
        0x3et
        0x3et
        0xet
        0x2ft
        0x29t
        0x25t
        0x2et
        0x2ft
        0x38t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CMeD5mXDZDTfb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fWYAWHkLFKDlflVtn3klkQMszSy2czx5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "00RFRgIDsqiIARLTNA3N6SPhWhBdnLh1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "U8JLQKkyCBG48OlAsiyvwZYOetZ2qreJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pY35d7af18sebuviuQ2bLCANBl7hHJuY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "f8ToU2BaHxZg9tVTog2hKPYEgQcC6j0M"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sxXavdrivd5JbbwFv9VJPSRnNTBEZ25u"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aixApfSzl80yG78LfLrSNW905rKMIX1l"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 1

    .line 5973
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5974
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 5975
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2o;->A01([BIZ)Lcom/facebook/ads/redexgen/X/az;

    move-result-object v0

    return-object v0
.end method
