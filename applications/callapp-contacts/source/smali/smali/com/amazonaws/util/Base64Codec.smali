.class Lcom/amazonaws/util/Base64Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base64Codec$LazyHolder;
    }
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 76
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    return-void
.end method

.method private static a(B)I
    .locals 3

    .line 250
    invoke-static {}, Lcom/amazonaws/util/Base64Codec$LazyHolder;->a()[B

    move-result-object v0

    aget-byte v0, v0, p0

    if-ltz v0, :cond_0

    return v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid base 64 character: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I[BI[BI)V
    .locals 7

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 176
    aget-byte p2, p1, p2

    .line 178
    invoke-static {p2}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result p2

    const/4 v2, 0x2

    shl-int/2addr p2, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    .line 179
    invoke-static {v1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p3, p4

    const/16 p2, 0xf

    const/4 p4, 0x1

    if-ne p0, p4, :cond_0

    .line 182
    invoke-static {v1, p2}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_0
    add-int/lit8 p4, v0, 0x1

    and-int/2addr v1, p2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v3, 0x1

    .line 186
    aget-byte v3, p1, v3

    .line 189
    invoke-static {v3}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v3

    ushr-int/lit8 v6, v3, 0x2

    and-int/2addr p2, v6

    or-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p3, v0

    if-ne p0, v2, :cond_1

    .line 192
    invoke-static {v3, v5}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_1
    and-int/lit8 p0, v3, 0x3

    shl-int/lit8 p0, p0, 0x6

    .line 196
    aget-byte p1, p1, v4

    .line 199
    invoke-static {p1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, p3, p4

    return-void
.end method

.method private a([BI[BI)V
    .locals 5

    add-int/lit8 v0, p4, 0x1

    .line 118
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p3, p4

    add-int/lit8 p4, v0, 0x1

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p2, p2, 0x4

    add-int/lit8 v3, v2, 0x1

    .line 119
    aget-byte v2, p1, v2

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr p2, v4

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x2

    .line 121
    aget-byte p1, p1, v3

    ushr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v0, v2

    aget-byte v0, v1, v0

    aput-byte v0, p3, p4

    and-int/lit8 p1, p1, 0x3f

    .line 123
    aget-byte p1, v1, p1

    aput-byte p1, p3, p2

    return-void
.end method

.method private b([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    .line 130
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v3, p2, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p3, p4

    add-int/lit8 p4, v0, 0x1

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p2, p2, 0x4

    .line 131
    aget-byte p1, p1, v2

    ushr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr p2, v2

    aget-byte p2, v1, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x2

    .line 133
    aget-byte p1, v1, p1

    aput-byte p1, p3, p4

    const/16 p1, 0x3d

    .line 134
    aput-byte p1, p3, p2

    return-void
.end method

.method private c([BI[BI)V
    .locals 2

    add-int/lit8 v0, p4, 0x1

    .line 141
    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->a:[B

    aget-byte p1, p1, p2

    ushr-int/lit8 p2, p1, 0x2

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, v1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    .line 142
    aget-byte p1, v1, p1

    aput-byte p1, p3, v0

    add-int/lit8 p1, p2, 0x1

    const/16 p4, 0x3d

    .line 143
    aput-byte p4, p3, p2

    .line 144
    aput-byte p4, p3, p1

    return-void
.end method

.method private static d([BI[BI)V
    .locals 4

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 151
    aget-byte p1, p0, p1

    .line 153
    invoke-static {p1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    .line 154
    invoke-static {v1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v1

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 p1, v0, 0x1

    and-int/lit8 p3, v1, 0xf

    shl-int/lit8 p3, p3, 0x4

    add-int/lit8 v1, v2, 0x1

    .line 156
    aget-byte v2, p0, v2

    .line 159
    invoke-static {v2}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    and-int/lit8 p3, v2, 0x3

    shl-int/lit8 p3, p3, 0x6

    .line 161
    aget-byte p0, p0, v1

    .line 164
    invoke-static {p0}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result p0

    or-int/2addr p0, p3

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 6

    .line 85
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 86
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    .line 89
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 91
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 92
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazonaws/util/Base64Codec;->a([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    .line 96
    new-array v0, v0, [B

    const/4 v4, 0x0

    .line 99
    :goto_1
    array-length v5, p1

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_2

    .line 100
    invoke-direct {p0, p1, v2, v0, v4}, Lcom/amazonaws/util/Base64Codec;->a([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_2
    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto :goto_2

    .line 107
    :cond_3
    invoke-direct {p0, p1, v2, v0, v4}, Lcom/amazonaws/util/Base64Codec;->b([BI[BI)V

    goto :goto_2

    .line 104
    :cond_4
    invoke-direct {p0, p1, v2, v0, v4}, Lcom/amazonaws/util/Base64Codec;->c([BI[BI)V

    :goto_2
    return-object v0
.end method

.method public final a([BI)[B
    .locals 6

    .line 206
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_5

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    if-ltz v0, :cond_0

    .line 215
    aget-byte v4, p1, v0

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x3

    if-eq v2, v0, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 235
    :cond_2
    :goto_1
    div-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x3

    rsub-int/lit8 v0, v3, 0x3

    sub-int/2addr p2, v0

    new-array v0, p2, [B

    const/4 v2, 0x0

    .line 239
    :goto_2
    rem-int/lit8 v5, v3, 0x3

    sub-int v5, p2, v5

    if-ge v1, v5, :cond_3

    .line 240
    invoke-static {p1, v2, v0, v1}, Lcom/amazonaws/util/Base64Codec;->d([BI[BI)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    .line 244
    invoke-static {v3, p1, v2, v0, v1}, Lcom/amazonaws/util/Base64Codec;->a(I[BI[BI)V

    :cond_4
    return-object v0

    .line 207
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Input is expected to be encoded in multiple of 4 bytes but found: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
