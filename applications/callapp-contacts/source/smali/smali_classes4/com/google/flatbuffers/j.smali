.class public final Lcom/google/flatbuffers/j;
.super Lcom/google/flatbuffers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/flatbuffers/i;-><init>()V

    return-void
.end method

.method private static b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11

    or-int v0, p1, p2

    .line 203
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c

    add-int v0, p1, p2

    .line 213
    new-array p2, p2, [C

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 1105
    aput-char v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_2
    if-ge p1, v0, :cond_b

    add-int/lit8 v3, p1, 0x1

    .line 228
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ltz p1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    add-int/lit8 v4, v8, 0x1

    int-to-char p1, p1

    .line 2105
    aput-char p1, p2, v8

    :goto_4
    if-ge v3, v0, :cond_4

    .line 234
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ltz p1, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-char p1, p1

    .line 3105
    aput-char p1, p2, v4

    move v4, v5

    goto :goto_4

    :cond_4
    move p1, v3

    move v8, v4

    goto :goto_2

    .line 241
    :cond_5
    invoke-static {p1}, Lcom/google/flatbuffers/i$a;->a(B)Z

    move-result v4

    const-string v5, "Invalid UTF-8"

    if-eqz v4, :cond_7

    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 246
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 245
    invoke-static {p1, v3, p2, v8}, Lcom/google/flatbuffers/i$a;->a(BB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_2

    .line 243
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_7
    invoke-static {p1}, Lcom/google/flatbuffers/i$a;->b(B)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 253
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    .line 254
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 251
    invoke-static {p1, v3, v4, p2, v8}, Lcom/google/flatbuffers/i$a;->a(BBB[CI)V

    move p1, v5

    move v8, v6

    goto :goto_2

    .line 249
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 263
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    .line 264
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    .line 265
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p2

    .line 261
    invoke-static/range {v3 .. v8}, Lcom/google/flatbuffers/i$a;->a(BBBB[CI)V

    add-int/2addr v10, v2

    move p1, v9

    move v8, v10

    goto/16 :goto_2

    .line 259
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 204
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    .line 205
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 298
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_0

    .line 308
    :try_start_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_0

    add-int v3, v1, v2

    int-to-byte v4, v4

    .line 309
    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    add-int v0, v1, v2

    .line 313
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    add-int/2addr v1, v2

    :goto_1
    if-ge v2, v0, :cond_8

    .line 319
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_2

    int-to-byte v4, v4

    .line 322
    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_5

    :cond_2
    const/16 v5, 0x800

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 327
    :try_start_1
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 328
    invoke-virtual {p1, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v5

    goto/16 :goto_5

    :catch_0
    move v1, v5

    goto/16 :goto_6

    :cond_3
    const v5, 0xd800

    if-lt v4, v5, :cond_7

    const v5, 0xdfff

    if-ge v5, v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_6

    .line 343
    :try_start_2
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 347
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 348
    :try_start_3
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 349
    :try_start_4
    invoke-virtual {p1, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 350
    :try_start_5
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 351
    invoke-virtual {p1, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    move v1, v4

    move v2, v5

    goto :goto_5

    :catch_1
    move v1, v4

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :catch_2
    :goto_2
    move v2, v5

    goto :goto_6

    .line 344
    :cond_6
    :goto_3
    :try_start_6
    new-instance v3, Lcom/google/flatbuffers/j$a;

    invoke-direct {v3, v2, v0}, Lcom/google/flatbuffers/j$a;-><init>(II)V

    throw v3
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 334
    :try_start_7
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 335
    :try_start_8
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 336
    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 356
    :cond_8
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    return-void

    .line 362
    :catch_3
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 363
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed writing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)I
    .locals 8

    .line 4075
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4080
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 4086
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4104
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    .line 4107
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    .line 4115
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4117
    :cond_3
    new-instance p1, Lcom/google/flatbuffers/j$a;

    invoke-direct {p1, v2, v4}, Lcom/google/flatbuffers/j$a;-><init>(II)V

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    .line 4097
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, p2

    or-int p2, p1, p3

    .line 4128
    array-length v1, v0

    sub-int/2addr v1, p1

    sub-int/2addr v1, p3

    or-int/2addr p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p2, :cond_c

    add-int p2, p1, p3

    .line 4138
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 4144
    aget-byte v4, v0, p1

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 5105
    aput-char v4, p3, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_2
    if-ge p1, p2, :cond_b

    add-int/lit8 v3, p1, 0x1

    .line 4153
    aget-byte p1, v0, p1

    if-ltz p1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    add-int/lit8 v4, v8, 0x1

    int-to-char p1, p1

    .line 6105
    aput-char p1, p3, v8

    :goto_4
    if-ge v3, p2, :cond_4

    .line 4159
    aget-byte p1, v0, v3

    if-ltz p1, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-char p1, p1

    .line 7105
    aput-char p1, p3, v4

    move v4, v5

    goto :goto_4

    :cond_4
    move p1, v3

    move v8, v4

    goto :goto_2

    .line 4166
    :cond_5
    invoke-static {p1}, Lcom/google/flatbuffers/i$a;->a(B)Z

    move-result v4

    const-string v5, "Invalid UTF-8"

    if-eqz v4, :cond_7

    if-ge v3, p2, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 4170
    aget-byte v3, v0, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p1, v3, p3, v8}, Lcom/google/flatbuffers/i$a;->a(BB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_2

    .line 4168
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4171
    :cond_7
    invoke-static {p1}, Lcom/google/flatbuffers/i$a;->b(B)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 4175
    aget-byte v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p1, v3, v4, p3, v8}, Lcom/google/flatbuffers/i$a;->a(BBB[CI)V

    move p1, v5

    move v8, v6

    goto :goto_2

    .line 4173
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    add-int/lit8 v4, p2, -0x2

    if-ge v3, v4, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 4185
    aget-byte v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, v0, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, v0, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/flatbuffers/i$a;->a(BBBB[CI)V

    add-int/2addr v10, v2

    move p1, v9

    move v8, v10

    goto/16 :goto_2

    .line 4183
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4197
    :cond_b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 4129
    :cond_c
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v0, v0

    .line 4130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v3, p3

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 292
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/j;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 11

    .line 433
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 434
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 435
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 436
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 7370
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    add-int/2addr v3, v2

    :goto_0
    const/16 v6, 0x80

    if-ge v5, v4, :cond_0

    add-int v7, v5, v2

    if-ge v7, v3, :cond_0

    .line 7376
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ge v8, v6, :cond_0

    int-to-byte v6, v8

    .line 7377
    aput-byte v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    add-int/2addr v2, v4

    goto/16 :goto_4

    :cond_1
    add-int/2addr v2, v5

    :goto_1
    if-ge v5, v4, :cond_b

    .line 7384
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v6, :cond_2

    if-ge v2, v3, :cond_2

    add-int/lit8 v8, v2, 0x1

    int-to-byte v7, v7

    .line 7386
    aput-byte v7, v1, v2

    :goto_2
    move v2, v8

    goto/16 :goto_3

    :cond_2
    const/16 v8, 0x800

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v3, -0x2

    if-gt v2, v8, :cond_3

    add-int/lit8 v8, v2, 0x1

    ushr-int/lit8 v9, v7, 0x6

    or-int/lit16 v9, v9, 0x3c0

    int-to-byte v9, v9

    .line 7388
    aput-byte v9, v1, v2

    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 7389
    aput-byte v7, v1, v8

    goto :goto_3

    :cond_3
    const v8, 0xdfff

    const v9, 0xd800

    if-lt v7, v9, :cond_4

    if-ge v8, v7, :cond_5

    :cond_4
    add-int/lit8 v10, v3, -0x3

    if-gt v2, v10, :cond_5

    add-int/lit8 v8, v2, 0x1

    ushr-int/lit8 v9, v7, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    .line 7392
    aput-byte v9, v1, v2

    add-int/lit8 v2, v8, 0x1

    ushr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v6

    int-to-byte v9, v9

    .line 7393
    aput-byte v9, v1, v8

    add-int/lit8 v8, v2, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 7394
    aput-byte v7, v1, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v3, -0x4

    if-gt v2, v10, :cond_8

    add-int/lit8 v8, v5, 0x1

    .line 7399
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_7

    .line 7400
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 7403
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 7404
    aput-byte v9, v1, v2

    add-int/lit8 v2, v7, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v6

    int-to-byte v9, v9

    .line 7405
    aput-byte v9, v1, v7

    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v6

    int-to-byte v9, v9

    .line 7406
    aput-byte v9, v1, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 7407
    aput-byte v5, v1, v7

    move v5, v8

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    move v5, v8

    .line 7401
    :cond_7
    new-instance p1, Lcom/google/flatbuffers/j$a;

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p1, v5, v4}, Lcom/google/flatbuffers/j$a;-><init>(II)V

    throw p1

    :cond_8
    if-gt v9, v7, :cond_a

    if-gt v7, v8, :cond_a

    add-int/lit8 p2, v5, 0x1

    .line 7412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p2, v0, :cond_9

    .line 7413
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v7, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    .line 7414
    :cond_9
    new-instance p1, Lcom/google/flatbuffers/j$a;

    invoke-direct {p1, v5, v4}, Lcom/google/flatbuffers/j$a;-><init>(II)V

    throw p1

    .line 7416
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed writing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    sub-int/2addr v2, v0

    .line 437
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 439
    :cond_c
    invoke-static {p1, p2}, Lcom/google/flatbuffers/j;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method
