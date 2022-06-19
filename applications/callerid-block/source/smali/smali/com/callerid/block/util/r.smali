.class public Lcom/callerid/block/util/r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/16 v6, 0x39

    const/16 v7, 0x30

    const/16 v8, 0x61

    const/16 v9, 0x41

    if-lt v3, v7, :cond_0

    if-le v3, v6, :cond_2

    :cond_0
    if-lt v3, v9, :cond_1

    if-le v3, v5, :cond_2

    :cond_1
    if-lt v3, v8, :cond_6

    if-gt v3, v4, :cond_6

    :cond_2
    rem-int/lit8 v10, v2, 0x5

    sub-int v10, v3, v10

    if-ge v10, v7, :cond_3

    rsub-int/lit8 v3, v10, 0x30

    sub-int/2addr v4, v3

    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_3
    if-lt v3, v9, :cond_4

    if-ge v10, v9, :cond_4

    rsub-int/lit8 v3, v10, 0x41

    sub-int/2addr v6, v3

    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    :cond_4
    if-lt v3, v8, :cond_5

    if-ge v10, v8, :cond_5

    rsub-int/lit8 v3, v10, 0x61

    sub-int/2addr v5, v3

    add-int/lit8 v3, v5, 0x1

    goto :goto_1

    :cond_5
    move v3, v10

    :cond_6
    :goto_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/a0;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_3
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/callerid/block/util/a0;->j([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    aget-char v2, p0, v1

    const/16 v3, 0x61

    const/16 v4, 0x41

    const/16 v5, 0x30

    const/16 v6, 0x7a

    const/16 v7, 0x5a

    const/16 v8, 0x39

    if-lt v2, v5, :cond_0

    if-le v2, v8, :cond_2

    :cond_0
    if-lt v2, v4, :cond_1

    if-le v2, v7, :cond_2

    :cond_1
    if-lt v2, v3, :cond_6

    if-gt v2, v6, :cond_6

    :cond_2
    rem-int/lit8 v9, v1, 0x5

    add-int/2addr v9, v2

    if-le v9, v6, :cond_3

    add-int/lit8 v9, v9, -0x7a

    add-int/2addr v9, v5

    :goto_1
    add-int/lit8 v2, v9, -0x1

    goto :goto_2

    :cond_3
    if-gt v2, v7, :cond_4

    if-le v9, v7, :cond_4

    add-int/lit8 v9, v9, -0x5a

    add-int/2addr v9, v3

    goto :goto_1

    :cond_4
    if-gt v2, v8, :cond_5

    if-le v9, v8, :cond_5

    add-int/lit8 v9, v9, -0x39

    add-int/2addr v9, v4

    goto :goto_1

    :cond_5
    move v2, v9

    :cond_6
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
