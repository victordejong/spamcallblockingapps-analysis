.class public final Lcom/facebook/ads/redexgen/X/2o;
.super Lcom/facebook/ads/redexgen/X/Bb;
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

    .line 6043
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6044
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gp;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:Lcom/facebook/ads/redexgen/X/Gp;

    .line 6045
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 6046
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gm;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    .line 6047
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gg;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:Lcom/facebook/ads/redexgen/X/Gg;

    .line 6048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    .line 6049
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 5

    .line 6050
    const/4 v1, -0x1

    .line 6051
    .local p0, "foundEvent":I
    const/4 v4, 0x0

    .line 6052
    .local v1, "currentInputPosition":I
    :goto_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 6053
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 6054
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v3

    .line 6055
    .local v4, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 6056
    const/4 v1, 0x0

    goto :goto_0

    .line 6057
    :cond_0
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6058
    const/4 v1, 0x2

    goto :goto_0

    .line 6059
    :cond_1
    const/16 v2, 0x2c

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6060
    const/4 v1, 0x1

    goto :goto_0

    .line 6061
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 6062
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 6063
    return v1
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/U7;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 6065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0E()V

    .line 6066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A05(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 6068
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6069
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6070
    .local p0, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCue;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v5

    .local p2, "event":I
    if-eqz v5, :cond_6

    .line 6071
    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    .line 6072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A05(Lcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_1

    .line 6073
    :cond_2
    const/4 v0, 0x2

    if-ne v5, v0, :cond_3

    .line 6074
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    .line 6076
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A0F(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Gk;

    move-result-object v1

    .line 6077
    .local p1, "styleBlock":Lcom/facebook/ads/redexgen/X/Gk;
    if-eqz v1, :cond_1

    .line 6078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6079
    :cond_3
    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    const-string v1, "EpIYkVbmDK2ckMK8TAbo8g42IzuSEZRb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "SBd45c6ihDjkYyN9dijd4EtdHtiaSZAW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_1

    .line 6080
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:Lcom/facebook/ads/redexgen/X/Gp;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/util/List;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A0H(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0D()Lcom/facebook/ads/redexgen/X/U8;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:Lcom/facebook/ads/redexgen/X/Gm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0E()V

    goto :goto_1

    .line 6083
    .end local p1    # "styleBlock":Lcom/facebook/ads/redexgen/X/Gk;
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6084
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/U7;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/U7;-><init>(Ljava/util/List;)V

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

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x41

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
        -0x25t
        -0x46t
        0xdt
        0xet
        0x13t
        0x6t
        -0x1t
        -0x46t
        -0x4t
        0x6t
        0x9t
        -0x3t
        0x5t
        -0x46t
        0x11t
        -0x5t
        0xdt
        -0x46t
        0x0t
        0x9t
        0xft
        0x8t
        -0x2t
        -0x46t
        -0x5t
        0x0t
        0xet
        -0x1t
        0xct
        -0x46t
        0xet
        0x2t
        -0x1t
        -0x46t
        0x0t
        0x3t
        0xct
        0xdt
        0xet
        -0x46t
        -0x3t
        0xft
        -0x1t
        -0x38t
        -0x71t
        -0x70t
        -0x6bt
        -0x7at
        -0x3ct
        -0x3bt
        -0x36t
        -0x43t
        -0x4at
        -0x4ct
        -0x3et
        -0x41t
        -0x2dt
        -0x2ft
        -0x2ft
        -0x5ft
        -0x3et
        -0x40t
        -0x34t
        -0x3ft
        -0x3et
        -0x31t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MReWKHwMrSxeAORT6QQElrz1zOx8m47j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nnngBY553tHUGCQbp0RvsU7fV9vw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uQQJQ8Tyf9e93eA7yO6aCHlsMtJX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hxe4hSRRo0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "J2Vl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "P5AUsbZuQ0RA3xk1R0rtVNV5afd08DGT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XQRwvw6uwkxXZz6V20Zh1av2rw1kli7Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zdpm2CUFIG0JRUJXjpqN81Th1AfwYeAS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2o;->A06:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 1

    .line 6085
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6086
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

    .line 6087
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2o;->A01([BIZ)Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v0

    return-object v0
.end method
