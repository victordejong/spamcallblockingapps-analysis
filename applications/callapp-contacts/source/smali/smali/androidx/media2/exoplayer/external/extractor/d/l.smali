.class final Landroidx/media2/exoplayer/external/extractor/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/d/l$c;,
        Landroidx/media2/exoplayer/external/extractor/d/l$d;,
        Landroidx/media2/exoplayer/external/extractor/d/l$b;,
        Landroidx/media2/exoplayer/external/extractor/d/l$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static a(ILandroidx/media2/exoplayer/external/extractor/d/j;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 224
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    .line 226
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x34

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "mapping type other than 0 not supported: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 238
    :goto_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 239
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    .line 241
    invoke-static {v9}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(I)I

    move-result v10

    invoke-virtual {p1, v10}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 242
    invoke-static {v9}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 247
    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p0, :cond_3

    .line 252
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    .line 256
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 257
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 258
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_5
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static a(ILandroidx/media2/exoplayer/external/util/p;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 139
    :cond_0
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p1

    const/16 p2, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "too short header: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    .line 147
    :cond_2
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_4
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    .line 152
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    .line 153
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    .line 154
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    .line 155
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    .line 156
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    .line 160
    :cond_7
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroidx/media2/exoplayer/external/extractor/d/j;)[Landroidx/media2/exoplayer/external/extractor/d/l$c;
    .locals 8

    const/4 v0, 0x6

    .line 210
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 211
    new-array v1, v0, [Landroidx/media2/exoplayer/external/extractor/d/l$c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v3

    const/16 v4, 0x10

    .line 214
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v5

    .line 215
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v4

    const/16 v6, 0x8

    .line 216
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v6

    .line 217
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/d/l$c;

    invoke-direct {v7, v3, v5, v4, v6}, Landroidx/media2/exoplayer/external/extractor/d/l$c;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static b(Landroidx/media2/exoplayer/external/extractor/d/j;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 264
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    .line 266
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    .line 270
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 271
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 272
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 273
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 274
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 275
    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    .line 278
    invoke-virtual {p0, v9}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v9

    .line 279
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    .line 280
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v10

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    .line 282
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    .line 286
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 287
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_5
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method static c(Landroidx/media2/exoplayer/external/extractor/d/j;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 296
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_9

    const/16 v5, 0x10

    .line 298
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-ne v6, v2, :cond_6

    const/4 v5, 0x5

    .line 312
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v5

    const/4 v6, -0x1

    .line 314
    new-array v9, v5, [I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_1

    .line 316
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v11

    aput v11, v9, v10

    .line 317
    aget v11, v9, v10

    if-le v11, v6, :cond_0

    .line 318
    aget v6, v9, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 321
    new-array v10, v6, [I

    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v11, v6, :cond_4

    const/4 v13, 0x3

    .line 323
    invoke-virtual {p0, v13}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 324
    invoke-virtual {p0, v12}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v12

    if-lez v12, :cond_2

    .line 326
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    :cond_2
    const/4 v13, 0x0

    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 329
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 332
    :cond_4
    invoke-virtual {p0, v12}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 333
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v7, v5, :cond_8

    .line 336
    aget v12, v9, v7

    .line 337
    aget v12, v10, v12

    add-int/2addr v8, v12

    :goto_5
    if-ge v11, v8, :cond_5

    .line 339
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 344
    :cond_6
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_7
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 302
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 303
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 304
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 305
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 306
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_8

    .line 308
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
