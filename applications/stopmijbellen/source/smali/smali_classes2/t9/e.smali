.class public final Lt9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\"\\"

    .line 1
    invoke-static {v0}, Laa/i;->f(Ljava/lang/String;)Laa/i;

    const-string v0, "\t ,="

    .line 2
    invoke-static {v0}, Laa/i;->f(Ljava/lang/String;)Laa/i;

    return-void
.end method

.method public static a(Lp9/b0;)J
    .locals 2

    .line 1
    iget-object p0, p0, Lp9/b0;->f:Lp9/r;

    const-string v0, "Content-Length"

    .line 2
    invoke-virtual {p0, v0}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public static b(Lp9/b0;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lp9/b0;->a:Lp9/y;

    .line 2
    iget-object v0, v0, Lp9/y;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Lp9/b0;->c:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-static {p0}, Lt9/e;->a(Lp9/b0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 6
    iget-object p0, p0, Lp9/b0;->f:Lp9/r;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const-string v0, "chunked"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v3
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p1, p0

    :catch_0
    return p1
.end method

.method public static d(Lp9/l;Lp9/s;Lp9/r;)V
    .locals 34

    .line 1
    sget-object v0, Lp9/l;->a:Lp9/l;

    move-object/from16 v1, p0

    if-ne v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lp9/k;->j:Ljava/util/regex/Pattern;

    const-string v0, "Set-Cookie"

    move-object/from16 v2, p2

    .line 3
    invoke-virtual {v2, v0}, Lp9/r;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_36

    .line 5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x3b

    .line 8
    invoke-static {v8, v5, v11, v12}, Lq9/c;->h(Ljava/lang/String;IIC)I

    move-result v0

    const/16 v13, 0x3d

    .line 9
    invoke-static {v8, v5, v0, v13}, Lq9/c;->h(Ljava/lang/String;IIC)I

    move-result v14

    if-ne v14, v0, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v8, p1

    goto/16 :goto_20

    .line 10
    :cond_2
    invoke-static {v8, v5, v14}, Lq9/c;->x(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    .line 11
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static/range {v16 .. v16}, Lq9/c;->p(Ljava/lang/String;)I

    move-result v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 12
    invoke-static {v8, v14, v0}, Lq9/c;->x(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    .line 13
    invoke-static/range {v17 .. v17}, Lq9/c;->p(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v18, -0x1

    const/4 v4, 0x1

    move-wide/from16 v20, v18

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-wide v26, 0xe677d21fdbffL

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    const-wide v30, 0x7fffffffffffffffL

    const-wide/high16 v32, -0x8000000000000000L

    if-ge v0, v11, :cond_12

    .line 14
    invoke-static {v8, v0, v11, v12}, Lq9/c;->h(Ljava/lang/String;IIC)I

    move-result v14

    .line 15
    invoke-static {v8, v0, v14, v13}, Lq9/c;->h(Ljava/lang/String;IIC)I

    move-result v15

    .line 16
    invoke-static {v8, v0, v15}, Lq9/c;->x(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-ge v15, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 17
    invoke-static {v8, v15, v14}, Lq9/c;->x(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_5
    const-string v15, ""

    :goto_3
    const-string v12, "expires"

    .line 18
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 19
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v15, v5, v0}, Lp9/k;->b(Ljava/lang/String;II)J

    move-result-wide v26
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :cond_6
    const-string v12, "max-age"

    .line 20
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 21
    :try_start_1
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v30, 0x0

    cmp-long v0, v20, v30

    if-gtz v0, :cond_8

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v12, v0

    :try_start_2
    const-string v0, "-?\\d+"

    .line 22
    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-"

    .line 23
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    move-wide/from16 v20, v32

    goto :goto_5

    :cond_7
    move-wide/from16 v20, v30

    :cond_8
    :goto_5
    const/16 v25, 0x1

    goto :goto_6

    .line 24
    :cond_9
    throw v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    const-string v12, "domain"

    .line 25
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    :try_start_3
    const-string v0, "."

    .line 26
    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 27
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 29
    :cond_b
    invoke-static {v15}, Lq9/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object/from16 v28, v0

    const/16 v24, 0x0

    goto :goto_6

    .line 30
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_e
    const-string v12, "path"

    .line 32
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v29, v15

    goto :goto_6

    :cond_f
    const-string v12, "secure"

    .line 33
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v22, 0x1

    goto :goto_6

    :cond_10
    const-string v12, "httponly"

    .line 34
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v23, 0x1

    :catch_1
    :cond_11
    :goto_6
    add-int/lit8 v0, v14, 0x1

    const/16 v12, 0x3b

    goto/16 :goto_2

    :cond_12
    cmp-long v0, v20, v32

    if-nez v0, :cond_13

    move-object/from16 v8, p1

    move-wide/from16 v18, v32

    goto :goto_8

    :cond_13
    cmp-long v0, v20, v18

    if-eqz v0, :cond_17

    const-wide v11, 0x20c49ba5e353f7L

    cmp-long v0, v20, v11

    if-gtz v0, :cond_14

    const-wide/16 v11, 0x3e8

    mul-long v30, v20, v11

    :cond_14
    add-long v30, v9, v30

    cmp-long v0, v30, v9

    const-wide v8, 0xe677d21fdbffL

    if-ltz v0, :cond_16

    cmp-long v0, v30, v8

    if-lez v0, :cond_15

    goto :goto_7

    :cond_15
    move-object/from16 v8, p1

    move-wide/from16 v18, v30

    goto :goto_8

    :cond_16
    :goto_7
    move-wide/from16 v18, v8

    move-object/from16 v8, p1

    goto :goto_8

    :cond_17
    move-object/from16 v8, p1

    move-wide/from16 v18, v26

    .line 35
    :goto_8
    iget-object v0, v8, Lp9/s;->d:Ljava/lang/String;

    const/16 v9, 0x2e

    move-object/from16 v10, v28

    if-nez v10, :cond_18

    move-object v10, v0

    goto :goto_b

    .line 36
    :cond_18
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    goto :goto_9

    .line 37
    :cond_19
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v4

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_1a

    .line 39
    sget-object v11, Lq9/c;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_1a

    :goto_9
    const/4 v11, 0x1

    goto :goto_a

    :cond_1a
    const/4 v11, 0x0

    :goto_a
    if-nez v11, :cond_1b

    goto/16 :goto_20

    .line 40
    :cond_1b
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v0, v11, :cond_30

    .line 41
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 42
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v10}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "\\."

    .line 44
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 45
    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v13, 0x0

    .line 46
    :goto_c
    :try_start_4
    invoke-virtual {v11}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_1e

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v14, v0

    .line 47
    :try_start_5
    sget-object v0, Lx9/f;->a:Lx9/f;

    const/4 v15, 0x5

    const-string v9, "Failed to read public suffix list"

    .line 48
    invoke-virtual {v0, v15, v9, v14}, Lx9/f;->l(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_1e

    .line 49
    :goto_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 50
    :catch_3
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v9, 0x2e

    const/4 v13, 0x1

    goto :goto_c

    :goto_e
    if-eqz v13, :cond_1c

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    throw v0

    .line 52
    :cond_1d
    :try_start_7
    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_f

    .line 53
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    :cond_1e
    :goto_f
    monitor-enter v11

    .line 55
    :try_start_8
    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v0, :cond_2f

    .line 56
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 57
    array-length v0, v12

    new-array v9, v0, [[B

    const/4 v13, 0x0

    .line 58
    :goto_10
    array-length v14, v12

    if-ge v13, v14, :cond_1f

    .line 59
    aget-object v14, v12, v13

    sget-object v15, Lq9/c;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    aput-object v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_1f
    const/4 v13, 0x0

    :goto_11
    if-ge v13, v0, :cond_21

    .line 60
    iget-object v14, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v14, v9, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_20

    goto :goto_12

    :cond_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_21
    const/4 v14, 0x0

    :goto_12
    if-le v0, v4, :cond_23

    .line 61
    invoke-virtual {v9}, [[B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    const/4 v15, 0x0

    .line 62
    :goto_13
    array-length v5, v13

    sub-int/2addr v5, v4

    if-ge v15, v5, :cond_23

    .line 63
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    aput-object v5, v13, v15

    .line 64
    iget-object v5, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v5, v13, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    goto :goto_14

    :cond_22
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    :cond_23
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_25

    const/4 v13, 0x0

    :goto_15
    add-int/lit8 v15, v0, -0x1

    if-ge v13, v15, :cond_25

    .line 65
    iget-object v15, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    invoke-static {v15, v9, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_24

    goto :goto_16

    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    :cond_25
    const/4 v15, 0x0

    :goto_16
    if-eqz v15, :cond_26

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\."

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_26
    if-nez v14, :cond_27

    if-nez v5, :cond_27

    .line 68
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    goto :goto_19

    :cond_27
    if-eqz v14, :cond_28

    const-string v0, "\\."

    .line 69
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 70
    :cond_28
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    :goto_17
    if-eqz v5, :cond_29

    const-string v9, "\\."

    .line 71
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_18

    .line 72
    :cond_29
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    .line 73
    :goto_18
    array-length v9, v0

    array-length v11, v5

    if-le v9, v11, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v0, v5

    .line 74
    :goto_19
    array-length v5, v12

    array-length v9, v0

    const/16 v11, 0x21

    if-ne v5, v9, :cond_2b

    const/4 v5, 0x0

    aget-object v9, v0, v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_2c

    const/4 v0, 0x0

    goto :goto_1c

    :cond_2b
    const/4 v5, 0x0

    .line 75
    :cond_2c
    aget-object v9, v0, v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_2d

    .line 76
    array-length v5, v12

    array-length v0, v0

    goto :goto_1a

    .line 77
    :cond_2d
    array-length v5, v12

    array-length v0, v0

    add-int/2addr v0, v4

    :goto_1a
    sub-int/2addr v5, v0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\."

    .line 79
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 80
    :goto_1b
    array-length v11, v9

    if-ge v5, v11, :cond_2e

    .line 81
    aget-object v11, v9, v5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2e

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 82
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_30

    const/4 v5, 0x0

    goto :goto_20

    .line 84
    :cond_2f
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 85
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :cond_30
    move-object/from16 v4, v29

    if-eqz v4, :cond_32

    const-string v0, "/"

    .line 86
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_1d

    :cond_31
    move-object/from16 v21, v4

    const/4 v5, 0x0

    goto :goto_1f

    .line 87
    :cond_32
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lp9/s;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eqz v4, :cond_33

    const/4 v5, 0x0

    .line 89
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_33
    const/4 v5, 0x0

    const-string v0, "/"

    :goto_1e
    move-object/from16 v21, v0

    .line 90
    :goto_1f
    new-instance v0, Lp9/k;

    move-object v15, v0

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v25}, Lp9/k;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_21

    :goto_20
    const/4 v0, 0x0

    :goto_21
    if-nez v0, :cond_34

    goto :goto_22

    :cond_34
    if-nez v7, :cond_35

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v4

    .line 92
    :cond_35
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_36
    if-eqz v7, :cond_37

    .line 93
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_23

    .line 94
    :cond_37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 95
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    .line 96
    :cond_38
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static f(Lp9/r;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/r;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lp9/r;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-virtual {p0, v3}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0, v3}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    const-string v5, ","

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
