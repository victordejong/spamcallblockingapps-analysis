.class public final Lorg/jsoup/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/a/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/a/b;->b:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 231
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1196
    new-instance p1, Lorg/jsoup/c/g;

    new-instance v0, Lorg/jsoup/c/b;

    invoke-direct {v0}, Lorg/jsoup/c/b;-><init>()V

    invoke-direct {p1, v0}, Lorg/jsoup/c/g;-><init>(Lorg/jsoup/c/m;)V

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0, p2, p1}, Lorg/jsoup/a/b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/c/g;)Lorg/jsoup/nodes/f;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/c/g;)Lorg/jsoup/nodes/f;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 101
    invoke-static {v0, v3}, Lorg/jsoup/b/a;->a(Ljava/io/InputStream;I)Lorg/jsoup/b/a;

    move-result-object v0

    const v4, 0x8000

    .line 106
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    const/4 v5, 0x1

    const-string v6, "maxSize must be 0 (unlimited) or larger"

    .line 1200
    invoke-static {v5, v6}, Lorg/jsoup/a/c;->a(ZLjava/lang/String;)V

    const/16 v7, 0x13ff

    .line 1201
    invoke-static {v0, v7}, Lorg/jsoup/b/a;->a(Ljava/io/InputStream;I)Lorg/jsoup/b/a;

    move-result-object v8

    .line 2077
    invoke-static {v5, v6}, Lorg/jsoup/a/c;->a(ZLjava/lang/String;)V

    new-array v6, v7, [B

    .line 2081
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2087
    :goto_0
    invoke-virtual {v8, v6}, Lorg/jsoup/b/a;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    if-lt v10, v7, :cond_1

    .line 2091
    invoke-virtual {v9, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    sub-int/2addr v7, v10

    .line 2096
    invoke-virtual {v9, v6, v3, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2098
    :cond_2
    :goto_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 108
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v7, v11, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 109
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 2253
    invoke-virtual {v6}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v8, 0x4

    new-array v9, v8, [B

    .line 2255
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v8, :cond_4

    .line 2256
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2257
    invoke-virtual {v6}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 2259
    :cond_4
    aget-byte v8, v9, v3

    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v13, -0x2

    const-string v14, "UTF-8"

    if-nez v8, :cond_5

    aget-byte v8, v9, v5

    if-nez v8, :cond_5

    aget-byte v8, v9, v12

    if-ne v8, v13, :cond_5

    aget-byte v8, v9, v10

    if-eq v8, v11, :cond_6

    :cond_5
    aget-byte v8, v9, v3

    if-ne v8, v11, :cond_7

    aget-byte v8, v9, v5

    if-ne v8, v13, :cond_7

    aget-byte v8, v9, v12

    if-nez v8, :cond_7

    aget-byte v8, v9, v10

    if-nez v8, :cond_7

    .line 2261
    :cond_6
    new-instance v8, Lorg/jsoup/a/b$a;

    const-string v9, "UTF-32"

    invoke-direct {v8, v9, v3}, Lorg/jsoup/a/b$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2262
    :cond_7
    aget-byte v8, v9, v3

    if-ne v8, v13, :cond_8

    aget-byte v8, v9, v5

    if-eq v8, v11, :cond_9

    :cond_8
    aget-byte v8, v9, v3

    if-ne v8, v11, :cond_a

    aget-byte v8, v9, v5

    if-ne v8, v13, :cond_a

    .line 2264
    :cond_9
    new-instance v8, Lorg/jsoup/a/b$a;

    const-string v9, "UTF-16"

    invoke-direct {v8, v9, v3}, Lorg/jsoup/a/b$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2265
    :cond_a
    aget-byte v8, v9, v3

    const/16 v10, -0x11

    if-ne v8, v10, :cond_b

    aget-byte v8, v9, v5

    const/16 v10, -0x45

    if-ne v8, v10, :cond_b

    aget-byte v8, v9, v12

    const/16 v9, -0x41

    if-ne v8, v9, :cond_b

    .line 2266
    new-instance v8, Lorg/jsoup/a/b$a;

    invoke-direct {v8, v14, v5}, Lorg/jsoup/a/b$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_c

    .line 2272
    iget-object v9, v8, Lorg/jsoup/a/b$a;->a:Ljava/lang/String;

    goto :goto_4

    :cond_c
    move-object/from16 v9, p1

    :goto_4
    const-string v10, "charset"

    const-string v11, "encoding"

    const-string v12, "xml"

    if-nez v9, :cond_17

    .line 118
    :try_start_0
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 120
    new-instance v13, Ljava/io/CharArrayReader;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    invoke-direct {v13, v6}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-virtual {v2, v13, v1}, Lorg/jsoup/c/g;->a(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v6

    goto :goto_5

    .line 122
    :cond_d
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Lorg/jsoup/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v6
    :try_end_0
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const-string v13, "meta[http-equiv=content-type], meta[charset]"

    .line 3396
    invoke-static {v13, v6}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object v13

    .line 130
    invoke-virtual {v13}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v16, 0x0

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v15, ""

    if-eqz v17, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lorg/jsoup/nodes/h;

    const-string v3, "http-equiv"

    .line 131
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "content"

    .line 132
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 4217
    sget-object v5, Lorg/jsoup/a/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 4218
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    .line 4219
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "charset="

    .line 4220
    invoke-virtual {v3, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 4221
    invoke-static {v3}, Lorg/jsoup/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_7

    :cond_e
    const/16 v16, 0x0

    :cond_f
    :goto_7
    if-nez v16, :cond_10

    .line 133
    invoke-virtual {v4, v10}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 134
    invoke-virtual {v4, v10}, Lorg/jsoup/nodes/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :cond_10
    if-eqz v16, :cond_11

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    const v4, 0x8000

    const/4 v5, 0x1

    goto :goto_6

    :cond_12
    :goto_8
    if-nez v16, :cond_15

    .line 140
    invoke-virtual {v6}, Lorg/jsoup/nodes/f;->f()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v6, v3}, Lorg/jsoup/nodes/f;->a(I)Lorg/jsoup/nodes/m;

    move-result-object v4

    .line 143
    instance-of v3, v4, Lorg/jsoup/nodes/q;

    if-eqz v3, :cond_13

    .line 144
    check-cast v4, Lorg/jsoup/nodes/q;

    goto :goto_9

    .line 145
    :cond_13
    instance-of v3, v4, Lorg/jsoup/nodes/d;

    if-eqz v3, :cond_14

    .line 146
    check-cast v4, Lorg/jsoup/nodes/d;

    .line 147
    invoke-virtual {v4}, Lorg/jsoup/nodes/d;->b()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 148
    invoke-virtual {v4}, Lorg/jsoup/nodes/d;->d()Lorg/jsoup/nodes/q;

    move-result-object v4

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_15

    .line 5036
    invoke-virtual {v4}, Lorg/jsoup/nodes/q;->k()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 152
    invoke-virtual {v4, v11}, Lorg/jsoup/nodes/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 155
    :cond_15
    invoke-static/range {v16 .. v16}, Lorg/jsoup/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 156
    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\"\']"

    invoke-virtual {v3, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_16
    if-nez v7, :cond_18

    goto :goto_a

    :catch_0
    move-exception v0

    .line 3015
    invoke-virtual {v0}, Lorg/jsoup/UncheckedIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 124
    throw v0

    :cond_17
    const-string v3, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 164
    invoke-static {v9, v3}, Lorg/jsoup/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const/4 v6, 0x0

    :cond_18
    if-nez v6, :cond_22

    if-nez v9, :cond_19

    move-object v9, v14

    .line 169
    :cond_19
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const v5, 0x8000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    if-eqz v8, :cond_1b

    .line 5272
    iget-boolean v4, v8, Lorg/jsoup/a/b$a;->b:Z

    if-eqz v4, :cond_1b

    const-wide/16 v4, 0x1

    .line 171
    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_1a

    const/4 v4, 0x1

    goto :goto_b

    :cond_1a
    const/4 v4, 0x0

    .line 172
    :goto_b
    invoke-static {v4}, Lorg/jsoup/a/c;->a(Z)V

    .line 175
    :cond_1b
    :try_start_1
    invoke-virtual {v2, v3, v1}, Lorg/jsoup/c/g;->a(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v6
    :try_end_1
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 6568
    iget-object v2, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 7445
    iput-object v1, v2, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 182
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v1

    if-nez v1, :cond_22

    .line 184
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x1

    .line 8288
    iput-boolean v2, v6, Lorg/jsoup/nodes/f;->d:Z

    .line 8258
    iget-object v2, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 8445
    iput-object v1, v2, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 9330
    iget-boolean v1, v6, Lorg/jsoup/nodes/f;->d:Z

    if-eqz v1, :cond_22

    .line 9568
    iget-object v1, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 10477
    iget v1, v1, Lorg/jsoup/nodes/f$a;->h:I

    .line 9333
    sget v2, Lorg/jsoup/nodes/f$a$a;->a:I

    if-ne v1, v2, :cond_1f

    const-string v1, "meta[charset]"

    .line 11396
    invoke-static {v1, v6}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object v1

    .line 11602
    invoke-virtual {v1}, Lorg/jsoup/select/c;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v15, 0x0

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/select/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lorg/jsoup/nodes/h;

    :goto_c
    if-eqz v15, :cond_1d

    .line 12271
    iget-object v1, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 12436
    iget-object v1, v1, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 9337
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v10, v1}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    goto :goto_d

    :cond_1d
    const-string v1, "head"

    .line 13083
    invoke-virtual {v6, v1, v6}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 13576
    new-instance v2, Lorg/jsoup/nodes/h;

    invoke-static {v1}, Lorg/jsoup/nodes/n;->b(Lorg/jsoup/nodes/m;)Lorg/jsoup/c/g;

    move-result-object v3

    .line 14093
    iget-object v3, v3, Lorg/jsoup/c/g;->b:Lorg/jsoup/c/f;

    const-string v4, "meta"

    .line 13576
    invoke-static {v4, v3}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;)V

    .line 13577
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    .line 14271
    iget-object v1, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 14436
    iget-object v1, v1, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 9342
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    :cond_1e
    :goto_d
    const-string v1, "meta[name=charset]"

    .line 15396
    invoke-static {v1, v6}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object v1

    .line 9347
    invoke-virtual {v1}, Lorg/jsoup/select/c;->a()Lorg/jsoup/select/c;

    goto/16 :goto_e

    .line 9348
    :cond_1f
    sget v2, Lorg/jsoup/nodes/f$a$a;->b:I

    if-ne v1, v2, :cond_22

    .line 9349
    invoke-virtual {v6}, Lorg/jsoup/nodes/f;->w()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/m;

    .line 9351
    instance-of v2, v1, Lorg/jsoup/nodes/q;

    const-string v3, "1.0"

    const-string v4, "version"

    if-eqz v2, :cond_21

    .line 9352
    check-cast v1, Lorg/jsoup/nodes/q;

    .line 16036
    invoke-virtual {v1}, Lorg/jsoup/nodes/q;->k()Ljava/lang/String;

    move-result-object v2

    .line 9354
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 16271
    iget-object v2, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 16436
    iget-object v2, v2, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 9355
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/jsoup/nodes/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    .line 9357
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 9360
    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    goto :goto_e

    .line 9363
    :cond_20
    new-instance v1, Lorg/jsoup/nodes/q;

    const/4 v2, 0x0

    invoke-direct {v1, v12, v2}, Lorg/jsoup/nodes/q;-><init>(Ljava/lang/String;Z)V

    .line 9364
    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    .line 17271
    iget-object v2, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 17436
    iget-object v2, v2, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 9365
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/jsoup/nodes/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    .line 9367
    invoke-virtual {v6, v1}, Lorg/jsoup/nodes/f;->b(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    goto :goto_e

    :cond_21
    const/4 v2, 0x0

    .line 9370
    new-instance v1, Lorg/jsoup/nodes/q;

    invoke-direct {v1, v12, v2}, Lorg/jsoup/nodes/q;-><init>(Ljava/lang/String;Z)V

    .line 9371
    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    .line 18271
    iget-object v2, v6, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 18436
    iget-object v2, v2, Lorg/jsoup/nodes/f$a;->b:Ljava/nio/charset/Charset;

    .line 9372
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/jsoup/nodes/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    .line 9374
    invoke-virtual {v6, v1}, Lorg/jsoup/nodes/f;->b(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 6015
    invoke-virtual {v1}, Lorg/jsoup/UncheckedIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 178
    throw v0

    .line 187
    :cond_22
    :goto_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6
.end method
