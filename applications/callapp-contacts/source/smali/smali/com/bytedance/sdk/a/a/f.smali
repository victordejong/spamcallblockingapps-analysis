.class public Lcom/bytedance/sdk/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:Lcom/bytedance/sdk/a/a/f;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/sdk/a/a/f;->a:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 58
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/a/f;->b:Lcom/bytedance/sdk/a/a/f;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    return-void
.end method

.method private static a(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected hex digit: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/String;I)I
    .locals 5

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    if-ne v2, p1, :cond_0

    return v1

    .line 556
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 557
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    :cond_1
    const v4, 0xfffd

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 552
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;
    .locals 2

    if-eqz p0, :cond_0

    .line 102
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    sget-object v1, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    .line 103
    iput-object p0, v0, Lcom/bytedance/sdk/a/a/f;->e:Ljava/lang/String;

    return-object v0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs a([B)Lcom/bytedance/sdk/a/a/f;
    .locals 1

    if-eqz p0, :cond_0

    .line 73
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;
    .locals 5

    if-eqz p0, :cond_2

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/bytedance/sdk/a/a/f;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 253
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/a/a/f;->a(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 254
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object p0

    return-object p0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected hex string: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;
    .locals 1

    .line 172
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 174
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a(II)Lcom/bytedance/sdk/a/a/f;
    .locals 3

    if-ltz p1, :cond_3

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v1, v0

    if-gt p2, v1, :cond_2

    sub-int v1, p2, p1

    if-ltz v1, :cond_1

    if-nez p1, :cond_0

    .line 356
    array-length v2, v0

    if-ne p2, v2, :cond_0

    return-object p0

    .line 360
    :cond_0
    new-array p2, v1, [B

    const/4 v2, 0x0

    .line 361
    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    new-instance p1, Lcom/bytedance/sdk/a/a/f;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object p1

    .line 354
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    sget-object v2, Lcom/bytedance/sdk/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/a/a/c;)V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/a/f;II)Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/bytedance/sdk/a/a/f;->a(I[BII)Z

    move-result p1

    return p1
.end method

.method public a(I[BII)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 432
    invoke-static {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/a/a/u;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/bytedance/sdk/a/a/f;)Z
    .locals 2

    .line 436
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/bytedance/sdk/a/a/f;->a(ILcom/bytedance/sdk/a/a/f;II)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/bytedance/sdk/a/a/f;)I
    .locals 9

    .line 511
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    .line 512
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    .line 513
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    .line 514
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/a/a/f;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 515
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/a/a/f;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v7, v8, :cond_1

    if-ge v7, v8, :cond_0

    return v5

    :cond_0
    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    if-ge v0, v1, :cond_4

    return v5

    :cond_4
    return v6
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/f;
    .locals 1

    const-string v0, "SHA-1"

    .line 153
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/a/f;->c(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/f;->b(Lcom/bytedance/sdk/a/a/f;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/bytedance/sdk/a/a/f;
    .locals 1

    const-string v0, "SHA-256"

    .line 160
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/a/f;->c(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 9

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 235
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 236
    sget-object v7, Lcom/bytedance/sdk/a/a/f;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 237
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 498
    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/a/a/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/bytedance/sdk/a/a/f;

    .line 499
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1

    array-length v1, v3

    .line 500
    invoke-virtual {p1, v2, v3, v2, v1}, Lcom/bytedance/sdk/a/a/f;->a(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public f()Lcom/bytedance/sdk/a/a/f;
    .locals 6

    const/4 v0, 0x0

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 292
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_2

    .line 297
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 298
    aput-byte v2, v1, v0

    .line 299
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_1

    .line 300
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_0

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 302
    aput-byte v0, v1, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/a/a/f;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/f;-><init>([B)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public g()I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v0, v0

    return v0
.end method

.method public h()[B
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/bytedance/sdk/a/a/f;->d:I

    if-eqz v0, :cond_0

    return v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/a/f;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    return-object v0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 534
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "\u2026]"

    const-string v5, "[size="

    const-string v6, "]"

    const/4 v7, 0x0

    if-ne v2, v3, :cond_2

    .line 537
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v0, v0

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p0, v7, v1}, Lcom/bytedance/sdk/a/a/f;->a(II)Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :cond_2
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\"

    const-string v7, "\\\\"

    .line 543
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v7, "\\n"

    .line 544
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v7, "\\r"

    .line 545
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/f;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
