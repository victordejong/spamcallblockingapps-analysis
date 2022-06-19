.class public final Lcom/facebook/ads/redexgen/X/2q;
.super Lcom/facebook/ads/redexgen/X/Bb;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6126
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2q;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2q;->A02()V

    const/16 v2, 0x45

    const/4 v1, 0x4

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2q;->A09:I

    .line 6127
    const/16 v2, 0x49

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2q;->A0A:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 6128
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x5

    const/16 v1, 0xb

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6129
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    .line 6130
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2q;->A08(Ljava/util/List;)V

    .line 6131
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2q;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6132
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2q;->A09(Z)V

    .line 6133
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v3

    .line 6134
    .local p0, "textLength":I
    if-nez v3, :cond_1

    .line 6135
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6137
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 6138
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A03()C

    move-result v1

    .line 6139
    .local v0, "firstChar":C
    const v0, 0xfeff

    if-eq v1, v0, :cond_2

    const v0, 0xfffe

    if-ne v1, v0, :cond_3

    .line 6140
    :cond_2
    const/16 v2, 0x10

    const/4 v1, 0x6

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0U(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6141
    .end local v0    # "firstChar":C
    :cond_3
    const/16 v2, 0x16

    const/4 v1, 0x5

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0U(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2q;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x13t
        0x20t
        0x17t
        0x14t
        -0x5at
        -0x36t
        -0x7bt
        -0x47t
        -0x6at
        -0x49t
        -0x4bt
        -0x3ft
        -0x4at
        -0x49t
        -0x3ct
        -0x2dt
        -0x2et
        -0x3ct
        -0x55t
        -0x51t
        -0x4ct
        0x18t
        0x17t
        0x9t
        -0x10t
        -0x5t
        -0x2dt
        -0x14t
        -0x1dt
        -0xat
        -0x12t
        -0x1dt
        -0x1ft
        -0xet
        -0x1dt
        -0x1et
        -0x62t
        -0xft
        -0xdt
        -0x20t
        -0xet
        -0x19t
        -0xet
        -0x16t
        -0x1dt
        -0x62t
        -0x1ct
        -0x13t
        -0x10t
        -0x15t
        -0x21t
        -0xet
        -0x54t
        -0x29t
        -0x3bt
        -0x2et
        -0x29t
        -0x6ft
        -0x29t
        -0x37t
        -0x2at
        -0x33t
        -0x36t
        -0x1t
        -0xft
        -0x2t
        -0xbt
        -0xet
        -0x37t
        -0x36t
        -0x31t
        -0x3et
        -0x35t
        -0x47t
        -0x3at
        -0x31t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "R7mbmY4h491rm94XcPKGhXIpsw2Jmx9i"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5v8jvtZWZxcza3cpqqSE6zQbxu0laOF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YeCVPFyltrcl1vBdJM6qZOYmHAB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XvUHGAMZIqrIa1XSKNcVWyyjI1tGqfMT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JQ7ii1CrPAwPqZBPfeszjhHKpPnPDucc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CxAB5mWIU4dyeSXTjfsUSN3lIWvhziJ0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fx6WRmFzmP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2q;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 3

    .line 6142
    if-eq p1, p2, :cond_0

    .line 6143
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v2, v0, 0x18

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr v2, v0

    .line 6144
    .local p0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v0, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6145
    .end local p0    # "colorArgb":I
    :cond_0
    return-void
.end method

.method public static A05(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 7

    .line 6146
    if-eq p1, p2, :cond_2

    .line 6147
    or-int/lit8 v4, p5, 0x21

    .line 6148
    .local p0, "flags":I
    and-int/lit8 v0, p1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    .line 6149
    .local p1, "isBold":Z
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 6150
    .local p4, "isItalic":Z
    :goto_1
    if-eqz v6, :cond_5

    .line 6151
    if-eqz v2, :cond_4

    .line 6152
    const/4 v1, 0x3

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6153
    :cond_0
    :goto_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 6154
    .local p3, "isUnderlined":Z
    :goto_3
    if-eqz v5, :cond_1

    .line 6155
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6156
    :cond_1
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    .line 6157
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6158
    .end local p0    # "flags":I
    .end local p1    # "isBold":Z
    .end local p3    # "isUnderlined":Z
    .end local p4    # "isItalic":Z
    :cond_2
    return-void

    .line 6159
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 6160
    :cond_4
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 6161
    :cond_5
    if-eqz v2, :cond_0

    .line 6162
    const/4 v1, 0x2

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 6163
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 6164
    :cond_7
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static A06(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .line 6165
    if-eq p1, p2, :cond_0

    .line 6166
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 v0, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6167
    :cond_0
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/IM;Landroid/text/SpannableStringBuilder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6168
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    const/4 v1, 0x1

    const/16 v0, 0xc

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2q;->A09(Z)V

    .line 6169
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v4

    .line 6170
    .local p0, "start":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v5

    .line 6171
    .local v5, "end":I
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 6172
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 6173
    .local v0, "fontFace":I
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 6174
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v8

    .line 6175
    .local p1, "colorRgba":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2q;->A03:I

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/2q;->A05(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 6176
    iget v9, p0, Lcom/facebook/ads/redexgen/X/2q;->A02:I

    move-object v7, v1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/2q;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 6177
    return-void

    .line 6178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 6179
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const v5, 0x3f59999a    # 0.85f

    const/16 v2, 0x36

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 6180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 6181
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x35

    if-ne v1, v0, :cond_4

    .line 6182
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6183
    .local v2, "initializationBytes":[B
    const/16 v0, 0x18

    aget-byte v0, v2, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A03:I

    .line 6184
    const/16 v0, 0x1a

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/16 v0, 0x1b

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/16 v0, 0x1c

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    const/16 v0, 0x1d

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/2q;->A02:I

    .line 6185
    array-length v1, v2

    const/16 v0, 0x2b

    sub-int/2addr v1, v0

    .line 6186
    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0R([BII)Ljava/lang/String;

    move-result-object v7

    .line 6187
    .local v0, "fontFamily":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v4, 0x40

    const/4 v1, 0x5

    const/16 v0, 0x40

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/2q;->A04:Ljava/lang/String;

    .line 6188
    const/16 v0, 0x19

    aget-byte v0, v2, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:I

    .line 6189
    aget-byte v0, v2, v3

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/2q;->A05:Z

    .line 6190
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A05:Z

    if-eqz v0, :cond_3

    .line 6191
    const/16 v0, 0xa

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    const/16 v0, 0xb

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    .line 6192
    .local p0, "requestedVerticalPlacement":I
    int-to-float v1, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/2q;->A00:F

    .line 6193
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2q;->A00:F

    const/4 v1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(FFF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A00:F

    .line 6194
    .end local p0    # "requestedVerticalPlacement":I
    :goto_0
    return-void

    .line 6195
    :cond_3
    iput v5, p0, Lcom/facebook/ads/redexgen/X/2q;->A00:F

    goto :goto_0

    .line 6196
    :cond_4
    iput v3, p0, Lcom/facebook/ads/redexgen/X/2q;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2q;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6197
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2q;->A08:[Ljava/lang/String;

    const-string v1, "u8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bcOVAzp4smZk5qOFnglAphIVLAcvUs2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A02:I

    .line 6198
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/2q;->A04:Ljava/lang/String;

    .line 6199
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/2q;->A05:Z

    .line 6200
    iput v5, p0, Lcom/facebook/ads/redexgen/X/2q;->A00:F

    goto :goto_0
.end method

.method public static A09(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6201
    if-eqz p0, :cond_0

    .line 6202
    return-void

    .line 6203
    :cond_0
    const/16 p0, 0x1b

    const/16 v1, 0x1b

    const/16 v0, 0x32

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6204
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 6205
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2q;->A01(Lcom/facebook/ads/redexgen/X/IM;)Ljava/lang/String;

    move-result-object v2

    .line 6206
    .local v3, "cueTextString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6207
    sget-object v0, Lcom/facebook/ads/redexgen/X/UA;->A02:Lcom/facebook/ads/redexgen/X/UA;

    return-object v0

    .line 6208
    :cond_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6209
    .local v1, "cueText":Landroid/text/SpannableStringBuilder;
    iget v9, v1, Lcom/facebook/ads/redexgen/X/2q;->A03:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6210
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/high16 v13, 0xff0000

    .line 6211
    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/2q;->A05(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 6212
    iget v9, v1, Lcom/facebook/ads/redexgen/X/2q;->A02:I

    const/4 v10, -0x1

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/2q;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 6213
    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/2q;->A04:Ljava/lang/String;

    .line 6214
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 6215
    const/16 v3, 0x36

    const/16 v2, 0xa

    const/16 v0, 0x18

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/2q;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/2q;->A06(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 6216
    iget v10, v1, Lcom/facebook/ads/redexgen/X/2q;->A00:F

    .line 6217
    .local v10, "verticalPlacement":F
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    const/16 v0, 0x8

    if-lt v2, v0, :cond_6

    .line 6218
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 6219
    .local v0, "position":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v7

    .line 6220
    .local v3, "atomSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 6221
    .local v2, "atomType":I
    sget v0, Lcom/facebook/ads/redexgen/X/2q;->A09:I

    const/4 v3, 0x0

    const/4 v2, 0x2

    if-ne v5, v0, :cond_2

    .line 6222
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lt v0, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2q;->A09(Z)V

    .line 6223
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v6

    .line 6224
    .local v0, "styleRecordCount":I
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 6225
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v1, v0, v8}, Lcom/facebook/ads/redexgen/X/2q;->A07(Lcom/facebook/ads/redexgen/X/IM;Landroid/text/SpannableStringBuilder;)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/2q;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v2, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_5

    .line 6226
    sget-object v3, Lcom/facebook/ads/redexgen/X/2q;->A08:[Ljava/lang/String;

    const-string v2, "pZATFN8sYO8rjG98MOPTQF2KTsznAUnx"

    const/4 v0, 0x0

    aput-object v2, v3, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6227
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/2q;->A0A:I

    if-ne v5, v0, :cond_4

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A05:Z

    if-eqz v0, :cond_4

    .line 6228
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lt v0, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2q;->A09(Z)V

    .line 6229
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 6230
    .local v0, "requestedVerticalPlacement":I
    int-to-float v3, v0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A01:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 6231
    .end local v10    # "verticalPlacement":F
    .local v2, "verticalPlacement":F
    const/4 v2, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(FFF)F

    move-result v10

    .line 6232
    .end local v2    # "verticalPlacement":F
    .restart local v10    # "verticalPlacement":F
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2q;->A06:Lcom/facebook/ads/redexgen/X/IM;

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 6233
    .end local v0    # "requestedVerticalPlacement":I
    .end local v3    # "atomSize":I
    .end local v2
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6234
    :cond_6
    new-instance v7, Lcom/facebook/ads/redexgen/X/GB;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/high16 v14, -0x80000000

    const/4 v15, 0x1

    move-object v1, v7

    invoke-direct/range {v7 .. v15}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/UA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UA;-><init>(Lcom/facebook/ads/redexgen/X/GB;)V

    return-object v0
.end method
