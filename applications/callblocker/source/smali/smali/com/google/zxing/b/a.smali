.class public final Lcom/google/zxing/b/a;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/b/a/e;Lcom/google/zxing/b/a/k;II)Lcom/google/zxing/common/b;
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1}, Lcom/google/zxing/b/a/k;->b()I

    move-result v7

    .line 108
    invoke-virtual {p1}, Lcom/google/zxing/b/a/k;->c()I

    move-result v8

    .line 110
    new-instance v9, Lcom/google/zxing/e/b/b;

    invoke-virtual {p1}, Lcom/google/zxing/b/a/k;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/b/a/k;->e()I

    move-result v2

    invoke-direct {v9, v0, v2}, Lcom/google/zxing/e/b/b;-><init>(II)V

    move v6, v1

    move v5, v1

    .line 114
    :goto_0
    if-ge v6, v8, :cond_6

    .line 117
    iget v0, p1, Lcom/google/zxing/b/a/k;->c:I

    rem-int v0, v6, v0

    if-nez v0, :cond_9

    move v0, v1

    move v2, v1

    .line 119
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/b/a/k;->d()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 120
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_2
    invoke-virtual {v9, v2, v5, v3}, Lcom/google/zxing/e/b/b;->a(IIZ)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 120
    goto :goto_2

    .line 123
    :cond_1
    add-int/lit8 v0, v5, 0x1

    :goto_3
    move v5, v1

    move v2, v1

    .line 126
    :goto_4
    if-ge v5, v7, :cond_4

    .line 128
    iget v3, p1, Lcom/google/zxing/b/a/k;->b:I

    rem-int v3, v5, v3

    if-nez v3, :cond_2

    .line 129
    invoke-virtual {v9, v2, v0, v4}, Lcom/google/zxing/e/b/b;->a(IIZ)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 132
    :cond_2
    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/b/a/e;->a(II)Z

    move-result v3

    invoke-virtual {v9, v2, v0, v3}, Lcom/google/zxing/e/b/b;->a(IIZ)V

    .line 133
    add-int/lit8 v3, v2, 0x1

    .line 135
    iget v2, p1, Lcom/google/zxing/b/a/k;->b:I

    rem-int v2, v5, v2

    iget v10, p1, Lcom/google/zxing/b/a/k;->b:I

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_8

    .line 136
    rem-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_3

    move v2, v4

    :goto_5
    invoke-virtual {v9, v3, v0, v2}, Lcom/google/zxing/e/b/b;->a(IIZ)V

    .line 137
    add-int/lit8 v2, v3, 0x1

    .line 126
    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    :cond_3
    move v2, v1

    .line 136
    goto :goto_5

    .line 140
    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 142
    iget v0, p1, Lcom/google/zxing/b/a/k;->c:I

    rem-int v0, v6, v0

    iget v2, p1, Lcom/google/zxing/b/a/k;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_7

    move v0, v1

    move v2, v1

    .line 144
    :goto_7
    invoke-virtual {p1}, Lcom/google/zxing/b/a/k;->d()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 145
    invoke-virtual {v9, v2, v3, v4}, Lcom/google/zxing/e/b/b;->a(IIZ)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 148
    :cond_5
    add-int/lit8 v0, v3, 0x1

    .line 114
    :goto_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v5, v0

    goto :goto_0

    .line 152
    :cond_6
    invoke-static {v9, p2, p3}, Lcom/google/zxing/b/a;->a(Lcom/google/zxing/e/b/b;II)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v3

    goto :goto_8

    :cond_8
    move v2, v3

    goto :goto_6

    :cond_9
    move v0, v5

    goto :goto_3
.end method

.method private static a(Lcom/google/zxing/e/b/b;II)Lcom/google/zxing/common/b;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v7

    .line 165
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v8

    .line 166
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 167
    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    div-int v3, v0, v7

    div-int v4, v1, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 171
    mul-int v3, v7, v9

    sub-int/2addr v0, v3

    div-int/lit8 v3, v0, 0x2

    .line 172
    mul-int v0, v8, v9

    sub-int v0, v1, v0

    div-int/lit8 v1, v0, 0x2

    .line 177
    if-lt p2, v8, :cond_0

    if-ge p1, v7, :cond_2

    .line 180
    :cond_0
    new-instance v0, Lcom/google/zxing/common/b;

    invoke-direct {v0, v7, v8}, Lcom/google/zxing/common/b;-><init>(II)V

    move v1, v2

    move v3, v2

    .line 185
    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/common/b;->a()V

    move v5, v1

    move v6, v2

    .line 186
    :goto_1
    if-ge v6, v8, :cond_4

    move v1, v3

    move v4, v2

    .line 188
    :goto_2
    if-ge v4, v7, :cond_3

    .line 189
    invoke-virtual {p0, v4, v6}, Lcom/google/zxing/e/b/b;->a(II)B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 190
    invoke-virtual {v0, v1, v5, v9, v9}, Lcom/google/zxing/common/b;->a(IIII)V

    .line 188
    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v9

    goto :goto_2

    .line 182
    :cond_2
    new-instance v0, Lcom/google/zxing/common/b;

    invoke-direct {v0, p1, p2}, Lcom/google/zxing/common/b;-><init>(II)V

    goto :goto_0

    .line 186
    :cond_3
    add-int/lit8 v4, v6, 0x1

    add-int v1, v5, v9

    move v5, v1

    move v6, v4

    goto :goto_1

    .line 195
    :cond_4
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/common/b;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;

    if-eq p2, v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only encode DATA_MATRIX, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requested dimensions can\'t be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    sget-object v1, Lcom/google/zxing/b/a/l;->a:Lcom/google/zxing/b/a/l;

    .line 65
    if-eqz p5, :cond_7

    .line 66
    sget-object v0, Lcom/google/zxing/c;->c:Lcom/google/zxing/c;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/b/a/l;

    .line 67
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 71
    :cond_4
    sget-object v0, Lcom/google/zxing/c;->d:Lcom/google/zxing/c;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/b;

    .line 72
    if-eqz v0, :cond_6

    move-object v2, v0

    .line 76
    :goto_0
    sget-object v0, Lcom/google/zxing/c;->e:Lcom/google/zxing/c;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/b;

    .line 77
    if-eqz v0, :cond_5

    .line 84
    :goto_1
    invoke-static {p1, v1, v2, v0}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/String;Lcom/google/zxing/b/a/l;Lcom/google/zxing/b;Lcom/google/zxing/b;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v2, v0, v5}, Lcom/google/zxing/b/a/k;->a(ILcom/google/zxing/b/a/l;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Lcom/google/zxing/b/a/k;

    move-result-object v0

    .line 89
    invoke-static {v3, v0}, Lcom/google/zxing/b/a/i;->a(Ljava/lang/String;Lcom/google/zxing/b/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/google/zxing/b/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/b/a/k;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/b/a/k;->c()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/google/zxing/b/a/e;-><init>(Ljava/lang/CharSequence;II)V

    .line 93
    invoke-virtual {v2}, Lcom/google/zxing/b/a/e;->a()V

    .line 96
    invoke-static {v2, v0, p3, p4}, Lcom/google/zxing/b/a;->a(Lcom/google/zxing/b/a/e;Lcom/google/zxing/b/a/k;II)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v0, v3

    goto :goto_1

    :cond_6
    move-object v2, v3

    goto :goto_0

    :cond_7
    move-object v0, v3

    move-object v2, v3

    goto :goto_1
.end method
