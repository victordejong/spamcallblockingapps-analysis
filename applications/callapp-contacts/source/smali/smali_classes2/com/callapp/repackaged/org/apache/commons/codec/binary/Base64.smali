.class public Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;
.super Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;
.source "SourceFile"


# static fields
.field static final a:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B


# instance fields
.field private final h:[B

.field private final i:[B

.field private final j:[B

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 74
    fill-array-data v0, :array_0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a:[B

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 83
    fill-array-data v1, :array_1

    sput-object v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->e:[B

    new-array v0, v0, [B

    .line 96
    fill-array-data v0, :array_2

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->f:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    .line 115
    fill-array-data v0, :array_3

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->g:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 217
    sget-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a:[B

    invoke-direct {p0, p1, v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 275
    :cond_0
    array-length v1, p2

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 145
    sget-object v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->g:[B

    iput-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->i:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 281
    invoke-virtual {p0, p2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->b([B)Z

    move-result v2

    if-nez v2, :cond_2

    if-lez p1, :cond_1

    .line 286
    array-length p1, p2

    add-int/2addr p1, v3

    iput p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->l:I

    .line 287
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    .line 288
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 290
    :cond_1
    iput v3, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->l:I

    .line 291
    iput-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    goto :goto_1

    .line 282
    :cond_2
    invoke-static {p2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/StringUtils;->b([B)Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "lineSeparator must not contain base64 characters: ["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 294
    :cond_3
    iput v3, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->l:I

    .line 295
    iput-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    .line 297
    :goto_1
    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->k:I

    if-eqz p3, :cond_4

    .line 298
    sget-object p1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->f:[B

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->e:[B

    :goto_2
    iput-object p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 194
    sget-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a:[B

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_4

    .line 1663
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1669
    :cond_0
    new-instance v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;

    sget-object v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 1670
    invoke-virtual {v0, p0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->c([B)J

    move-result-wide v1

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v1, v4

    if-gtz v6, :cond_3

    if-eqz p0, :cond_4

    .line 2428
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    .line 2431
    :cond_1
    array-length v1, p0

    if-eqz p0, :cond_4

    .line 2448
    array-length v2, p0

    if-nez v2, :cond_2

    goto :goto_0

    .line 2451
    :cond_2
    new-instance v2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 2452
    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 2453
    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 2454
    iget p0, v2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget v0, v2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    .line 2455
    invoke-static {v0, p0, v2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a([BILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-object p0, v0

    goto :goto_0

    .line 1672
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Input array too big, the output array would be bigger ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") than the specified maximum size of 2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 596
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/StringUtils;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .line 693
    new-instance v0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;-><init>()V

    .line 3396
    invoke-static {p0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/StringUtils;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3408
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3411
    :cond_0
    new-instance v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 3412
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2, v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->b([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v2, -0x1

    .line 3413
    invoke-virtual {v0, p0, v3, v2, v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->b([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 3414
    iget p0, v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    new-array v0, p0, [B

    .line 3415
    invoke-static {v0, p0, v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a([BILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method final a([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 7

    .line 334
    iget-boolean v0, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_6

    .line 340
    iput-boolean v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    .line 341
    iget p1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->d:I

    if-nez p1, :cond_1

    return-void

    .line 344
    :cond_1
    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->l:I

    invoke-virtual {p0, p1, p4}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(ILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    .line 345
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    .line 346
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    if-eqz p3, :cond_4

    const/4 v2, 0x2

    if-eq p3, v1, :cond_3

    if-ne p3, v2, :cond_2

    .line 362
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p1, p3

    .line 363
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p1, p3

    .line 364
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shl-int/lit8 v2, v3, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p1, p3

    .line 366
    iget-object p3, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    sget-object v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->e:[B

    if-ne p3, v1, :cond_4

    .line 367
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-byte v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->c:B

    aput-byte v1, p1, p3

    goto :goto_0

    .line 371
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Impossible modulus "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_3
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v2, v3, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p1, p3

    .line 353
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p1, p3

    .line 355
    iget-object p3, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    sget-object v1, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->e:[B

    if-ne p3, v1, :cond_4

    .line 356
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-byte v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->c:B

    aput-byte v1, p1, p3

    .line 357
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-byte v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->c:B

    aput-byte v1, p1, p3

    .line 373
    :cond_4
    :goto_0
    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    iget v1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    sub-int/2addr v1, p2

    add-int/2addr p3, v1

    iput p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    .line 375
    iget p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->d:I

    if-lez p2, :cond_5

    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    if-lez p2, :cond_5

    .line 376
    iget-object p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    array-length v1, v1

    invoke-static {p2, v0, p1, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iget p1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_9

    .line 381
    iget v3, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->l:I

    invoke-virtual {p0, v3, p4}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(ILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    .line 382
    iget v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    add-int/lit8 v4, p2, 0x1

    .line 383
    aget-byte p2, p1, p2

    if-gez p2, :cond_7

    add-int/lit16 p2, p2, 0x100

    .line 387
    :cond_7
    iget v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p2

    iput v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    .line 388
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    if-nez p2, :cond_8

    .line 389
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v5, p2, 0x1

    iput v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v5, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v6, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, p2

    .line 390
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v5, p2, 0x1

    iput v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v5, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v6, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, p2

    .line 391
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v5, p2, 0x1

    iput v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v5, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v6, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, p2

    .line 392
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v5, p2, 0x1

    iput v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v5, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->h:[B

    iget v6, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, p2

    .line 393
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    .line 394
    iget p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->d:I

    if-lez p2, :cond_8

    iget p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->d:I

    iget v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    if-gt p2, v5, :cond_8

    .line 395
    iget-object p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    iget v5, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v6, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    array-length v6, v6

    invoke-static {p2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget-object v3, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->j:[B

    array-length v3, v3

    add-int/2addr p2, v3

    iput p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    .line 397
    iput v0, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->g:I

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move p2, v4

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method protected final a(B)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->i:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 6

    .line 431
    iget-boolean v0, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gez p3, :cond_1

    .line 435
    iput-boolean v0, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 438
    iget v2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->k:I

    invoke-virtual {p0, v2, p4}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(ILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    .line 439
    aget-byte p2, p1, p2

    .line 440
    iget-byte v4, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->c:B

    if-ne p2, v4, :cond_2

    .line 442
    iput-boolean v0, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_3

    .line 445
    sget-object v4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->g:[B

    array-length v5, v4

    if-ge p2, v5, :cond_3

    .line 446
    aget-byte p2, v4, p2

    if-ltz p2, :cond_3

    .line 448
    iget v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    add-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x4

    iput v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    .line 449
    iget v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, p2

    iput v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    .line 450
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    if-nez p2, :cond_3

    .line 451
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v4, p2, 0x1

    iput v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    .line 452
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v4, p2, 0x1

    iput v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    .line 453
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 v4, p2, 0x1

    iput v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget v4, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 462
    :cond_4
    :goto_1
    iget-boolean p1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    if-eqz p1, :cond_7

    iget p1, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    if-eqz p1, :cond_7

    .line 463
    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->k:I

    invoke-virtual {p0, p1, p4}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(ILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    .line 467
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    if-eq p2, v0, :cond_7

    const/4 p3, 0x2

    if-eq p2, p3, :cond_6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 477
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/2addr p2, p3

    iput p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    .line 478
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 p3, p3, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 479
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void

    .line 482
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Impossible modulus "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_6
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    shr-int/lit8 p2, p2, 0x4

    iput p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    .line 474
    iget p2, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget p3, p4, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->a:I

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :cond_7
    return-void
.end method
