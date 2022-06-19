.class public Landroidx/core/graphics/b;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/b$b;,
        Landroidx/core/graphics/b$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 174
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    .line 186
    :cond_1
    return p1

    .line 184
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    invoke-static {p0}, Landroidx/core/graphics/b;->b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-static {v1, v0}, Landroidx/core/graphics/b$b;->a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILandroidx/core/graphics/b$a;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 258
    .line 260
    iput-boolean v1, p2, Landroidx/core/graphics/b$a;->b:Z

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, p1

    .line 263
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 266
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 267
    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 293
    :goto_1
    if-eqz v3, :cond_3

    .line 299
    :cond_1
    iput v4, p2, Landroidx/core/graphics/b$a;->a:I

    .line 300
    return-void

    :sswitch_0
    move v0, v1

    move v3, v5

    .line 271
    goto :goto_1

    .line 274
    :sswitch_1
    if-eq v4, p1, :cond_0

    if-nez v0, :cond_0

    .line 276
    iput-boolean v5, p2, Landroidx/core/graphics/b$a;->b:Z

    move v0, v1

    move v3, v5

    goto :goto_1

    .line 280
    :sswitch_2
    if-nez v2, :cond_2

    move v0, v1

    move v2, v5

    .line 281
    goto :goto_1

    .line 285
    :cond_2
    iput-boolean v5, p2, Landroidx/core/graphics/b$a;->b:Z

    move v0, v1

    move v3, v5

    .line 287
    goto :goto_1

    :sswitch_3
    move v0, v5

    .line 290
    goto :goto_1

    .line 263
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Ljava/util/ArrayList;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/graphics/b$b;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Landroidx/core/graphics/b$b;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/b$b;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public static a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 145
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 146
    aget-object v2, p0, v0

    iget-char v2, v2, Landroidx/core/graphics/b$b;->a:C

    aget-object v3, p1, v0

    iget-char v3, v3, Landroidx/core/graphics/b$b;->a:C

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v0

    iget-object v2, v2, Landroidx/core/graphics/b$b;->b:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Landroidx/core/graphics/b$b;->b:[F

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static a([FII)[F
    .locals 3

    .prologue
    .line 54
    if-le p1, p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    array-length v0, p0

    .line 58
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_2
    sub-int v1, p2, p1

    .line 62
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    new-array v1, v1, [F

    .line 64
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v1
.end method

.method public static a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;
    .locals 4

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroidx/core/graphics/b$b;

    .line 124
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 125
    new-instance v2, Landroidx/core/graphics/b$b;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroidx/core/graphics/b$b;-><init>(Landroidx/core/graphics/b$b;)V

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 127
    goto :goto_0
.end method

.method public static b([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 163
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 164
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    iget-char v3, v3, Landroidx/core/graphics/b$b;->a:C

    iput-char v3, v2, Landroidx/core/graphics/b$b;->a:C

    move v2, v1

    .line 165
    :goto_1
    aget-object v3, p1, v0

    iget-object v3, v3, Landroidx/core/graphics/b$b;->b:[F

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 166
    aget-object v3, p0, v0

    iget-object v3, v3, Landroidx/core/graphics/b$b;->b:[F

    aget-object v4, p1, v0

    iget-object v4, v4, Landroidx/core/graphics/b$b;->b:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    .line 98
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 99
    invoke-static {p0, v0}, Landroidx/core/graphics/b;->a(Ljava/lang/String;I)I

    move-result v4

    .line 100
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 102
    invoke-static {v0}, Landroidx/core/graphics/b;->c(Ljava/lang/String;)[F

    move-result-object v2

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0, v2}, Landroidx/core/graphics/b;->a(Ljava/util/ArrayList;C[F)V

    .line 107
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v2, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-array v1, v3, [F

    invoke-static {v5, v0, v1}, Landroidx/core/graphics/b;->a(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/core/graphics/b$b;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/graphics/b$b;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 212
    :cond_0
    new-array v0, v1, [F

    .line 242
    :goto_0
    return-object v0

    .line 215
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [F

    .line 217
    const/4 v0, 0x1

    .line 220
    new-instance v5, Landroidx/core/graphics/b$a;

    invoke-direct {v5}, Landroidx/core/graphics/b$a;-><init>()V

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v0

    .line 226
    :goto_1
    if-ge v2, v6, :cond_3

    .line 227
    invoke-static {p0, v2, v5}, Landroidx/core/graphics/b;->a(Ljava/lang/String;ILandroidx/core/graphics/b$a;)V

    .line 228
    iget v3, v5, Landroidx/core/graphics/b$a;->a:I

    .line 230
    if-ge v2, v3, :cond_4

    .line 231
    add-int/lit8 v0, v1, 0x1

    .line 232
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v4, v1

    .line 235
    :goto_2
    iget-boolean v1, v5, Landroidx/core/graphics/b$a;->b:Z

    if-eqz v1, :cond_2

    move v2, v3

    move v1, v0

    .line 237
    goto :goto_1

    .line 239
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v1, v0

    goto :goto_1

    .line 242
    :cond_3
    const/4 v0, 0x0

    invoke-static {v4, v0, v1}, Landroidx/core/graphics/b;->a([FII)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
