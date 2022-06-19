.class public final Lcom/facebook/ads/redexgen/X/3J;
.super Lcom/facebook/ads/redexgen/X/Be;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GJ;,
        Lcom/facebook/ads/redexgen/X/GK;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/GJ;

.field public A02:Lcom/facebook/ads/redexgen/X/GK;

.field public A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/IL;

.field public final A07:Lcom/facebook/ads/redexgen/X/IM;

.field public final A08:[Lcom/facebook/ads/redexgen/X/GJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3J;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3J;->A09()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 8171
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;-><init>()V

    .line 8172
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    .line 8173
    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    .line 8174
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3J;->A05:I

    .line 8175
    const/16 v3, 0x8

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/GJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    .line 8176
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 8177
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/GJ;-><init>()V

    aput-object v0, v1, v2

    .line 8178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8179
    .end local p1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    .line 8180
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8181
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 8182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8183
    .local p0, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/cea/Cea708Cue;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    .line 8184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0I()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A06()Lcom/facebook/ads/redexgen/X/ap;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8187
    .end local v2    # "i":I
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8188
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 8189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    if-nez v0, :cond_0

    .line 8190
    return-void

    .line 8191
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A07()V

    .line 8192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    .line 8193
    return-void
.end method

.method private A03()V
    .locals 9

    .line 8194
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8195
    .local p0, "textTag":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8196
    .local v1, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8197
    .local v5, "penSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v5

    .line 8198
    .local v0, "italicsToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 8199
    .local v6, "underlineToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 8200
    .local v0, "edgeType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    .line 8201
    .local v1, "fontStyle":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/GJ;->A0D(IIIZZII)V

    .line 8202
    return-void
.end method

.method private A04()V
    .locals 6

    .line 8203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8204
    .local p0, "foregroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8205
    .local v5, "foregroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8206
    .local v3, "foregroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8207
    .local v0, "foregroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v4

    .line 8208
    .local v2, "foregroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8209
    .local v0, "backgroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8210
    .local v1, "backgroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8211
    .local v0, "backgroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8212
    .local v0, "backgroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v3

    .line 8213
    .local v4, "backgroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8215
    .local v0, "edgeR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8216
    .local v3, "edgeG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8217
    .local v0, "edgeB":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A00(III)I

    move-result v1

    .line 8218
    .local v0, "edgeColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0C(III)V

    .line 8219
    return-void
.end method

.method private A05()V
    .locals 3

    .line 8220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8222
    .local p0, "row":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8224
    .local v0, "column":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0B(II)V

    .line 8225
    return-void
.end method

.method private A06()V
    .locals 12

    .line 8226
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 8227
    .local v2, "fillO":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8228
    .local v1, "fillR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8229
    .local v5, "fillG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8230
    .local v0, "fillB":I
    invoke-static {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v5

    .line 8231
    .local v0, "fillColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    .line 8232
    .local v4, "borderType":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8233
    .local v4, "borderR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8234
    .local v8, "borderG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8235
    .local v0, "borderB":I
    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A00(III)I

    move-result v6

    .line 8236
    .local v0, "borderColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8237
    or-int/lit8 v8, v8, 0x4

    .line 8238
    .end local v4    # "borderR":I
    .local v3, "borderType":I
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v7

    .line 8239
    .local v0, "wordWrapToggle":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    .line 8240
    .local v0, "printDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v10

    .line 8241
    .local v6, "scrollDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 8242
    .local v0, "justification":I
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8243
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    .end local v0    # "justification":I
    .local v0, "borderB":I
    .end local v8    # "borderG":I
    .local v0, "borderG":I
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/GJ;->A0E(IIZIIII)V

    .line 8244
    return-void
.end method

.method private A07()V
    .locals 11

    .line 8245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x1

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eq v6, v4, :cond_0

    .line 8246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb4

    const/16 v1, 0x27

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    const/16 v1, 0x17

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const/16 v1, 0x12

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8247
    return-void

    .line 8248
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0D([BI)V

    .line 8249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8250
    .local p0, "serviceNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8251
    .local v0, "blockSize":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    .line 8252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 8254
    :cond_1
    if-nez v2, :cond_3

    .line 8255
    if-eqz v4, :cond_2

    .line 8256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x196

    const/16 v1, 0x1b

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x15

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8257
    :cond_2
    return-void

    .line 8258
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A05:I

    if-eq v4, v0, :cond_4

    .line 8259
    return-void

    .line 8260
    :cond_4
    const/4 v10, 0x0

    .line 8261
    .local v6, "cuesNeedUpdate":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    if-lez v0, :cond_f

    .line 8262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8263
    .local v0, "command":I
    const/16 v9, 0x10

    const/16 v7, 0xff

    const/16 v6, 0x9f

    const/16 v3, 0x7f

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "ms0OGa625FAXtw1h35os66EQGefGqsb0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "y0WyytXakCt9dcKCWCePMiqFSD1TGdmN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x1f

    if-eq v4, v9, :cond_a

    .line 8264
    if-gt v4, v1, :cond_6

    .line 8265
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0B(I)V

    goto :goto_0

    .line 8266
    :cond_6
    if-gt v4, v3, :cond_7

    .line 8267
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0G(I)V

    .line 8268
    const/4 v10, 0x1

    goto :goto_0

    .line 8269
    :cond_7
    if-gt v4, v6, :cond_8

    .line 8270
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0C(I)V

    .line 8271
    const/4 v10, 0x1

    goto :goto_0

    .line 8272
    :cond_8
    if-gt v4, v7, :cond_9

    .line 8273
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0H(I)V

    .line 8274
    const/4 v10, 0x1

    goto :goto_0

    .line 8275
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x166

    const/16 v1, 0x16

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8276
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8277
    if-gt v4, v1, :cond_b

    .line 8278
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0D(I)V

    goto/16 :goto_0

    .line 8279
    :cond_b
    if-gt v4, v3, :cond_c

    .line 8280
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0I(I)V

    .line 8281
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 8282
    :cond_c
    if-gt v4, v6, :cond_d

    .line 8283
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0E(I)V

    goto/16 :goto_0

    .line 8284
    :cond_d
    if-gt v4, v7, :cond_e

    .line 8285
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0J(I)V

    .line 8286
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 8287
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1a

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8288
    :cond_f
    if-eqz v10, :cond_10

    .line 8289
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    .line 8290
    :cond_10
    return-void
.end method

.method private A08()V
    .locals 5

    .line 8291
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_1

    .line 8292
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "s2U2A8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v0, v3, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A09()V

    .line 8293
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8294
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x1b1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3J;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x66t
        -0x5et
        -0x13t
        -0x21t
        -0x15t
        -0x11t
        -0x21t
        -0x18t
        -0x23t
        -0x21t
        -0x66t
        -0x18t
        -0x11t
        -0x19t
        -0x24t
        -0x21t
        -0x14t
        -0x66t
        0x6ct
        0x63t
        -0x46t
        -0x55t
        -0x58t
        -0x4ft
        0x63t
        -0x5bt
        -0x51t
        -0x4et
        -0x5at
        -0x52t
        -0x6at
        -0x54t
        -0x43t
        -0x58t
        0x63t
        -0x54t
        -0x4at
        0x63t
        0x73t
        0x70t
        -0x7et
        0x67t
        -0x50t
        -0x52t
        -0x4bt
        -0x4at
        -0x47t
        -0x50t
        -0x4bt
        -0x52t
        0x67t
        -0x49t
        -0x58t
        -0x56t
        -0x4et
        -0x54t
        -0x45t
        0x65t
        0x59t
        -0x65t
        -0x52t
        -0x53t
        0x59t
        -0x64t
        -0x52t
        -0x55t
        -0x55t
        -0x62t
        -0x59t
        -0x53t
        0x59t
        -0x5et
        -0x59t
        -0x63t
        -0x62t
        -0x4ft
        0x59t
        -0x5et
        -0x54t
        0x59t
        0x74t
        -0x6at
        -0x6et
        0x68t
        0x61t
        0x69t
        0x75t
        -0x6at
        -0x6ct
        -0x60t
        -0x6bt
        -0x6at
        -0x5dt
        -0x7ft
        -0x4dt
        -0x50t
        -0x50t
        -0x5dt
        -0x54t
        -0x4et
        -0x56t
        -0x49t
        0x5et
        -0x4dt
        -0x54t
        -0x4ft
        -0x4dt
        -0x52t
        -0x52t
        -0x53t
        -0x50t
        -0x4et
        -0x5dt
        -0x5et
        0x5et
        -0x7ft
        -0x73t
        -0x75t
        -0x75t
        0x7ft
        -0x74t
        -0x7et
        -0x63t
        -0x7dt
        -0x6at
        -0x6et
        0x6ft
        0x5et
        -0x7ft
        -0x53t
        -0x55t
        -0x55t
        -0x61t
        -0x54t
        -0x5et
        0x78t
        0x5et
        -0x3bt
        -0x9t
        -0xct
        -0xct
        -0x19t
        -0x10t
        -0xat
        -0x12t
        -0x5t
        -0x5et
        -0x9t
        -0x10t
        -0xbt
        -0x9t
        -0xet
        -0xet
        -0xft
        -0xct
        -0xat
        -0x19t
        -0x1at
        -0x5et
        -0x3bt
        -0x2ft
        -0x31t
        -0x31t
        -0x3dt
        -0x30t
        -0x3at
        -0x1ft
        -0x2et
        -0x4dt
        -0x48t
        -0x5et
        -0x3bt
        -0xft
        -0x11t
        -0x11t
        -0x1dt
        -0x10t
        -0x1at
        -0x44t
        -0x5et
        -0x67t
        -0x37t
        -0x35t
        -0x68t
        -0x48t
        -0x5bt
        -0x4at
        -0x48t
        -0x40t
        -0x46t
        -0x37t
        0x75t
        -0x46t
        -0x3dt
        -0x47t
        -0x46t
        -0x47t
        0x75t
        -0x3bt
        -0x39t
        -0x46t
        -0x3et
        -0x4at
        -0x37t
        -0x36t
        -0x39t
        -0x46t
        -0x3ft
        -0x32t
        -0x70t
        0x75t
        -0x38t
        -0x42t
        -0x31t
        -0x46t
        0x75t
        -0x42t
        -0x38t
        0x75t
        0x6dt
        -0x6at
        -0x75t
        -0x69t
        -0x63t
        -0x6at
        -0x64t
        -0x73t
        -0x66t
        -0x73t
        -0x74t
        0x48t
        0x6ct
        0x7ct
        0x7et
        0x6bt
        0x6bt
        -0x79t
        0x78t
        0x69t
        0x6bt
        0x73t
        0x6dt
        0x7ct
        -0x79t
        0x6ct
        0x69t
        0x7ct
        0x69t
        0x48t
        -0x76t
        -0x73t
        -0x72t
        -0x69t
        -0x66t
        -0x73t
        0x48t
        0x6ct
        0x7ct
        0x7et
        0x6bt
        0x6bt
        -0x79t
        0x78t
        0x69t
        0x6bt
        0x73t
        0x6dt
        0x7ct
        -0x79t
        0x7bt
        0x7ct
        0x69t
        0x7at
        0x7ct
        -0x77t
        -0x52t
        -0x4at
        -0x5ft
        -0x54t
        -0x57t
        -0x5ct
        0x60t
        -0x7dt
        0x70t
        0x60t
        -0x5dt
        -0x51t
        -0x53t
        -0x53t
        -0x5ft
        -0x52t
        -0x5ct
        0x7at
        0x60t
        -0x2at
        -0x5t
        0x3t
        -0x12t
        -0x7t
        -0xat
        -0xft
        -0x53t
        -0x30t
        -0x42t
        -0x53t
        -0x10t
        -0x4t
        -0x6t
        -0x6t
        -0x12t
        -0x5t
        -0xft
        -0x39t
        -0x53t
        -0x6et
        -0x49t
        -0x41t
        -0x56t
        -0x4bt
        -0x4et
        -0x53t
        0x69t
        -0x70t
        0x7bt
        0x69t
        -0x54t
        -0x4ft
        -0x56t
        -0x45t
        -0x56t
        -0x54t
        -0x43t
        -0x52t
        -0x45t
        -0x7dt
        0x69t
        0x76t
        -0x65t
        -0x5dt
        -0x72t
        -0x67t
        -0x6at
        -0x6ft
        0x4dt
        0x74t
        0x60t
        0x4dt
        -0x70t
        -0x6bt
        -0x72t
        -0x61t
        -0x72t
        -0x70t
        -0x5ft
        -0x6et
        -0x61t
        0x67t
        0x4dt
        -0x68t
        -0x43t
        -0x3bt
        -0x50t
        -0x45t
        -0x48t
        -0x4dt
        0x6ft
        -0x4ft
        -0x50t
        -0x3et
        -0x4ct
        0x6ft
        -0x4et
        -0x42t
        -0x44t
        -0x44t
        -0x50t
        -0x43t
        -0x4dt
        -0x77t
        0x6ft
        -0x37t
        -0x12t
        -0xat
        -0x1ft
        -0x14t
        -0x17t
        -0x1ct
        -0x60t
        -0x1bt
        -0x8t
        -0xct
        -0x1bt
        -0x12t
        -0x1ct
        -0x1bt
        -0x1ct
        -0x60t
        -0x1dt
        -0x11t
        -0x13t
        -0x13t
        -0x1ft
        -0x12t
        -0x1ct
        -0x46t
        -0x60t
        -0x6t
        -0x14t
        -0x7t
        -0x3t
        -0x10t
        -0x16t
        -0x14t
        -0x2bt
        -0x4t
        -0xct
        -0x17t
        -0x14t
        -0x7t
        -0x59t
        -0x10t
        -0x6t
        -0x59t
        -0xbt
        -0xat
        -0xbt
        -0x4ct
        0x1t
        -0x14t
        -0x7t
        -0xat
        -0x59t
        -0x51t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L1xpy5cp85DZhci17XuVPwuBI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YkTNFPOzwzkJtYlViXkR23NQqoCQppA0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SGim0bOTaYlclFO3csKadT6H6g9xYkcM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jQ8PzV3P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QC0kpNF7RiOrPOmNNHkvJn0tMmNRSOb3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UpfI1Vr3VxozUqaf4r1nY355XZgGFNi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PidsADYQpUdS401V"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6iBltx3Oq3HhhZI1vDwKIUw2PCH0pZTk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private A0B(I)V
    .locals 6

    .line 8295
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/16 v5, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "H8dS7ULq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "47YXPe6ck7E4ACrn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p1, v5, :cond_5

    packed-switch p1, :pswitch_data_0

    .line 8296
    const/16 v3, 0x11

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-lt p1, v3, :cond_2

    const/16 v3, 0x17

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "Kfp0xyGlj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_2

    .line 8297
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x2c

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8299
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    if-gt p1, v3, :cond_2

    goto :goto_0

    .line 8300
    :cond_2
    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 8301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x89

    const/16 v1, 0x2b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_1

    .line 8303
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x112

    const/16 v1, 0x14

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8304
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8305
    goto :goto_1

    .line 8306
    :pswitch_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8307
    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "LxOVysLH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "PbXDcGLFNpdTKJ0c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    goto :goto_1

    .line 8308
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A07()V

    .line 8309
    goto/16 :goto_1

    .line 8310
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    .line 8311
    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private A0C(I)V
    .locals 7

    .line 8312
    const/16 v1, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    .line 8313
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x126

    const/16 v1, 0x14

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8314
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3J;
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 8315
    :pswitch_2
    add-int/lit8 v1, p1, -0x80

    .line 8316
    .local p0, "window":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    if-eq v0, v1, :cond_0

    .line 8317
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    .line 8318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    goto :goto_0

    .line 8319
    :pswitch_3
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_1
    if-gt v2, v3, :cond_0

    .line 8320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A08()V

    .line 8322
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8323
    :pswitch_4
    const/4 v5, 0x1

    .restart local p0    # "window":I
    :goto_2
    if-gt v5, v3, :cond_0

    .line 8324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "EEpd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    .line 8325
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v5, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/GJ;->A0F(Z)V

    .line 8326
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 8327
    :pswitch_5
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_3
    if-gt v2, v3, :cond_0

    .line 8328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0F(Z)V

    .line 8330
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8331
    :pswitch_6
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_4
    if-gt v2, v3, :cond_0

    .line 8332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    .line 8334
    .local v4, "cueBuilder":Lcom/facebook/ads/redexgen/X/GJ;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0J()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0F(Z)V

    .line 8335
    .end local v4    # "cueBuilder":Lcom/facebook/ads/redexgen/X/GJ;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 8336
    :pswitch_7
    const/4 v2, 0x1

    .local p0, "i":I
    :goto_5
    if-gt v2, v3, :cond_0

    .line 8337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A09()V

    .line 8339
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 8340
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8341
    goto/16 :goto_0

    .line 8342
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8343
    goto/16 :goto_0

    .line 8344
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8346
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A03()V

    .line 8347
    goto/16 :goto_0

    .line 8348
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8349
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8350
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A04()V

    .line 8351
    goto/16 :goto_0

    .line 8352
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8354
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A05()V

    .line 8355
    goto/16 :goto_0

    .line 8356
    .end local p0    # "i":I
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_9

    .line 8357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8358
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A06()V

    .line 8359
    goto/16 :goto_0

    .line 8360
    :pswitch_e
    add-int/lit16 v1, p1, -0x98

    .line 8361
    .local p0, "window":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3J;->A0F(I)V

    .line 8362
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    if-eq v0, v1, :cond_0

    .line 8363
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    .line 8364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private A0D(I)V
    .locals 2

    .line 8365
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 8366
    :cond_0
    :goto_0
    return-void

    .line 8367
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 8368
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8369
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 8370
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8371
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 8372
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0
.end method

.method private A0E(I)V
    .locals 4

    .line 8373
    const/16 v0, 0x87

    if-gt p1, v0, :cond_1

    .line 8374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8375
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3J;
    :cond_0
    :goto_0
    return-void

    .line 8376
    :cond_1
    const/16 v3, 0x8f

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "CkyZUSwm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "y0ZSf6RqH8VvK6A8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_2

    .line 8377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8378
    :cond_2
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    .line 8379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8381
    .local p0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F(I)V
    .locals 18

    .line 8382
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v5, v0, p1

    .line 8383
    .local p1, "cueBuilder":Lcom/facebook/ads/redexgen/X/GJ;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8384
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 8385
    .local v9, "visible":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v7

    .line 8386
    .local v0, "rowLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v8

    .line 8387
    .local v10, "columnLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    .line 8388
    .local v4, "priority":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v10

    .line 8389
    .local v0, "relativePositioning":Z
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 8390
    .local v11, "verticalAnchor":I
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v12

    .line 8391
    .local v4, "horizontalAnchor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    .line 8392
    .local v0, "anchorId":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v13

    .line 8393
    .local v12, "rowCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8394
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v14

    .line 8395
    .local v0, "columnCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8396
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v16

    .line 8397
    .local v4, "windowStyle":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v17

    .line 8398
    .local v15, "penStyle":I
    invoke-virtual/range {v5 .. v17}, Lcom/facebook/ads/redexgen/X/GJ;->A0G(ZZZIZIIIIIII)V

    .line 8399
    return-void
.end method

.method private A0G(I)V
    .locals 2

    .line 8400
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 8401
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x266b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8402
    :goto_0
    return-void

    .line 8403
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    goto :goto_0
.end method

.method private A0H(I)V
    .locals 2

    .line 8404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8405
    return-void
.end method

.method private A0I(I)V
    .locals 5

    .line 8406
    const/16 v1, 0x20

    if-eq p1, v1, :cond_c

    const/16 v0, 0x21

    if-eq p1, v0, :cond_b

    const/16 v0, 0x25

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_d

    const/16 v3, 0x39

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "VBgxEtCZM8hUXU02q62ejO2N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_7

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 8407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13a

    const/16 v1, 0x16

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8408
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "Hn1frjObrkKWee9bQkUvSoGsCyNbx6K5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "5jLxiAOonCPZsccE4Rlf5xBOSnJI2Mxj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x161

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8409
    goto/16 :goto_0

    .line 8410
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8411
    goto/16 :goto_0

    .line 8412
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8413
    goto/16 :goto_0

    .line 8414
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8415
    goto/16 :goto_0

    .line 8416
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8417
    goto/16 :goto_0

    .line 8418
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2502

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8419
    goto/16 :goto_0

    .line 8420
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2510

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8421
    goto/16 :goto_0

    .line 8422
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2514

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8423
    goto/16 :goto_0

    .line 8424
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2500

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8425
    goto/16 :goto_0

    .line 8426
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2518

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8427
    goto/16 :goto_0

    .line 8428
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x250c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8429
    goto/16 :goto_0

    .line 8430
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2588

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8431
    goto/16 :goto_0

    .line 8432
    :pswitch_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2018

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8433
    goto/16 :goto_0

    .line 8434
    :pswitch_c
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "pntPsILDFVvSJsAkqe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x2019

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8435
    goto/16 :goto_0

    .line 8436
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8437
    :pswitch_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x201c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8438
    goto :goto_0

    .line 8439
    :pswitch_e
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v3, 0x201d

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "pjkXXm09rSmpulg3ZnQvc2tVnRpvsPhy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1ZIH3c3lD2nrVh46isF21y1NEU8S3DGz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8440
    goto :goto_0

    .line 8441
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8442
    :pswitch_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2022

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8443
    goto :goto_0

    .line 8444
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2120

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8445
    goto :goto_0

    .line 8446
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x153

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8447
    goto :goto_0

    .line 8448
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2122

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8449
    goto :goto_0

    .line 8450
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8451
    goto :goto_0

    .line 8452
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x160

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8453
    goto :goto_0

    .line 8454
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2026

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8455
    goto :goto_0

    .line 8456
    :cond_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8457
    goto :goto_0

    .line 8458
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8459
    goto :goto_0

    .line 8460
    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x178

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8461
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private A0J(I)V
    .locals 4

    .line 8462
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 8463
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x33c4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8464
    :goto_0
    return-void

    .line 8465
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x150

    const/16 v1, 0x16

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    goto :goto_0
.end method


# virtual methods
.method public final A0N()Lcom/facebook/ads/redexgen/X/GC;
    .locals 2

    .line 8467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A04:Ljava/util/List;

    .line 8468
    new-instance v0, Lcom/facebook/ads/redexgen/X/aq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aq;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic A0O()Lcom/facebook/ads/redexgen/X/By;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 8469
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0O()Lcom/facebook/ads/redexgen/X/By;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0P()Lcom/facebook/ads/redexgen/X/Bs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 8470
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0P()Lcom/facebook/ads/redexgen/X/Bs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Q(Lcom/facebook/ads/redexgen/X/By;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 8471
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Be;->A0Q(Lcom/facebook/ads/redexgen/X/By;)V

    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/By;)V
    .locals 10

    .line 8472
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YY;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 8473
    .local p0, "inputBufferData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YY;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 8474
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v6, 0x3

    if-lt v0, v6, :cond_a

    .line 8475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 8476
    .local p1, "ccTypeAndValid":I
    and-int/lit8 v3, v0, 0x3

    .line 8477
    .local v2, "ccType":I
    and-int/lit8 v1, v0, 0x4

    const/4 v9, 0x0

    const/4 v0, 0x4

    const/4 v8, 0x1

    if-ne v1, v0, :cond_8

    const/4 v7, 0x1

    .line 8478
    .local v1, "ccValid":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "mPNkJPPaAQUsGFTknTy0QJ3qIgBWTNxI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fItgrykYfXnNqjhR9xK6GfD4mEN43S7J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    int-to-byte v5, v4

    .line 8479
    .local v0, "ccData1":B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-byte v4, v0

    .line 8480
    .local v0, "ccData2":B
    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    if-eq v3, v6, :cond_1

    goto :goto_0

    .line 8481
    :cond_1
    if-nez v7, :cond_2

    goto :goto_0

    .line 8482
    :cond_2
    if-ne v3, v6, :cond_4

    .line 8483
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A02()V

    .line 8484
    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v2, v0, 0x6

    .line 8485
    .local v0, "sequenceNumber":I
    and-int/lit8 v1, v5, 0x3f

    .line 8486
    .local v0, "packetSize":I
    if-nez v1, :cond_3

    .line 8487
    const/16 v1, 0x40

    .line 8488
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/GK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GK;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    .line 8489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    aput-byte v4, v3, v1

    .line 8490
    .end local v0    # "packetSize":I
    .end local v0
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v8

    if-ne v1, v0, :cond_0

    .line 8491
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A02()V

    goto :goto_0

    .line 8492
    :cond_4
    if-ne v3, v0, :cond_5

    const/4 v9, 0x1

    :cond_5
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_6

    .line 8493
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "0p2cTlko"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "0zmBBYWCDQbGLnH6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    if-nez v0, :cond_7

    .line 8494
    :goto_3
    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x37

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8495
    goto/16 :goto_0

    .line 8496
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "AnSv654l"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VDMP1o28JZezz2Cr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    if-nez v0, :cond_7

    goto :goto_3

    .line 8497
    :cond_7
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    aput-byte v5, v3, v1

    .line 8498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    aput-byte v4, v3, v1

    goto :goto_2

    .line 8499
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8500
    :cond_a
    return-void
.end method

.method public final A0T()Z
    .locals 2

    .line 8501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A04:Ljava/util/List;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic ACz()V
    .locals 0

    .line 8502
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Be;->ACz()V

    return-void
.end method

.method public final bridge synthetic ADr(J)V
    .locals 0

    .line 8503
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Be;->ADr(J)V

    return-void
.end method

.method public final flush()V
    .locals 3

    .line 8504
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Be;->flush()V

    .line 8505
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    .line 8506
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A04:Ljava/util/List;

    .line 8507
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    .line 8508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    .line 8509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8510
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    .line 8511
    return-void
.end method
