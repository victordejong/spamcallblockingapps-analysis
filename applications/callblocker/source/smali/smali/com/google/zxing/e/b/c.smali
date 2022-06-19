.class public final Lcom/google/zxing/e/b/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/e/b/c;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/google/zxing/e/b/c;->a:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 201
    sget-object v0, Lcom/google/zxing/e/b/c;->a:[I

    aget v0, v0, p0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;Lcom/google/zxing/e/b/b;)I
    .locals 4

    .prologue
    .line 265
    const v3, 0x7fffffff

    .line 266
    const/4 v0, -0x1

    .line 268
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 269
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/e/b/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;ILcom/google/zxing/e/b/b;)V

    .line 270
    invoke-static {p3}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/b/b;)I

    move-result v2

    .line 271
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 268
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 276
    :cond_0
    return v0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private static a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/e/a/b;->a(Lcom/google/zxing/e/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/google/zxing/e/b/b;)I
    .locals 2

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/zxing/e/b/d;->a(Lcom/google/zxing/e/b/b;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/e/b/d;->b(Lcom/google/zxing/e/b/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/e/b/d;->c(Lcom/google/zxing/e/b/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/e/b/d;->d(Lcom/google/zxing/e/b/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method static a(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;
    .locals 11

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/zxing/common/a;->b()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 404
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    const/4 v2, 0x0

    .line 410
    const/4 v1, 0x0

    .line 411
    const/4 v0, 0x0

    .line 414
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    const/4 v3, 0x0

    move v6, v0

    move v7, v1

    move v8, v2

    :goto_0
    if-ge v3, p3, :cond_1

    .line 417
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 418
    const/4 v0, 0x1

    new-array v5, v0, [I

    move v0, p1

    move v1, p2

    move v2, p3

    .line 419
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/e/b/c;->a(IIII[I[I)V

    .line 423
    const/4 v0, 0x0

    aget v0, v4, v0

    .line 424
    new-array v1, v0, [B

    .line 425
    shl-int/lit8 v2, v8, 0x3

    const/4 v10, 0x0

    invoke-virtual {p0, v2, v1, v10, v0}, Lcom/google/zxing/common/a;->a(I[BII)V

    .line 426
    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-static {v1, v2}, Lcom/google/zxing/e/b/c;->a([BI)[B

    move-result-object v2

    .line 427
    new-instance v5, Lcom/google/zxing/e/b/a;

    invoke-direct {v5, v1, v2}, Lcom/google/zxing/e/b/a;-><init>([B[B)V

    invoke-interface {v9, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 430
    array-length v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 431
    const/4 v2, 0x0

    aget v2, v4, v2

    add-int/2addr v2, v8

    .line 416
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_0

    .line 433
    :cond_1
    if-eq p2, v8, :cond_2

    .line 434
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_2
    new-instance v2, Lcom/google/zxing/common/a;

    invoke-direct {v2}, Lcom/google/zxing/common/a;-><init>()V

    .line 440
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_5

    .line 441
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/a;

    .line 442
    invoke-virtual {v0}, Lcom/google/zxing/e/b/a;->a()[B

    move-result-object v0

    .line 443
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 444
    aget-byte v0, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/a;->a(II)V

    goto :goto_2

    .line 440
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 449
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v6, :cond_8

    .line 450
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/b/a;

    .line 451
    invoke-virtual {v0}, Lcom/google/zxing/e/b/a;->b()[B

    move-result-object v0

    .line 452
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 453
    aget-byte v0, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/a;->a(II)V

    goto :goto_4

    .line 449
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 457
    :cond_8
    invoke-virtual {v2}, Lcom/google/zxing/common/a;->b()I

    move-result v0

    if-eq p1, v0, :cond_9

    .line 458
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Interleaving error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    invoke-virtual {v2}, Lcom/google/zxing/common/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " differ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_9
    return-object v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/e/a/b;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 215
    const-string/jumbo v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/google/zxing/e/a/b;->g:Lcom/google/zxing/e/a/b;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    .line 221
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 223
    const/16 v5, 0x30

    if-lt v1, v5, :cond_1

    const/16 v5, 0x39

    if-gt v1, v5, :cond_1

    move v1, v2

    move v3, v4

    .line 221
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    .line 225
    :cond_1
    invoke-static {v1}, Lcom/google/zxing/e/b/c;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v1, v4

    .line 226
    goto :goto_2

    .line 228
    :cond_2
    sget-object v0, Lcom/google/zxing/e/a/b;->e:Lcom/google/zxing/e/a/b;

    goto :goto_0

    .line 231
    :cond_3
    if-eqz v2, :cond_4

    .line 232
    sget-object v0, Lcom/google/zxing/e/a/b;->c:Lcom/google/zxing/e/a/b;

    goto :goto_0

    .line 234
    :cond_4
    if-eqz v3, :cond_5

    .line 235
    sget-object v0, Lcom/google/zxing/e/a/b;->b:Lcom/google/zxing/e/a/b;

    goto :goto_0

    .line 237
    :cond_5
    sget-object v0, Lcom/google/zxing/e/a/b;->e:Lcom/google/zxing/e/a/b;

    goto :goto_0
.end method

.method private static a(ILcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c;
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 281
    invoke-static {v0}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object v1

    .line 282
    invoke-static {p0, v1, p1}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    return-object v1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;)Lcom/google/zxing/e/a/c;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I

    move-result v0

    .line 181
    invoke-static {v0, p0}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c;

    move-result-object v0

    .line 184
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I

    move-result v0

    .line 185
    invoke-static {v0, p0}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/zxing/e/a/a;Ljava/util/Map;)Lcom/google/zxing/e/b/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/e/a/a;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/e/b/f;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    const-string/jumbo v0, "ISO-8859-1"

    .line 81
    if-eqz p2, :cond_3

    sget-object v3, Lcom/google/zxing/c;->b:Lcom/google/zxing/c;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 82
    :goto_0
    if-eqz v3, :cond_0

    .line 83
    sget-object v0, Lcom/google/zxing/c;->b:Lcom/google/zxing/c;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-static {p0, v0}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/e/a/b;

    move-result-object v4

    .line 92
    new-instance v5, Lcom/google/zxing/common/a;

    invoke-direct {v5}, Lcom/google/zxing/common/a;-><init>()V

    .line 95
    sget-object v6, Lcom/google/zxing/e/a/b;->e:Lcom/google/zxing/e/a/b;

    if-ne v4, v6, :cond_1

    if-eqz v3, :cond_1

    .line 96
    invoke-static {v0}, Lcom/google/zxing/common/c;->a(Ljava/lang/String;)Lcom/google/zxing/common/c;

    move-result-object v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    invoke-static {v3, v5}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/common/c;Lcom/google/zxing/common/a;)V

    .line 103
    :cond_1
    if-eqz p2, :cond_4

    sget-object v3, Lcom/google/zxing/c;->l:Lcom/google/zxing/c;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/zxing/c;->l:Lcom/google/zxing/c;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    sget-object v1, Lcom/google/zxing/e/a/b;->h:Lcom/google/zxing/e/a/b;

    invoke-static {v1, v5}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V

    .line 110
    :cond_2
    invoke-static {v4, v5}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V

    .line 114
    new-instance v2, Lcom/google/zxing/common/a;

    invoke-direct {v2}, Lcom/google/zxing/common/a;-><init>()V

    .line 115
    invoke-static {p0, v4, v2, v0}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/String;Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Ljava/lang/String;)V

    .line 118
    if-eqz p2, :cond_5

    sget-object v0, Lcom/google/zxing/c;->k:Lcom/google/zxing/c;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    sget-object v0, Lcom/google/zxing/c;->k:Lcom/google/zxing/c;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 120
    invoke-static {v0}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object v0

    .line 121
    invoke-static {v4, v5, v2, v0}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I

    move-result v1

    .line 122
    invoke-static {v1, v0, p1}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/a;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 123
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Data too big for requested version"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v3, v2

    .line 81
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 103
    goto :goto_1

    .line 126
    :cond_5
    invoke-static {p1, v4, v5, v2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;)Lcom/google/zxing/e/a/c;

    move-result-object v0

    .line 129
    :cond_6
    new-instance v3, Lcom/google/zxing/common/a;

    invoke-direct {v3}, Lcom/google/zxing/common/a;-><init>()V

    .line 130
    invoke-virtual {v3, v5}, Lcom/google/zxing/common/a;->a(Lcom/google/zxing/common/a;)V

    .line 132
    sget-object v1, Lcom/google/zxing/e/a/b;->e:Lcom/google/zxing/e/a/b;

    if-ne v4, v1, :cond_7

    invoke-virtual {v2}, Lcom/google/zxing/common/a;->b()I

    move-result v1

    .line 133
    :goto_2
    invoke-static {v1, v0, v4, v3}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V

    .line 135
    invoke-virtual {v3, v2}, Lcom/google/zxing/common/a;->a(Lcom/google/zxing/common/a;)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/google/zxing/e/a/c;->a(Lcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c$b;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Lcom/google/zxing/e/a/c;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/e/a/c$b;->c()I

    move-result v5

    sub-int/2addr v2, v5

    .line 141
    invoke-static {v2, v3}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/common/a;)V

    .line 145
    invoke-virtual {v0}, Lcom/google/zxing/e/a/c;->b()I

    move-result v5

    .line 147
    invoke-virtual {v1}, Lcom/google/zxing/e/a/c$b;->b()I

    move-result v1

    .line 144
    invoke-static {v3, v5, v2, v1}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;

    move-result-object v1

    .line 149
    new-instance v2, Lcom/google/zxing/e/b/f;

    invoke-direct {v2}, Lcom/google/zxing/e/b/f;-><init>()V

    .line 151
    invoke-virtual {v2, p1}, Lcom/google/zxing/e/b/f;->a(Lcom/google/zxing/e/a/a;)V

    .line 152
    invoke-virtual {v2, v4}, Lcom/google/zxing/e/b/f;->a(Lcom/google/zxing/e/a/b;)V

    .line 153
    invoke-virtual {v2, v0}, Lcom/google/zxing/e/b/f;->a(Lcom/google/zxing/e/a/c;)V

    .line 156
    invoke-virtual {v0}, Lcom/google/zxing/e/a/c;->c()I

    move-result v3

    .line 157
    new-instance v4, Lcom/google/zxing/e/b/b;

    invoke-direct {v4, v3, v3}, Lcom/google/zxing/e/b/b;-><init>(II)V

    .line 158
    invoke-static {v1, p1, v0, v4}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;Lcom/google/zxing/e/b/b;)I

    move-result v3

    .line 159
    invoke-virtual {v2, v3}, Lcom/google/zxing/e/b/f;->a(I)V

    .line 162
    invoke-static {v1, p1, v0, v3, v4}, Lcom/google/zxing/e/b/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;ILcom/google/zxing/e/b/b;)V

    .line 163
    invoke-virtual {v2, v4}, Lcom/google/zxing/e/b/f;->a(Lcom/google/zxing/e/b/b;)V

    .line 165
    return-object v2

    .line 132
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2
.end method

.method static a(IIII[I[I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 347
    if-lt p3, p2, :cond_0

    .line 348
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    rem-int v0, p0, p2

    .line 353
    sub-int v1, p2, v0

    .line 355
    div-int v2, p0, p2

    .line 357
    add-int/lit8 v3, v2, 0x1

    .line 359
    div-int v4, p1, p2

    .line 361
    add-int/lit8 v5, v4, 0x1

    .line 363
    sub-int/2addr v2, v4

    .line 365
    sub-int/2addr v3, v5

    .line 368
    if-eq v2, v3, :cond_1

    .line 369
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    add-int v6, v1, v0

    if-eq p2, v6, :cond_2

    .line 373
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_2
    add-int v6, v4, v2

    mul-int/2addr v6, v1

    add-int v7, v5, v3

    mul-int/2addr v0, v7

    add-int/2addr v0, v6

    if-eq p0, v0, :cond_3

    .line 381
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_3
    if-ge p3, v1, :cond_4

    .line 385
    aput v4, p4, v8

    .line 386
    aput v2, p5, v8

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_4
    aput v5, p4, v8

    .line 389
    aput v3, p5, v8

    goto :goto_0
.end method

.method static a(ILcom/google/zxing/common/a;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 310
    shl-int/lit8 v2, p0, 0x3

    .line 311
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 312
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    .line 315
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 316
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/a;->a(Z)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 321
    if-lez v1, :cond_2

    .line 322
    :goto_1
    if-ge v1, v4, :cond_2

    .line 323
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/a;->a(Z)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->b()I

    move-result v1

    sub-int v3, p0, v1

    move v1, v0

    .line 328
    :goto_2
    if-ge v1, v3, :cond_4

    .line 329
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_3

    const/16 v0, 0xec

    :goto_3
    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/a;->a(II)V

    .line 328
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 329
    :cond_3
    const/16 v0, 0x11

    goto :goto_3

    .line 331
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 332
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_5
    return-void
.end method

.method static a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 492
    invoke-virtual {p2, p1}, Lcom/google/zxing/e/a/b;->a(Lcom/google/zxing/e/a/c;)I

    move-result v0

    .line 493
    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    .line 494
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/a;->a(II)V

    .line 497
    return-void
.end method

.method private static a(Lcom/google/zxing/common/c;Lcom/google/zxing/common/a;)V
    .locals 2

    .prologue
    .line 612
    sget-object v0, Lcom/google/zxing/e/a/b;->f:Lcom/google/zxing/e/a/b;

    invoke-virtual {v0}, Lcom/google/zxing/e/a/b;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->a(II)V

    .line 614
    invoke-virtual {p0}, Lcom/google/zxing/common/c;->a()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->a(II)V

    .line 615
    return-void
.end method

.method static a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/zxing/e/a/b;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->a(II)V

    .line 485
    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V
    .locals 5

    .prologue
    .line 525
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 526
    const/4 v0, 0x0

    .line 527
    :goto_0
    if-ge v0, v1, :cond_2

    .line 528
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 529
    add-int/lit8 v3, v0, 0x2

    if-ge v3, v1, :cond_0

    .line 531
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 532
    add-int/lit8 v4, v0, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 533
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->a(II)V

    .line 534
    add-int/lit8 v0, v0, 0x3

    .line 535
    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_1

    .line 537
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 538
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->a(II)V

    .line 539
    add-int/lit8 v0, v0, 0x2

    .line 540
    goto :goto_0

    .line 542
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->a(II)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    .line 545
    goto :goto_0

    .line 546
    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/a;)V
    .locals 7

    .prologue
    const v6, 0x8140

    const/4 v1, -0x1

    .line 588
    :try_start_0
    const-string/jumbo v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 592
    array-length v4, v3

    .line 593
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 594
    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    .line 595
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    .line 596
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v5

    .line 598
    if-lt v0, v6, :cond_0

    const v5, 0x9ffc

    if-gt v0, v5, :cond_0

    .line 599
    sub-int/2addr v0, v6

    .line 603
    :goto_1
    if-ne v0, v1, :cond_1

    .line 604
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 600
    :cond_0
    const v5, 0xe040

    if-lt v0, v5, :cond_3

    const v5, 0xebbf

    if-gt v0, v5, :cond_3

    .line 601
    const v5, 0xc140

    sub-int/2addr v0, v5

    goto :goto_1

    .line 606
    :cond_1
    shr-int/lit8 v5, v0, 0x8

    mul-int/lit16 v5, v5, 0xc0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v5

    .line 607
    const/16 v5, 0xd

    invoke-virtual {p1, v0, v5}, Lcom/google/zxing/common/a;->a(II)V

    .line 593
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 609
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/a;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 580
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, v1, v0

    .line 581
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/a;->a(II)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 583
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 506
    sget-object v0, Lcom/google/zxing/e/b/c$1;->a:[I

    invoke-virtual {p1}, Lcom/google/zxing/e/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 520
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Invalid mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V

    .line 518
    :goto_0
    return-void

    .line 511
    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/e/b/c;->b(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/String;Lcom/google/zxing/common/a;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/String;Lcom/google/zxing/common/a;)V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/a;)Z
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/google/zxing/e/a/c;->b()I

    move-result v0

    .line 298
    invoke-virtual {p1, p2}, Lcom/google/zxing/e/a/c;->a(Lcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c$b;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/google/zxing/e/a/c$b;->c()I

    move-result v1

    .line 301
    sub-int/2addr v0, v1

    .line 302
    add-int/lit8 v1, p0, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 303
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 243
    :try_start_0
    const-string/jumbo v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 247
    array-length v3, v2

    .line 248
    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 251
    :goto_1
    if-ge v1, v3, :cond_4

    .line 252
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    .line 253
    const/16 v5, 0x81

    if-lt v4, v5, :cond_2

    const/16 v5, 0x9f

    if-le v4, v5, :cond_3

    :cond_2
    const/16 v5, 0xe0

    if-lt v4, v5, :cond_0

    const/16 v5, 0xeb

    if-gt v4, v5, :cond_0

    .line 251
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 257
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a([BI)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 466
    array-length v2, p0

    .line 467
    add-int v1, v2, p1

    new-array v3, v1, [I

    move v1, v0

    .line 468
    :goto_0
    if-ge v1, v2, :cond_0

    .line 469
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_0
    new-instance v1, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v4, Lcom/google/zxing/common/reedsolomon/a;->e:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v1, v4}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    invoke-virtual {v1, v3, p1}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V

    .line 473
    new-array v1, p1, [B

    .line 474
    :goto_1
    if-ge v0, p1, :cond_1

    .line 475
    add-int v4, v2, v0

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    :cond_1
    return-object v1
.end method

.method static b(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 549
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 550
    const/4 v0, 0x0

    .line 551
    :goto_0
    if-ge v0, v1, :cond_3

    .line 552
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/e/b/c;->a(I)I

    move-result v2

    .line 553
    if-ne v2, v4, :cond_0

    .line 554
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 556
    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_2

    .line 557
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/e/b/c;->a(I)I

    move-result v3

    .line 558
    if-ne v3, v4, :cond_1

    .line 559
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 562
    :cond_1
    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v3

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->a(II)V

    .line 563
    add-int/lit8 v0, v0, 0x2

    .line 564
    goto :goto_0

    .line 566
    :cond_2
    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->a(II)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    .line 569
    goto :goto_0

    .line 570
    :cond_3
    return-void
.end method
