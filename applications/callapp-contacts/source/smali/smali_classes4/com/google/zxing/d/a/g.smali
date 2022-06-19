.class final Lcom/google/zxing/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1e

    new-array v1, v0, [B

    .line 116
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/d/a/g;->a:[B

    new-array v0, v0, [B

    .line 123
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/d/a/g;->b:[B

    const/16 v0, 0x80

    new-array v1, v0, [B

    .line 127
    sput-object v1, Lcom/google/zxing/d/a/g;->c:[B

    new-array v0, v0, [B

    .line 128
    sput-object v0, Lcom/google/zxing/d/a/g;->d:[B

    .line 130
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/d/a/g;->e:Ljava/nio/charset/Charset;

    const/4 v0, -0x1

    .line 137
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    :goto_0
    sget-object v3, Lcom/google/zxing/d/a/g;->a:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 139
    aget-byte v3, v3, v2

    if-lez v3, :cond_0

    .line 141
    sget-object v4, Lcom/google/zxing/d/a/g;->c:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object v2, Lcom/google/zxing/d/a/g;->d:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    :goto_1
    sget-object v0, Lcom/google/zxing/d/a/g;->b:[B

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 146
    aget-byte v0, v0, v1

    if-lez v0, :cond_2

    .line 148
    sget-object v2, Lcom/google/zxing/d/a/g;->d:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :array_0
    .array-data 1
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
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 476
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 479
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 480
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/zxing/d/a/g;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    .line 484
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v7, p4

    const/4 v8, 0x0

    :cond_0
    :goto_0
    add-int v9, p1, v8

    .line 260
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x1a

    const/16 v12, 0x20

    const/16 v13, 0x1c

    const/16 v14, 0x1b

    const/16 v15, 0x1d

    if-eqz v7, :cond_c

    if-eq v7, v6, :cond_7

    if-eq v7, v4, :cond_2

    .line 336
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->e(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 337
    sget-object v9, Lcom/google/zxing/d/a/g;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 340
    :cond_1
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 310
    :cond_2
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->d(C)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 311
    sget-object v9, Lcom/google/zxing/d/a/g;->c:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 313
    :cond_3
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->b(C)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 315
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :cond_4
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->c(C)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 319
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v1, :cond_6

    .line 323
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 324
    invoke-static {v9}, Lcom/google/zxing/d/a/g;->e(C)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v7, 0x3

    const/16 v9, 0x19

    .line 326
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v9, Lcom/google/zxing/d/a/g;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 286
    :cond_7
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->c(C)Z

    move-result v9

    if-eqz v9, :cond_9

    if-ne v10, v12, :cond_8

    .line 288
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    add-int/lit8 v10, v10, -0x61

    int-to-char v9, v10

    .line 290
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 293
    :cond_9
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->b(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 294
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, -0x41

    int-to-char v9, v10

    .line 295
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 298
    :cond_a
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->d(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 300
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 303
    :cond_b
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    sget-object v9, Lcom/google/zxing/d/a/g;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 263
    :cond_c
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->b(C)Z

    move-result v9

    if-eqz v9, :cond_e

    if-ne v10, v12, :cond_d

    .line 265
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    add-int/lit8 v10, v10, -0x41

    int-to-char v9, v10

    .line 267
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 270
    :cond_e
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->c(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 272
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 274
    :cond_f
    invoke-static {v10}, Lcom/google/zxing/d/a/g;->d(C)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 276
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 279
    :cond_10
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    sget-object v9, Lcom/google/zxing/d/a/g;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v1, :cond_0

    .line 350
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 352
    rem-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_6

    :cond_11
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_12

    mul-int/lit8 v8, v8, 0x1e

    .line 354
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    add-int/2addr v8, v9

    int-to-char v8, v8

    .line 355
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 357
    :cond_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 360
    :cond_13
    rem-int/2addr v0, v4

    if-eqz v0, :cond_14

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v8, v15

    int-to-char v0, v8

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    return v7
.end method

.method private static a(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 539
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 543
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    .line 546
    invoke-static {v2}, Lcom/google/zxing/d/a/g;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int v2, v1, v3

    if-ge v2, v0, :cond_0

    .line 553
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_0
    if-lt v3, v4, :cond_1

    sub-int/2addr v1, p1

    return v1

    .line 558
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 560
    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Non-encodable character detected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " (Unicode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sub-int/2addr v1, p1

    return v1
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/d/a/c;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x384

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 170
    sget-object p2, Lcom/google/zxing/d/a/g;->e:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 171
    :cond_0
    sget-object v3, Lcom/google/zxing/d/a/g;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 172
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/common/c;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 174
    invoke-virtual {v3}, Lcom/google/zxing/common/c;->getValue()I

    move-result v3

    if-ltz v3, :cond_1

    if-ge v3, v1, :cond_1

    const/16 v4, 0x39f

    .line 1570
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v3

    .line 1571
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v4, 0xc5f94

    if-ge v3, v4, :cond_2

    const/16 v4, 0x39e

    .line 1573
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1574
    div-int/lit16 v4, v3, 0x384

    sub-int/2addr v4, v2

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1575
    rem-int/2addr v3, v1

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const v5, 0xc6318

    if-ge v3, v5, :cond_3

    const/16 v5, 0x39d

    .line 1577
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v3

    int-to-char v3, v4

    .line 1578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1580
    :cond_3
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 183
    sget-object v4, Lcom/google/zxing/d/a/g$1;->a:[I

    invoke-virtual {p1}, Lcom/google/zxing/d/a/c;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_d

    const/4 v5, 0x2

    if-eq p1, v5, :cond_c

    const/4 v6, 0x3

    const/16 v7, 0x386

    if-eq p1, v6, :cond_b

    const/4 p1, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge p1, v3, :cond_e

    .line 198
    invoke-static {p0, p1}, Lcom/google/zxing/d/a/g;->a(Ljava/lang/CharSequence;I)I

    move-result v9

    const/16 v10, 0xd

    if-lt v9, v10, :cond_5

    .line 200
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p0, p1, v9, v0}, Lcom/google/zxing/d/a/g;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr p1, v9

    const/4 v6, 0x2

    goto :goto_1

    .line 206
    :cond_5
    invoke-static {p0, p1}, Lcom/google/zxing/d/a/g;->b(Ljava/lang/CharSequence;I)I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_9

    if-ne v9, v3, :cond_6

    goto :goto_4

    .line 216
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/google/zxing/d/a/g;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :cond_7
    add-int/2addr v9, p1

    .line 220
    invoke-virtual {p0, p1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 221
    array-length v10, p1

    if-ne v10, v2, :cond_8

    if-nez v6, :cond_8

    .line 223
    invoke-static {p1, v2, v4, v0}, Lcom/google/zxing/d/a/g;->a([BIILjava/lang/StringBuilder;)V

    goto :goto_3

    .line 226
    :cond_8
    array-length v8, p1

    invoke-static {p1, v8, v6, v0}, Lcom/google/zxing/d/a/g;->a([BIILjava/lang/StringBuilder;)V

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_3
    move p1, v9

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 213
    :cond_a
    invoke-static {p0, p1, v10, v0, v8}, Lcom/google/zxing/d/a/g;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v8

    add-int/2addr p1, v10

    goto :goto_2

    .line 192
    :cond_b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {p0, v4, v3, v0}, Lcom/google/zxing/d/a/g;->a(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_5

    .line 188
    :cond_c
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 189
    array-length p1, p0

    invoke-static {p0, p1, v2, v0}, Lcom/google/zxing/d/a/g;->a([BIILjava/lang/StringBuilder;)V

    goto :goto_5

    .line 185
    :cond_d
    invoke-static {p0, v4, v3, v0, v4}, Lcom/google/zxing/d/a/g;->a(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 237
    :cond_e
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 9

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x384

    .line 422
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 423
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_2

    .line 425
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x2c

    sub-int v6, p2, v4

    .line 426
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v7, p1, v4

    add-int v8, v7, v5

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 430
    :cond_0
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 432
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    .line 436
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a([BIILjava/lang/StringBuilder;)V
    .locals 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/16 p2, 0x391

    .line 383
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 385
    :cond_0
    rem-int/lit8 p2, p1, 0x6

    if-nez p2, :cond_1

    const/16 p2, 0x39c

    .line 386
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p2, 0x385

    .line 388
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_5

    const/4 v1, 0x5

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, p1, 0x0

    sub-int/2addr v4, v3

    if-lt v4, v0, :cond_6

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_2

    const/16 v7, 0x8

    shl-long/2addr v4, v7

    add-int v7, v3, v6

    .line 400
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_3

    const-wide/16 v7, 0x384

    .line 403
    rem-long v9, v4, v7

    long-to-int v10, v9

    int-to-char v9, v10

    aput-char v9, v2, v6

    .line 404
    div-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    :goto_4
    if-ltz v4, :cond_4

    .line 407
    aget-char v5, v2, v4

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_5
    add-int/lit8 v0, p1, 0x0

    if-ge v3, v0, :cond_7

    .line 414
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/CharSequence;I)I
    .locals 7

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p1

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_6

    .line 502
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_1
    const/16 v5, 0xd

    if-ge v4, v5, :cond_2

    .line 504
    invoke-static {v2}, Lcom/google/zxing/d/a/g;->a(C)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ge v1, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 508
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_2
    if-lt v4, v5, :cond_3

    sub-int/2addr v1, p1

    sub-int/2addr v1, v4

    return v1

    :cond_3
    if-gtz v4, :cond_0

    .line 518
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_4

    const/16 v4, 0x20

    if-lt v2, v4, :cond_5

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    sub-int/2addr v1, p1

    return v1
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static c(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static d(C)Z
    .locals 1

    .line 456
    sget-object v0, Lcom/google/zxing/d/a/g;->c:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(C)Z
    .locals 1

    .line 460
    sget-object v0, Lcom/google/zxing/d/a/g;->d:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
