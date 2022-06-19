.class public final Lorg/jsoup/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[C

.field b:Ljava/io/Reader;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:[Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const v0, 0x8000

    .line 41
    invoke-direct {p0, p1, v0}, Lorg/jsoup/c/a;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lorg/jsoup/c/a;->f:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/a/c;->a(Z)V

    .line 35
    iput-object p1, p0, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    const p1, 0x8000

    if-le p2, p1, :cond_0

    const p2, 0x8000

    .line 36
    :cond_0
    new-array p1, p2, [C

    iput-object p1, p0, Lorg/jsoup/c/a;->a:[C

    .line 37
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/c/a;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method static a([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    .line 539
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    if-gtz p3, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    mul-int/lit8 v0, p3, 0x1f

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v1, p3, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v3, v2, 0x1

    .line 547
    aget-char v2, p0, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v0, 0x1ff

    .line 552
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 555
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 556
    aput-object v1, p1, v0

    goto :goto_1

    .line 558
    :cond_3
    invoke-static {p0, p2, p3, v1}, Lorg/jsoup/c/a;->a([CIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 561
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 562
    aput-object v1, p1, v0

    :goto_1
    return-object v1
.end method

.method private static a([CIILjava/lang/String;)Z
    .locals 4

    .line 572
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 576
    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private c(C)I
    .locals 2

    .line 182
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 183
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    :goto_0
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    if-ge v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 185
    iget p1, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    .line 438
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 440
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 444
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/c/a;->a:[C

    iget v5, p0, Lorg/jsoup/c/a;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 6

    .line 450
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 452
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 456
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 457
    iget-object v4, p0, Lorg/jsoup/c/a;->a:[C

    iget v5, p0, Lorg/jsoup/c/a;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private q()Z
    .locals 2

    .line 121
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    iget v1, p0, Lorg/jsoup/c/a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(Ljava/lang/CharSequence;)I
    .locals 8

    .line 197
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    const/4 v0, 0x0

    .line 199
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 200
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    :goto_0
    iget v2, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v2, :cond_4

    .line 202
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    add-int/2addr v1, v3

    .line 203
    iget v2, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v2, v2, v1

    if-ne v0, v2, :cond_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 206
    iget v5, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v5, :cond_3

    if-gt v4, v5, :cond_3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    .line 207
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v5, v4, :cond_3

    .line 209
    iget p1, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v1, p1

    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public final a(C)Ljava/lang/String;
    .locals 3

    .line 221
    invoke-direct {p0, p1}, Lorg/jsoup/c/a;->c(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v1, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    invoke-static {v0, v1, v2, p1}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/c/a;->e:I

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/c/a;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a([C)Ljava/lang/String;
    .locals 8

    .line 256
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 257
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 259
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    .line 260
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    .line 261
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    .line 266
    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-eq v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iput v4, p0, Lorg/jsoup/c/a;->e:I

    if-le v4, v0, :cond_2

    .line 273
    iget-object p1, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v1, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v0, v4}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method final a()V
    .locals 14

    .line 63
    iget-boolean v0, p0, Lorg/jsoup/c/a;->i:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/jsoup/c/a;->e:I

    iget v1, p0, Lorg/jsoup/c/a;->d:I

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 68
    :cond_0
    iget v1, p0, Lorg/jsoup/c/a;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    .line 78
    iget-object v4, p0, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    const/4 v4, 0x0

    :goto_1
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_3

    .line 81
    iget-object v9, p0, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    iget-object v11, p0, Lorg/jsoup/c/a;->a:[C

    array-length v12, v11

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_2

    .line 83
    iput-boolean v10, p0, Lorg/jsoup/c/a;->i:Z

    :cond_2
    if-lez v9, :cond_3

    add-int/2addr v4, v9

    goto :goto_1

    .line 88
    :cond_3
    iget-object v9, p0, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_7

    cmp-long v9, v7, v5

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 90
    :goto_2
    invoke-static {v10}, Lorg/jsoup/a/c;->a(Z)V

    .line 91
    iput v4, p0, Lorg/jsoup/c/a;->c:I

    .line 92
    iget v5, p0, Lorg/jsoup/c/a;->h:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/jsoup/c/a;->h:I

    .line 93
    iput v1, p0, Lorg/jsoup/c/a;->e:I

    .line 94
    iget v0, p0, Lorg/jsoup/c/a;->f:I

    if-eq v0, v2, :cond_5

    .line 95
    iput v3, p0, Lorg/jsoup/c/a;->f:I

    :cond_5
    const/16 v0, 0x6000

    if-le v4, v0, :cond_6

    const/16 v4, 0x6000

    .line 96
    :cond_6
    iput v4, p0, Lorg/jsoup/c/a;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v1, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_8
    :goto_3
    return-void
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .line 497
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 498
    invoke-direct {p0, p1}, Lorg/jsoup/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/c/a;->e:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 2

    .line 108
    iget v0, p0, Lorg/jsoup/c/a;->h:I

    iget v1, p0, Lorg/jsoup/c/a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method final varargs b([C)Ljava/lang/String;
    .locals 5

    .line 277
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 278
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 280
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    .line 281
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 284
    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_0
    iput v3, p0, Lorg/jsoup/c/a;->e:I

    if-le v3, v0, :cond_1

    .line 289
    iget-object p1, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v1, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method final b(C)Z
    .locals 2

    .line 433
    invoke-virtual {p0}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget v1, p0, Lorg/jsoup/c/a;->e:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(Ljava/lang/String;)Z
    .locals 1

    .line 507
    invoke-direct {p0, p1}, Lorg/jsoup/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/c/a;->e:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 117
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    iget v1, p0, Lorg/jsoup/c/a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final varargs c([C)Z
    .locals 5

    .line 465
    invoke-virtual {p0}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 469
    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    aget-char v0, v0, v2

    .line 470
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final d()C
    .locals 2

    .line 129
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 130
    invoke-direct {p0}, Lorg/jsoup/c/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget v1, p0, Lorg/jsoup/c/a;->e:I

    aget-char v0, v0, v1

    return v0
.end method

.method final d([C)Z
    .locals 2

    .line 478
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 479
    invoke-virtual {p0}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget v1, p0, Lorg/jsoup/c/a;->e:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final e()C
    .locals 2

    .line 134
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 135
    invoke-direct {p0}, Lorg/jsoup/c/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget v1, p0, Lorg/jsoup/c/a;->e:I

    aget-char v0, v0, v1

    .line 136
    :goto_0
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/c/a;->e:I

    return v0
.end method

.method final f()V
    .locals 3

    .line 141
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 144
    iput v0, p0, Lorg/jsoup/c/a;->e:I

    return-void

    .line 142
    :cond_0
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "No buffer left to unconsume"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final g()V
    .locals 1

    .line 151
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/c/a;->e:I

    return-void
.end method

.method final h()V
    .locals 3

    .line 168
    iget v0, p0, Lorg/jsoup/c/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 171
    iput v0, p0, Lorg/jsoup/c/a;->e:I

    .line 1164
    iput v1, p0, Lorg/jsoup/c/a;->f:I

    return-void

    .line 169
    :cond_0
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method final i()Ljava/lang/String;
    .locals 6

    .line 295
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 297
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    .line 298
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 301
    aget-char v4, v2, v3

    if-eqz v4, :cond_0

    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iput v3, p0, Lorg/jsoup/c/a;->e:I

    if-le v3, v0, :cond_1

    .line 311
    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v2, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 6

    .line 338
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 339
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 341
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    .line 342
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 345
    aget-char v4, v2, v3

    if-eqz v4, :cond_0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iput v3, p0, Lorg/jsoup/c/a;->e:I

    if-le v3, v0, :cond_1

    .line 361
    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v2, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 4

    .line 365
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 366
    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v1, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    iget v3, p0, Lorg/jsoup/c/a;->c:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget v1, p0, Lorg/jsoup/c/a;->c:I

    iput v1, p0, Lorg/jsoup/c/a;->e:I

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 4

    .line 372
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 373
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 374
    :goto_0
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    iget v2, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v2, :cond_3

    .line 375
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 376
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    :cond_2
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/c/a;->e:I

    goto :goto_0

    .line 382
    :cond_3
    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v2, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final m()Ljava/lang/String;
    .locals 4

    .line 386
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 387
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 388
    :goto_0
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    iget v2, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v2, :cond_3

    .line 389
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 390
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    :cond_2
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/c/a;->e:I

    goto :goto_0

    .line 395
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/c/a;->q()Z

    move-result v1

    if-nez v1, :cond_4

    .line 396
    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-gt v1, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 398
    iput v2, p0, Lorg/jsoup/c/a;->e:I

    goto :goto_1

    .line 403
    :cond_4
    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v2, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final n()Ljava/lang/String;
    .locals 4

    .line 407
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 408
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 409
    :goto_0
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    iget v2, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v2, :cond_3

    .line 410
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 412
    iput v1, p0, Lorg/jsoup/c/a;->e:I

    goto :goto_0

    .line 416
    :cond_3
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v3, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final o()Ljava/lang/String;
    .locals 4

    .line 420
    invoke-virtual {p0}, Lorg/jsoup/c/a;->a()V

    .line 421
    iget v0, p0, Lorg/jsoup/c/a;->e:I

    .line 422
    :goto_0
    iget v1, p0, Lorg/jsoup/c/a;->e:I

    iget v2, p0, Lorg/jsoup/c/a;->c:I

    if-ge v1, v2, :cond_0

    .line 423
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 425
    iput v1, p0, Lorg/jsoup/c/a;->e:I

    goto :goto_0

    .line 429
    :cond_0
    iget-object v2, p0, Lorg/jsoup/c/a;->a:[C

    iget-object v3, p0, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/c/a;->a([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final p()Z
    .locals 3

    .line 483
    invoke-virtual {p0}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/a;->a:[C

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 486
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 524
    iget v0, p0, Lorg/jsoup/c/a;->c:I

    iget v1, p0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/c/a;->a:[C

    iget v2, p0, Lorg/jsoup/c/a;->e:I

    iget v3, p0, Lorg/jsoup/c/a;->c:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
