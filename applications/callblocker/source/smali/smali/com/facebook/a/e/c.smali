.class final Lcom/facebook/a/e/c;
.super Ljava/lang/Object;
.source "Operator.java"


# direct methods
.method static a([FI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 48
    aget v1, p0, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 49
    aput v2, p0, v0

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method static a([FII)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 130
    mul-int v0, p1, p2

    new-array v3, v0, [F

    move v2, v1

    .line 131
    :goto_0
    if-ge v2, p1, :cond_1

    move v0, v1

    .line 132
    :goto_1
    if-ge v0, p2, :cond_0

    .line 133
    mul-int v4, v0, p1

    add-int/2addr v4, v2

    mul-int v5, v2, p2

    add-int/2addr v5, v0

    aget v5, p0, v5

    aput v5, v3, v4

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 136
    :cond_1
    return-object v3
.end method

.method static a([FIII)[F
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 144
    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    new-array v4, v0, [F

    move v3, v1

    .line 145
    :goto_0
    if-ge v3, p1, :cond_2

    move v2, v1

    .line 146
    :goto_1
    if-ge v2, p2, :cond_1

    move v0, v1

    .line 147
    :goto_2
    if-ge v0, p3, :cond_0

    .line 148
    mul-int v5, v0, p1

    mul-int/2addr v5, p2

    mul-int v6, v2, p1

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    mul-int v6, v3, p2

    mul-int/2addr v6, p3

    mul-int v7, v2, p3

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    aget v6, p0, v6

    aput v6, v4, v5

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 145
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 152
    :cond_2
    return-object v4
.end method

.method static a([F[F)[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 56
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object v0
.end method

.method static a([F[FIII)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 25
    move v2, v1

    :goto_0
    mul-int v0, p2, p3

    if-ge v2, v0, :cond_1

    move v0, v1

    .line 26
    :goto_1
    if-ge v0, p4, :cond_0

    .line 27
    mul-int v3, v2, p4

    add-int/2addr v3, v0

    aget v4, p0, v3

    aget v5, p1, v0

    add-float/2addr v4, v5

    aput v4, p0, v3

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 30
    :cond_1
    return-object p0
.end method

.method static a([F[FIIIII)[F
    .locals 9

    .prologue
    .line 164
    sub-int v0, p3, p5

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p2

    mul-int/2addr v0, p6

    new-array v6, v0, [F

    .line 165
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, p2, :cond_4

    .line 166
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, p6, :cond_3

    .line 167
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    sub-int v0, p3, p5

    add-int/lit8 v0, v0, 0x1

    if-ge v3, v0, :cond_2

    .line 168
    const/4 v0, 0x0

    .line 169
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, p5, :cond_1

    .line 170
    const/4 v1, 0x0

    :goto_4
    if-ge v1, p4, :cond_0

    .line 171
    mul-int v7, p3, p4

    mul-int/2addr v7, v5

    add-int v8, v2, v3

    mul-int/2addr v8, p4

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    aget v7, p0, v7

    mul-int v8, v2, p4

    add-int/2addr v8, v1

    mul-int/2addr v8, p6

    add-int/2addr v8, v4

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 175
    :cond_1
    sub-int v1, p3, p5

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p6

    mul-int/2addr v1, v5

    mul-int v2, v3, p6

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    aput v0, v6, v1

    .line 167
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 166
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 165
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 179
    :cond_4
    return-object v6
.end method

.method static a([F[F[FIII)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {p0, p1, p3, p4, p5}, Lcom/facebook/a/e/c;->b([F[FIII)[F

    move-result-object v3

    move v2, v1

    .line 96
    :goto_0
    if-ge v2, p3, :cond_1

    move v0, v1

    .line 97
    :goto_1
    if-ge v0, p5, :cond_0

    .line 98
    mul-int v4, v2, p5

    add-int/2addr v4, v0

    aget v5, v3, v4

    aget v6, p2, v0

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 101
    :cond_1
    return-object v3
.end method

.method static a([I[FIII)[F
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 112
    mul-int v0, p2, p3

    mul-int/2addr v0, p4

    new-array v4, v0, [F

    move v3, v1

    .line 113
    :goto_0
    if-ge v3, p2, :cond_2

    move v2, v1

    .line 114
    :goto_1
    if-ge v2, p3, :cond_1

    .line 115
    mul-int v0, v3, p3

    add-int/2addr v0, v2

    aget v5, p0, v0

    move v0, v1

    .line 116
    :goto_2
    if-ge v0, p4, :cond_0

    .line 117
    mul-int v6, p4, p3

    mul-int/2addr v6, v3

    mul-int v7, p4, v2

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    mul-int v7, v5, p4

    add-int/2addr v7, v0

    aget v7, p1, v7

    aput v7, v4, v6

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 113
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 122
    :cond_2
    return-object v4
.end method

.method static b([FI)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    const/4 v2, 0x0

    move v3, v1

    .line 66
    :goto_0
    if-ge v3, p1, :cond_1

    .line 68
    aget v4, p0, v3

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 69
    aget v0, p0, v3

    .line 66
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 73
    :goto_1
    if-ge v3, p1, :cond_2

    .line 74
    aget v4, p0, v3

    sub-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, p0, v3

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    .line 77
    :goto_2
    if-ge v3, p1, :cond_3

    .line 78
    aget v0, p0, v3

    add-float/2addr v0, v2

    .line 77
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    .line 81
    :goto_3
    if-ge v0, p1, :cond_4

    .line 82
    aget v1, p0, v0

    div-float/2addr v1, v2

    aput v1, p0, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 84
    :cond_4
    return-void
.end method

.method static b([FIII)[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 187
    sub-int v0, p1, p3

    add-int/lit8 v4, v0, 0x1

    .line 188
    mul-int v0, v4, p2

    new-array v5, v0, [F

    move v3, v2

    .line 190
    :goto_0
    if-ge v3, p2, :cond_2

    move v1, v2

    .line 191
    :goto_1
    if-ge v1, v4, :cond_1

    move v0, v1

    .line 192
    :goto_2
    add-int v6, v1, p3

    if-ge v0, v6, :cond_0

    .line 193
    mul-int v6, v1, p2

    add-int/2addr v6, v3

    mul-int v7, v1, p2

    add-int/2addr v7, v3

    aget v7, v5, v7

    mul-int v8, v0, p2

    add-int/2addr v8, v3

    aget v8, p0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, v5, v6

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 197
    :cond_2
    return-object v5
.end method

.method static b([F[FIII)[F
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 34
    mul-int v0, p2, p4

    new-array v4, v0, [F

    move v3, v1

    .line 35
    :goto_0
    if-ge v3, p2, :cond_2

    move v2, v1

    .line 36
    :goto_1
    if-ge v2, p4, :cond_1

    .line 37
    mul-int v0, v3, p4

    add-int/2addr v0, v2

    const/4 v5, 0x0

    aput v5, v4, v0

    move v0, v1

    .line 38
    :goto_2
    if-ge v0, p3, :cond_0

    .line 39
    mul-int v5, v3, p4

    add-int/2addr v5, v2

    aget v6, v4, v5

    mul-int v7, v3, p3

    add-int/2addr v7, v0

    aget v7, p0, v7

    mul-int v8, v0, p4

    add-int/2addr v8, v2

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 43
    :cond_2
    return-object v4
.end method
