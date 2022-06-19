.class public abstract Lcom/google/zxing/c/p;
.super Lcom/google/zxing/c/m;
.source "UPCEANReader.java"


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[I

.field static final e:[[I

.field static final f:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 53
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/c/p;->b:[I

    .line 58
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/c/p;->c:[I

    .line 62
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/zxing/c/p;->d:[I

    .line 66
    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_7

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_8

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/c/p;->e:[[I

    .line 85
    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lcom/google/zxing/c/p;->f:[[I

    .line 86
    sget-object v2, Lcom/google/zxing/c/p;->e:[[I

    sget-object v3, Lcom/google/zxing/c/p;->f:[[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    .line 87
    :goto_0
    const/16 v0, 0x14

    if-ge v2, v0, :cond_1

    .line 88
    sget-object v0, Lcom/google/zxing/c/p;->e:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    .line 89
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 90
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 91
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_0
    sget-object v0, Lcom/google/zxing/c/p;->f:[[I

    aput-object v4, v0, v2

    .line 87
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 95
    :cond_1
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 62
    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 265
    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 269
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/c/p;->b(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 273
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 274
    const/4 v1, 0x0

    .line 275
    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 276
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 277
    if-ltz v3, :cond_0

    if-le v3, v4, :cond_1

    .line 278
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 280
    :cond_1
    add-int/2addr v1, v3

    .line 275
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 282
    :cond_2
    mul-int/lit8 v1, v1, 0x3

    .line 283
    add-int/lit8 v0, v2, -0x2

    :goto_1
    if-ltz v0, :cond_5

    .line 284
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 285
    if-ltz v2, :cond_3

    if-le v2, v4, :cond_4

    .line 286
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 288
    :cond_4
    add-int/2addr v1, v2

    .line 283
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 290
    :cond_5
    rsub-int v0, v1, 0x3e8

    rem-int/lit8 v0, v0, 0xa

    return v0
.end method
