.class public Lha1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-byte v4, p0, v3

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v4, p0, v3

    const/16 v5, 0x64

    if-lt v4, v5, :cond_2

    aget-byte v4, p0, v3

    const/16 v6, 0x6d

    if-gt v4, v6, :cond_2

    aget-byte v4, p0, v3

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    aget-byte v4, p0, v3

    if-ltz v4, :cond_3

    aget-byte v4, p0, v3

    const/16 v5, 0x63

    if-gt v4, v5, :cond_3

    aget-byte v4, p0, v3

    div-int/lit8 v4, v4, 0xa

    aget-byte v5, p0, v3

    mul-int/lit8 v6, v4, 0xa

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-eqz p0, :cond_5

    const/16 v2, 0x10

    if-le p0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x7

    :goto_1
    const/4 v3, -0x1

    if-le p0, v3, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-lez p0, :cond_4

    add-int/lit8 v6, p0, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    goto :goto_2

    :cond_4
    const/16 v6, 0xa

    :goto_2
    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v4

    int-to-byte v4, v6

    aput-byte v4, v0, v2

    add-int/lit8 p0, p0, -0x2

    add-int/2addr v2, v3

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0

    :array_0
    .array-data 1
        0x6et
        0x6et
        0x6et
        0x6et
        0x6et
        0x6et
        0x6et
        0x6et
    .end array-data
.end method

.method public static c([B)Ljava/lang/Long;
    .locals 6

    if-eqz p0, :cond_3

    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v4, p0, v0

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/4 v4, 0x7

    if-ge v0, v4, :cond_1

    shl-long/2addr v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(J)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    ushr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
