.class public final Lorg/apache/commons/lang3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;II)I
    .locals 7

    .line 100
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 103
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_3

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 109
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0x10ffff

    if-gt p1, v2, :cond_5

    .line 116
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    :goto_1
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge p2, v3, :cond_5

    .line 118
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, p2, 0x1

    .line 119
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 120
    aget-char v6, p1, v1

    if-ne v3, v6, :cond_4

    aget-char v2, p1, v2

    if-ne v5, v2, :cond_4

    return p2

    :cond_4
    move p2, v4

    goto :goto_1

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 137
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 139
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 140
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 141
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 142
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 144
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;I)Z
    .locals 7

    .line 336
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 337
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    .line 344
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    .line 345
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    if-ltz p2, :cond_6

    if-gez p4, :cond_1

    goto :goto_1

    :cond_1
    if-lt v0, p4, :cond_6

    if-ge v1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_5

    add-int/lit8 p4, p2, 0x1

    .line 358
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v3, v0, 0x1

    .line 359
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq p2, v0, :cond_4

    if-nez p1, :cond_3

    return v2

    .line 370
    :cond_3
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    .line 371
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-eq p2, v0, :cond_4

    .line 372
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq p2, v0, :cond_4

    return v2

    :cond_4
    move p2, p4

    move p4, v1

    move v0, v3

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method static b(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 183
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 184
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    .line 186
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-gez p2, :cond_1

    return v1

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    :cond_2
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_4

    move v2, p2

    :goto_0
    if-ltz v2, :cond_4

    .line 195
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_7

    .line 203
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_5

    return v1

    :cond_5
    :goto_1
    if-ltz p2, :cond_7

    .line 209
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v3, p2, 0x1

    .line 210
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    .line 211
    aget-char v4, p1, v4

    if-ne v4, v0, :cond_6

    aget-char v0, p1, v2

    if-ne v0, v3, :cond_6

    return p2

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_7
    return v1
.end method

.method static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9

    .line 230
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 231
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 233
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 234
    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 235
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 236
    check-cast p0, Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 240
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 241
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v0, :cond_3

    move p2, v0

    :cond_3
    const/4 v2, -0x1

    if-ltz p2, :cond_10

    if-ltz v1, :cond_10

    if-le v1, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_5

    return p2

    :cond_5
    const/16 v3, 0x10

    if-gt v1, v3, :cond_8

    .line 256
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 257
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 258
    :cond_6
    instance-of v3, p0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    .line 259
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 260
    :cond_7
    instance-of v3, p0, Ljava/lang/StringBuffer;

    if-eqz v3, :cond_8

    .line 261
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_8
    add-int v3, p2, v1

    if-le v3, v0, :cond_9

    sub-int p2, v0, v1

    :cond_9
    const/4 v0, 0x0

    .line 269
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 273
    :cond_a
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_b

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_a

    return v2

    :cond_b
    const/4 v4, 0x1

    add-int/lit8 v5, v1, -0x1

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v5, :cond_e

    add-int v7, p2, v6

    .line 1291
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_d

    add-int v7, p2, v5

    .line 1293
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_c

    goto :goto_1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_d
    :goto_1
    const/4 v4, 0x0

    :cond_e
    if-eqz v4, :cond_f

    return p2

    :cond_f
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_a

    :cond_10
    :goto_2
    return v2
.end method
