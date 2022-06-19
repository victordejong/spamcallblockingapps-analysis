.class final Lcom/google/zxing/e/b/d;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method static a(Lcom/google/zxing/e/b/b;)I
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/e/b/d;->a(Lcom/google/zxing/e/b/b;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/e/b/d;->a(Lcom/google/zxing/e/b/b;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/google/zxing/e/b/b;Z)I
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v6, 0x0

    .line 196
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v0

    move v8, v0

    .line 198
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v0

    .line 199
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->c()[[B

    move-result-object v9

    move v7, v6

    move v1, v6

    .line 200
    :goto_2
    if-ge v7, v8, :cond_7

    .line 202
    const/4 v2, -0x1

    move v5, v6

    move v4, v6

    .line 203
    :goto_3
    if-ge v5, v0, :cond_5

    .line 204
    if-eqz p1, :cond_2

    aget-object v3, v9, v7

    aget-byte v3, v3, v5

    .line 205
    :goto_4
    if-ne v3, v2, :cond_3

    .line 206
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .line 203
    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v0

    move v8, v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v0

    goto :goto_1

    .line 204
    :cond_2
    aget-object v3, v9, v5

    aget-byte v3, v3, v7

    goto :goto_4

    .line 208
    :cond_3
    if-lt v4, v10, :cond_4

    .line 209
    add-int/lit8 v2, v4, -0x5

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 211
    :cond_4
    const/4 v4, 0x1

    move v2, v3

    .line 212
    goto :goto_5

    .line 215
    :cond_5
    if-lt v4, v10, :cond_6

    .line 216
    add-int/lit8 v2, v4, -0x5

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 200
    :cond_6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    .line 219
    :cond_7
    return v1
.end method

.method static a(III)Z
    .locals 3

    .prologue
    .line 157
    packed-switch p0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid mask pattern: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    add-int v0, p2, p1

    and-int/lit8 v0, v0, 0x1

    .line 188
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 162
    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    goto :goto_0

    .line 168
    :pswitch_3
    add-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 171
    :pswitch_4
    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 172
    goto :goto_0

    .line 174
    :pswitch_5
    mul-int v0, p2, p1

    .line 175
    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    .line 176
    goto :goto_0

    .line 178
    :pswitch_6
    mul-int v0, p2, p1

    .line 179
    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 180
    goto :goto_0

    .line 182
    :pswitch_7
    mul-int v0, p2, p1

    .line 183
    rem-int/lit8 v0, v0, 0x3

    add-int v1, p2, p1

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 184
    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static a([BII)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 108
    array-length v3, p0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 109
    :goto_0
    if-ge v2, v3, :cond_1

    .line 110
    aget-byte v4, p0, v2

    if-ne v4, v1, :cond_0

    .line 114
    :goto_1
    return v0

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 114
    goto :goto_1
.end method

.method private static a([[BIII)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 119
    array-length v3, p0

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 120
    :goto_0
    if-ge v2, v3, :cond_1

    .line 121
    aget-object v4, p0, v2

    aget-byte v4, v4, p1

    if-ne v4, v1, :cond_0

    .line 125
    :goto_1
    return v0

    .line 120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_1
.end method

.method static b(Lcom/google/zxing/e/b/b;)I
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->c()[[B

    move-result-object v4

    .line 52
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v5

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    .line 54
    :goto_0
    add-int/lit8 v1, v6, -0x1

    if-ge v3, v1, :cond_2

    .line 55
    aget-object v7, v4, v3

    move v1, v2

    .line 56
    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-ge v1, v8, :cond_1

    .line 57
    aget-byte v8, v7, v1

    .line 58
    add-int/lit8 v9, v1, 0x1

    aget-byte v9, v7, v9

    if-ne v8, v9, :cond_0

    add-int/lit8 v9, v3, 0x1

    aget-object v9, v4, v9

    aget-byte v9, v9, v1

    if-ne v8, v9, :cond_0

    add-int/lit8 v9, v3, 0x1

    aget-object v9, v4, v9

    add-int/lit8 v10, v1, 0x1

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 63
    :cond_2
    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static c(Lcom/google/zxing/e/b/b;)I
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->c()[[B

    move-result-object v4

    .line 74
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v5

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    .line 76
    :goto_0
    if-ge v3, v6, :cond_5

    move v1, v2

    .line 77
    :goto_1
    if-ge v1, v5, :cond_4

    .line 78
    aget-object v7, v4, v3

    .line 79
    add-int/lit8 v8, v1, 0x6

    if-ge v8, v5, :cond_1

    aget-byte v8, v7, v1

    if-ne v8, v10, :cond_1

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_1

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_1

    add-int/lit8 v8, v1, 0x4

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_1

    add-int/lit8 v8, v1, 0x5

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v1, 0x6

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_1

    add-int/lit8 v8, v1, -0x4

    .line 87
    invoke-static {v7, v8, v1}, Lcom/google/zxing/e/b/d;->a([BII)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v1, 0xb

    invoke-static {v7, v8, v9}, Lcom/google/zxing/e/b/d;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 90
    :cond_1
    add-int/lit8 v7, v3, 0x6

    if-ge v7, v6, :cond_3

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_3

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_3

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_3

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_3

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x6

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_3

    add-int/lit8 v7, v3, -0x4

    .line 98
    invoke-static {v4, v1, v7, v3}, Lcom/google/zxing/e/b/d;->a([[BIII)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v7, v3, 0x7

    add-int/lit8 v8, v3, 0xb

    invoke-static {v4, v1, v7, v8}, Lcom/google/zxing/e/b/d;->a([[BIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 76
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 103
    :cond_5
    mul-int/lit8 v0, v0, 0x28

    return v0
.end method

.method static d(Lcom/google/zxing/e/b/b;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->c()[[B

    move-result-object v4

    .line 135
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v5

    .line 136
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    .line 137
    :goto_0
    if-ge v3, v6, :cond_2

    .line 138
    aget-object v7, v4, v3

    move v1, v2

    .line 139
    :goto_1
    if-ge v1, v5, :cond_1

    .line 140
    aget-byte v8, v7, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/e/b/b;->b()I

    move-result v2

    mul-int/2addr v1, v2

    .line 146
    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0xa

    return v0
.end method
