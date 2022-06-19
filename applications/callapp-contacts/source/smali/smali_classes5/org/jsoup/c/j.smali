.class public final Lorg/jsoup/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/jsoup/c/j;->b:I

    .line 22
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 305
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_1

    .line 310
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()I
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(CC)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v7

    if-nez v7, :cond_8

    .line 270
    invoke-virtual {p0}, Lorg/jsoup/c/j;->c()C

    move-result v7

    if-eqz v0, :cond_1

    const/16 v8, 0x5c

    if-eq v0, v8, :cond_5

    :cond_1
    const/16 v8, 0x27

    if-ne v7, v8, :cond_2

    if-eq v7, p1, :cond_2

    if-nez v2, :cond_2

    xor-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v8, 0x22

    if-ne v7, v8, :cond_3

    if-eq v7, p1, :cond_3

    if-nez v3, :cond_3

    xor-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_0
    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-ne v7, p1, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v5, v1, :cond_5

    .line 282
    iget v5, p0, Lorg/jsoup/c/j;->b:I

    goto :goto_1

    :cond_4
    if-ne v7, p2, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    :goto_1
    if-lez v4, :cond_6

    if-eqz v0, :cond_6

    .line 289
    iget v6, p0, Lorg/jsoup/c/j;->b:I

    :cond_6
    move v0, v7

    :cond_7
    if-gtz v4, :cond_0

    :cond_8
    if-ltz v6, :cond_9

    .line 292
    iget-object p1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const-string p1, ""

    :goto_2
    if-lez v4, :cond_a

    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Did not find balanced marker at \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/a/c;->b(Ljava/lang/String;)V

    :cond_a
    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/jsoup/c/j;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .line 70
    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final varargs a([Ljava/lang/String;)Z
    .locals 4

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 90
    invoke-virtual {p0, v3}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 223
    iget v0, p0, Lorg/jsoup/c/j;->b:I

    .line 224
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/c/j;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget v1, p0, Lorg/jsoup/c/j;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/c/j;->b:I

    goto :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 2

    .line 140
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/c/j;->b:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()C
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 166
    invoke-virtual {p0, p1}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 169
    invoke-direct {p0}, Lorg/jsoup/c/j;->h()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 172
    iget v0, p0, Lorg/jsoup/c/j;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/c/j;->b:I

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1181
    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1183
    iget-object v1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1184
    iget v1, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/c/j;->b:I

    goto :goto_0

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    return-object v0
.end method

.method public final d()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2132
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/jsoup/b/c;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 326
    iget v2, p0, Lorg/jsoup/c/j;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/c/j;->b:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .line 362
    iget v0, p0, Lorg/jsoup/c/j;->b:I

    .line 363
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/c/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*|"

    const-string v2, "|"

    const-string v3, "_"

    const-string v4, "-"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jsoup/c/j;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    iget v1, p0, Lorg/jsoup/c/j;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/c/j;->b:I

    goto :goto_0

    .line 366
    :cond_1
    iget-object v1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 9

    .line 375
    iget v0, p0, Lorg/jsoup/c/j;->b:I

    .line 376
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/c/j;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    new-array v3, v1, [C

    fill-array-data v3, :array_0

    .line 3097
    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 3100
    aget-char v6, v3, v4

    .line 3101
    iget-object v7, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v8, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    .line 377
    :cond_2
    iget v1, p0, Lorg/jsoup/c/j;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/c/j;->b:I

    goto :goto_0

    .line 379
    :cond_3
    iget-object v1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 399
    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/c/j;->b:I

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/jsoup/c/j;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/c/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
