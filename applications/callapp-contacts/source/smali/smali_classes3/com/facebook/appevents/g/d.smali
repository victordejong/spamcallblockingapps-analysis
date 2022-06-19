.class final Lcom/facebook/appevents/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/facebook/appevents/g/a;I)Lcom/facebook/appevents/g/a;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/g/d;

    invoke-static {v2}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 40040
    :cond_0
    :try_start_0
    iget-object v3, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 41040
    iget-object v6, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 42040
    iget-object v8, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-int v10, v6, v1

    add-int/2addr v10, v7

    .line 244
    new-instance v11, Lcom/facebook/appevents/g/a;

    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v3, v12, v5

    aput v10, v12, v7

    aput v8, v12, v9

    invoke-direct {v11, v12}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 43036
    iget-object v0, v0, Lcom/facebook/appevents/g/a;->a:[F

    .line 44036
    iget-object v7, v11, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v8, :cond_3

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v10, :cond_2

    mul-int v14, v9, v10

    mul-int v14, v14, v8

    mul-int v15, v13, v8

    add-int/2addr v14, v15

    add-int/2addr v14, v12

    mul-int v16, v9, v6

    mul-int v16, v16, v8

    add-int v16, v16, v15

    add-int v16, v16, v12

    const/4 v15, 0x1

    .line 253
    aput v15, v7, v14

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v1, :cond_1

    .line 255
    aget v5, v7, v14

    mul-int v17, v15, v8

    add-int v17, v16, v17

    aget v4, v0, v17

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v7, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    return-object v11

    :catchall_0
    move-exception v0

    .line 260
    invoke-static {v0, v2}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method static a(Lcom/facebook/appevents/g/a;Lcom/facebook/appevents/g/a;Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 10

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 21040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 22040
    iget-object v4, p2, Lcom/facebook/appevents/g/a;->b:[I

    aget v4, v4, v3

    .line 143
    invoke-static {p0, p1}, Lcom/facebook/appevents/g/d;->c(Lcom/facebook/appevents/g/a;Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;

    move-result-object p0

    .line 23036
    iget-object p1, p2, Lcom/facebook/appevents/g/a;->a:[F

    .line 24036
    iget-object p2, p0, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    mul-int v7, v5, v4

    add-int/2addr v7, v6

    .line 149
    aget v8, p2, v7

    aget v9, p1, v6

    add-float/2addr v8, v9

    aput v8, p2, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 152
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static a([Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 15

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 90
    :try_start_0
    aget-object v3, p0, v1

    .line 15040
    iget-object v3, v3, Lcom/facebook/appevents/g/a;->b:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ge v4, v6, :cond_1

    .line 93
    aget-object v6, p0, v4

    .line 16040
    iget-object v6, v6, Lcom/facebook/appevents/g/a;->b:[I

    aget v6, v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v4, Lcom/facebook/appevents/g/a;

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v3, v8, v1

    aput v5, v8, v7

    invoke-direct {v4, v8}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 17036
    iget-object v8, v4, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_3

    mul-int v10, v9, v5

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_2

    .line 101
    aget-object v12, p0, v11

    .line 18036
    iget-object v12, v12, Lcom/facebook/appevents/g/a;->a:[F

    .line 102
    aget-object v13, p0, v11

    .line 18040
    iget-object v13, v13, Lcom/facebook/appevents/g/a;->b:[I

    aget v13, v13, v7

    mul-int v14, v9, v13

    .line 103
    invoke-static {v12, v14, v8, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v10, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-object v4

    :catchall_0
    move-exception p0

    .line 107
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static a([Ljava/lang/String;Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 14

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 156
    :cond_0
    :try_start_0
    array-length v1, p0

    .line 24040
    iget-object v3, p1, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 158
    new-instance v5, Lcom/facebook/appevents/g/a;

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/16 v8, 0x80

    aput v8, v6, v4

    const/4 v4, 0x2

    aput v3, v6, v4

    invoke-direct {v5, v6}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 25036
    iget-object v4, v5, Lcom/facebook/appevents/g/a;->a:[F

    .line 26036
    iget-object p1, p1, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_2

    .line 163
    aget-object v9, p0, v6

    invoke-static {v9, v8}, Lcom/facebook/appevents/g/e;->a(Ljava/lang/String;I)[I

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    .line 165
    aget v11, v9, v10

    mul-int v11, v11, v3

    mul-int/lit16 v12, v3, 0x80

    mul-int v12, v12, v6

    mul-int v13, v3, v10

    add-int/2addr v12, v13

    invoke-static {p1, v11, v4, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v5

    :catchall_0
    move-exception p0

    .line 173
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static a(Lcom/facebook/appevents/g/a;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 11036
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v1, 0x0

    .line 66
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 67
    aget v2, p0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 68
    aput v3, p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 71
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Lcom/facebook/appevents/g/a;Lcom/facebook/appevents/g/a;)V
    .locals 11

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 2040
    iget-object v3, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 3040
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 4036
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    .line 5036
    iget-object p1, p1, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_1

    mul-int v8, v5, v3

    mul-int v8, v8, v4

    mul-int v9, v6, v4

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 38
    aget v9, p0, v8

    aget v10, p1, v7

    add-float/2addr v9, v10

    aput v9, p0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 42
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static b(Lcom/facebook/appevents/g/a;Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/g/d;

    invoke-static {v2}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 33040
    :cond_0
    :try_start_0
    iget-object v3, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 34040
    iget-object v6, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 35040
    iget-object v8, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    .line 36040
    iget-object v10, v1, Lcom/facebook/appevents/g/a;->b:[I

    aget v10, v10, v5

    sub-int v11, v6, v10

    add-int/2addr v11, v7

    .line 37040
    iget-object v12, v1, Lcom/facebook/appevents/g/a;->b:[I

    aget v12, v12, v9

    .line 216
    new-instance v13, Lcom/facebook/appevents/g/a;

    const/4 v14, 0x3

    new-array v14, v14, [I

    aput v3, v14, v5

    aput v11, v14, v7

    aput v12, v14, v9

    invoke-direct {v13, v14}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 38036
    iget-object v0, v0, Lcom/facebook/appevents/g/a;->a:[F

    .line 39036
    iget-object v7, v13, Lcom/facebook/appevents/g/a;->a:[F

    .line 40036
    iget-object v1, v1, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_5

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_4

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v11, :cond_3

    const/16 v16, 0x0

    :goto_3
    if-ge v5, v10, :cond_2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v8, :cond_1

    mul-int v17, v6, v8

    mul-int v17, v17, v9

    add-int v18, v5, v15

    mul-int v18, v18, v8

    add-int v17, v17, v18

    add-int v17, v17, v4

    .line 227
    aget v17, v0, v17

    mul-int v18, v5, v8

    add-int v18, v18, v4

    mul-int v18, v18, v12

    add-int v18, v18, v14

    aget v18, v1, v18

    mul-float v17, v17, v18

    add-float v16, v16, v17

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    mul-int v4, v11, v12

    mul-int v4, v4, v9

    mul-int v5, v15, v12

    add-int/2addr v4, v5

    add-int/2addr v4, v14

    .line 232
    aput v16, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    return-object v13

    :catchall_0
    move-exception v0

    .line 236
    invoke-static {v0, v2}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method static b(Lcom/facebook/appevents/g/a;)V
    .locals 7

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 11053
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 12053
    :goto_0
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 13040
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    aget v4, v4, v1

    mul-int v3, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-gtz v5, :cond_3

    .line 14040
    iget-object v6, p0, Lcom/facebook/appevents/g/a;->b:[I

    aget v6, v6, v5

    .line 83
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    aput v3, v1, v2

    .line 14044
    iput-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    .line 14045
    invoke-static {v1}, Lcom/facebook/appevents/g/a;->a([I)I

    move-result v1

    .line 14046
    new-array v2, v1, [F

    .line 14047
    iget-object v3, p0, Lcom/facebook/appevents/g/a;->a:[F

    iget v5, p0, Lcom/facebook/appevents/g/a;->c:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14048
    iput-object v2, p0, Lcom/facebook/appevents/g/a;->a:[F

    .line 14049
    iput v1, p0, Lcom/facebook/appevents/g/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 87
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Lcom/facebook/appevents/g/a;Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/g/d;

    invoke-static {v2}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 5040
    :cond_0
    :try_start_0
    iget-object v3, v0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 6040
    iget-object v6, v1, Lcom/facebook/appevents/g/a;->b:[I

    aget v6, v6, v5

    .line 7040
    iget-object v7, v1, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 48
    new-instance v9, Lcom/facebook/appevents/g/a;

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v3, v10, v5

    aput v7, v10, v8

    invoke-direct {v9, v10}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 8036
    iget-object v0, v0, Lcom/facebook/appevents/g/a;->a:[F

    .line 9036
    iget-object v1, v1, Lcom/facebook/appevents/g/a;->a:[F

    .line 10036
    iget-object v8, v9, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_2

    mul-int v12, v10, v7

    add-int/2addr v12, v11

    const/4 v13, 0x0

    .line 55
    aput v13, v8, v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v6, :cond_1

    .line 57
    aget v14, v8, v12

    mul-int v15, v10, v6

    add-int/2addr v15, v13

    aget v15, v0, v15

    mul-int v16, v13, v7

    add-int v16, v16, v11

    aget v16, v1, v16

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v8, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    return-object v9

    :catchall_0
    move-exception v0

    .line 61
    invoke-static {v0, v2}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method static c(Lcom/facebook/appevents/g/a;)V
    .locals 11

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 19040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 20040
    iget-object v3, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 21036
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    :goto_0
    if-ge v2, v1, :cond_6

    mul-int v4, v2, v3

    add-int v5, v4, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v4

    :goto_1
    if-ge v8, v5, :cond_2

    .line 121
    aget v9, p0, v8

    cmpl-float v9, v9, v6

    if-lez v9, :cond_1

    .line 122
    aget v6, p0, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_2
    if-ge v8, v5, :cond_3

    .line 127
    aget v9, p0, v8

    sub-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, p0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_4

    .line 131
    aget v8, p0, v6

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v4, v5, :cond_5

    .line 135
    aget v6, p0, v4

    div-float/2addr v6, v7

    aput v6, p0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 138
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static d(Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 11

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 26040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 27040
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 179
    new-instance v6, Lcom/facebook/appevents/g/a;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v3

    aput v1, v7, v5

    invoke-direct {v6, v7}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 28036
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    .line 29036
    iget-object v5, v6, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_1

    mul-int v9, v8, v1

    add-int/2addr v9, v7

    mul-int v10, v7, v4

    add-int/2addr v10, v8

    .line 185
    aget v10, p0, v10

    aput v10, v5, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-object v6

    :catchall_0
    move-exception p0

    .line 188
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static e(Lcom/facebook/appevents/g/a;)Lcom/facebook/appevents/g/a;
    .locals 14

    const-class v0, Lcom/facebook/appevents/g/d;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 29040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 30040
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 31040
    iget-object v6, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 195
    new-instance v8, Lcom/facebook/appevents/g/a;

    const/4 v9, 0x3

    new-array v9, v9, [I

    aput v6, v9, v3

    aput v4, v9, v5

    aput v1, v9, v7

    invoke-direct {v8, v9}, Lcom/facebook/appevents/g/a;-><init>([I)V

    .line 32036
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    .line 33036
    iget-object v5, v8, Lcom/facebook/appevents/g/a;->a:[F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_1

    mul-int v11, v10, v1

    mul-int v11, v11, v4

    mul-int v12, v9, v1

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    mul-int v12, v7, v4

    mul-int v12, v12, v6

    mul-int v13, v9, v6

    add-int/2addr v12, v13

    add-int/2addr v12, v10

    .line 202
    aget v12, p0, v12

    aput v12, v5, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v8

    :catchall_0
    move-exception p0

    .line 206
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
