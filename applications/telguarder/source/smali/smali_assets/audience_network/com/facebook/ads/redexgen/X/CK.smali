.class public final Lcom/facebook/ads/redexgen/X/CK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static final A03:Lcom/facebook/ads/redexgen/X/E6;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public A00:I

.field public A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 24146
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CK;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vi;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/CK;->A03:Lcom/facebook/ads/redexgen/X/E6;

    .line 24147
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CK;->A04:Ljava/util/regex/Pattern;

    .line 24148
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24150
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    .line 24151
    iput v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 24152
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CK;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x5t
        0x7et
        0x15t
        0x8t
        0x1ct
        0x44t
        0x8t
        0x43t
        0x64t
        0x8t
        0x63t
        0x78t
        0x5et
        0x1dt
        0x58t
        0x5t
        0xdt
        0x7et
        0x15t
        0x8t
        0x1ct
        0x44t
        0x8t
        0x43t
        0x64t
        0x8t
        0x63t
        0x78t
        0x5et
        0x1dt
        0x58t
        0xct
        0x5t
        0xdt
        0x7et
        0x15t
        0x8t
        0x1ct
        0x44t
        0x8t
        0x43t
        0x64t
        0x8t
        0x63t
        0x78t
        0x5et
        0x1dt
        0x58t
        0xct
        0x31t
        0x3dt
        0x3ft
        0x7ct
        0x33t
        0x22t
        0x22t
        0x3et
        0x37t
        0x7ct
        0x3bt
        0x6t
        0x27t
        0x3ct
        0x37t
        0x21t
        0x1ft
        0x22t
        0x3t
        0x18t
        0x25t
        0x3bt
        0x26t
        0x34t
    .end array-data
.end method

.method private A02(Ljava/lang/String;)Z
    .locals 5

    .line 24153
    sget-object v0, Lcom/facebook/ads/redexgen/X/CK;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 24154
    .local p0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24155
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 24156
    .local v0, "encoderDelay":I
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 24157
    .local v4, "encoderPadding":I
    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    .line 24158
    .restart local v0    # "encoderDelay":I
    .restart local v4    # "encoderPadding":I
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    .line 24159
    iput v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 24160
    return v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24161
    :catch_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A03()Z
    .locals 2

    .line 24162
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04(I)Z
    .locals 2

    .line 24163
    shr-int/lit8 v1, p1, 0xc

    .line 24164
    .local p0, "encoderDelay":I
    and-int/lit16 v0, p1, 0xfff

    .line 24165
    .local p1, "encoderPadding":I
    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    .line 24166
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    .line 24167
    iput v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 24168
    const/4 v0, 0x1

    return v0

    .line 24169
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Z
    .locals 8

    .line 24170
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 24171
    invoke-virtual {p1, v4}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A01(I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    move-result-object v6

    .line 24172
    .local p1, "entry":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    instance-of v3, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;

    const/16 v2, 0x42

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CK;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 24173
    check-cast v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;

    .line 24174
    .local v4, "commentFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;
    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    .line 24175
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CK;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24176
    return v5

    .line 24177
    .end local v4    # "commentFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;
    :cond_0
    instance-of v0, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/InternalFrame;

    if-eqz v0, :cond_1

    .line 24178
    check-cast v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/InternalFrame;

    .line 24179
    .local v4, "internalFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/InternalFrame;
    iget-object v3, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    const/16 v2, 0x32

    const/16 v1, 0x10

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    .line 24180
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    .line 24181
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CK;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24182
    return v5

    .line 24183
    .end local p1    # "entry":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24184
    .end local p0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
