.class public final Lr9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t;


# instance fields
.field public final a:Lr9/g;


# direct methods
.method public constructor <init>(Lr9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr9/b;->a:Lr9/g;

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lp9/b0;)Lp9/b0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lp9/b0;->g:Lp9/d0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lp9/b0$a;

    invoke-direct {v0, p0}, Lp9/b0$a;-><init>(Lp9/b0;)V

    const/4 p0, 0x0

    .line 3
    iput-object p0, v0, Lp9/b0$a;->g:Lp9/d0;

    .line 4
    invoke-virtual {v0}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lp9/t$a;)Lp9/b0;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lr9/b;->a:Lr9/g;

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 2
    move-object/from16 v5, p1

    check-cast v5, Lt9/f;

    .line 3
    iget-object v5, v5, Lt9/f;->f:Lp9/y;

    .line 4
    check-cast v0, Lp9/c$a;

    .line 5
    iget-object v0, v0, Lp9/c$a;->a:Lp9/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v6, v5, Lp9/y;->a:Lp9/s;

    .line 7
    invoke-static {v6}, Lp9/c;->d(Lp9/s;)Ljava/lang/String;

    move-result-object v6

    .line 8
    :try_start_0
    iget-object v0, v0, Lp9/c;->b:Lr9/e;

    invoke-virtual {v0, v6}, Lr9/e;->o(Ljava/lang/String;)Lr9/e$e;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    :try_start_1
    new-instance v6, Lp9/c$d;

    .line 10
    iget-object v7, v0, Lr9/e$e;->c:[Laa/y;

    aget-object v7, v7, v2

    .line 11
    invoke-direct {v6, v7}, Lp9/c$d;-><init>(Laa/y;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    iget-object v7, v6, Lp9/c$d;->g:Lp9/r;

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    iget-object v8, v6, Lp9/c$d;->g:Lp9/r;

    const-string v9, "Content-Length"

    invoke-virtual {v8, v9}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    new-instance v9, Lp9/y$a;

    invoke-direct {v9}, Lp9/y$a;-><init>()V

    iget-object v10, v6, Lp9/c$d;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v9, v10}, Lp9/y$a;->d(Ljava/lang/String;)Lp9/y$a;

    iget-object v10, v6, Lp9/c$d;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v9, v10, v4}, Lp9/y$a;->c(Ljava/lang/String;Lp9/a0;)Lp9/y$a;

    iget-object v10, v6, Lp9/c$d;->b:Lp9/r;

    .line 17
    invoke-virtual {v10}, Lp9/r;->e()Lp9/r$a;

    move-result-object v10

    iput-object v10, v9, Lp9/y$a;->c:Lp9/r$a;

    .line 18
    invoke-virtual {v9}, Lp9/y$a;->a()Lp9/y;

    move-result-object v9

    .line 19
    new-instance v10, Lp9/b0$a;

    invoke-direct {v10}, Lp9/b0$a;-><init>()V

    .line 20
    iput-object v9, v10, Lp9/b0$a;->a:Lp9/y;

    .line 21
    iget-object v9, v6, Lp9/c$d;->d:Lp9/w;

    .line 22
    iput-object v9, v10, Lp9/b0$a;->b:Lp9/w;

    .line 23
    iget v9, v6, Lp9/c$d;->e:I

    .line 24
    iput v9, v10, Lp9/b0$a;->c:I

    .line 25
    iget-object v9, v6, Lp9/c$d;->f:Ljava/lang/String;

    .line 26
    iput-object v9, v10, Lp9/b0$a;->d:Ljava/lang/String;

    .line 27
    iget-object v9, v6, Lp9/c$d;->g:Lp9/r;

    .line 28
    invoke-virtual {v10, v9}, Lp9/b0$a;->e(Lp9/r;)Lp9/b0$a;

    new-instance v9, Lp9/c$c;

    invoke-direct {v9, v0, v7, v8}, Lp9/c$c;-><init>(Lr9/e$e;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object v9, v10, Lp9/b0$a;->g:Lp9/d0;

    .line 30
    iget-object v0, v6, Lp9/c$d;->h:Lp9/q;

    .line 31
    iput-object v0, v10, Lp9/b0$a;->e:Lp9/q;

    .line 32
    iget-wide v7, v6, Lp9/c$d;->i:J

    .line 33
    iput-wide v7, v10, Lp9/b0$a;->k:J

    .line 34
    iget-wide v7, v6, Lp9/c$d;->j:J

    .line 35
    iput-wide v7, v10, Lp9/b0$a;->l:J

    .line 36
    invoke-virtual {v10}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    .line 37
    iget-object v7, v6, Lp9/c$d;->a:Ljava/lang/String;

    .line 38
    iget-object v8, v5, Lp9/y;->a:Lp9/s;

    .line 39
    iget-object v8, v8, Lp9/s;->i:Ljava/lang/String;

    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Lp9/c$d;->c:Ljava/lang/String;

    .line 41
    iget-object v8, v5, Lp9/y;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Lp9/c$d;->b:Lp9/r;

    .line 43
    sget v7, Lt9/e;->a:I

    .line 44
    iget-object v7, v0, Lp9/b0;->f:Lp9/r;

    .line 45
    invoke-static {v7}, Lt9/e;->f(Lp9/r;)Ljava/util/Set;

    move-result-object v7

    .line 46
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 47
    invoke-virtual {v6, v8}, Lp9/r;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 48
    iget-object v10, v5, Lp9/y;->c:Lp9/r;

    invoke-virtual {v10, v8}, Lp9/r;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 49
    invoke-static {v9, v8}, Lq9/c;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    .line 50
    iget-object v0, v0, Lp9/b0;->g:Lp9/d0;

    .line 51
    invoke-static {v0}, Lq9/c;->d(Ljava/io/Closeable;)V

    goto :goto_2

    .line 52
    :catch_0
    invoke-static {v0}, Lq9/c;->d(Ljava/io/Closeable;)V

    :catch_1
    :goto_2
    move-object v0, v4

    :cond_4
    move-object v5, v0

    goto :goto_3

    :cond_5
    move-object v5, v4

    .line 53
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 54
    move-object/from16 v0, p1

    check-cast v0, Lt9/f;

    .line 55
    iget-object v8, v0, Lt9/f;->f:Lp9/y;

    if-eqz v5, :cond_b

    .line 56
    iget-wide v12, v5, Lp9/b0;->k:J

    .line 57
    iget-wide v14, v5, Lp9/b0;->l:J

    .line 58
    iget-object v2, v5, Lp9/b0;->f:Lp9/r;

    .line 59
    invoke-virtual {v2}, Lp9/r;->f()I

    move-result v3

    move-object/from16 v16, v4

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_4
    if-ge v10, v3, :cond_c

    .line 60
    invoke-virtual {v2, v10}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v2, v10}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v2

    const-string v2, "Date"

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    invoke-static {v9}, Lt9/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v21, v9

    goto :goto_5

    :cond_6
    const-string v2, "Expires"

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 65
    invoke-static {v9}, Lt9/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    goto :goto_5

    :cond_7
    const-string v2, "Last-Modified"

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 67
    invoke-static {v9}, Lt9/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v20, v9

    goto :goto_5

    :cond_8
    const-string v2, "ETag"

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v19, v9

    goto :goto_5

    :cond_9
    const-string v2, "Age"

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    .line 70
    invoke-static {v9, v2}, Lt9/e;->c(Ljava/lang/String;I)I

    move-result v11

    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v22

    const/4 v4, 0x0

    goto :goto_4

    :cond_b
    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :cond_c
    if-nez v5, :cond_d

    .line 71
    new-instance v2, Lr9/d;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    :goto_6
    move-object/from16 v22, v0

    goto/16 :goto_14

    :cond_d
    const/4 v3, 0x0

    .line 72
    iget-object v2, v8, Lp9/y;->a:Lp9/s;

    .line 73
    iget-object v2, v2, Lp9/s;->a:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 74
    iget-object v2, v5, Lp9/b0;->e:Lp9/q;

    if-nez v2, :cond_e

    .line 75
    new-instance v2, Lr9/d;

    invoke-direct {v2, v8, v3}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    goto :goto_6

    .line 76
    :cond_e
    invoke-static {v5, v8}, Lr9/d;->a(Lp9/b0;Lp9/y;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 77
    new-instance v2, Lr9/d;

    invoke-direct {v2, v8, v3}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    goto :goto_6

    .line 78
    :cond_f
    invoke-virtual {v8}, Lp9/y;->a()Lp9/d;

    move-result-object v2

    .line 79
    iget-boolean v3, v2, Lp9/d;->a:Z

    if-nez v3, :cond_26

    .line 80
    iget-object v3, v8, Lp9/y;->c:Lp9/r;

    const-string v4, "If-Modified-Since"

    invoke-virtual {v3, v4}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "If-None-Match"

    if-nez v3, :cond_11

    iget-object v3, v8, Lp9/y;->c:Lp9/r;

    invoke-virtual {v3, v9}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_12

    goto/16 :goto_13

    .line 81
    :cond_12
    invoke-virtual {v5}, Lp9/b0;->d()Lp9/d;

    move-result-object v3

    if-eqz v16, :cond_13

    .line 82
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-object/from16 v24, v9

    sub-long v9, v14, v22

    move-object/from16 v22, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const/4 v0, -0x1

    goto :goto_9

    :cond_13
    move-object/from16 v22, v0

    move-object/from16 v24, v9

    const/4 v0, -0x1

    const-wide/16 v9, 0x0

    :goto_9
    if-eq v11, v0, :cond_14

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v23, v3

    move-object v1, v4

    int-to-long v3, v11

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_a

    :cond_14
    move-object/from16 v23, v3

    move-object v1, v4

    :goto_a
    sub-long v3, v14, v12

    sub-long/2addr v6, v14

    add-long/2addr v9, v3

    add-long/2addr v9, v6

    .line 84
    invoke-virtual {v5}, Lp9/b0;->d()Lp9/d;

    move-result-object v0

    .line 85
    iget v0, v0, Lp9/d;->c:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_15

    .line 86
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    goto :goto_b

    :cond_15
    if-eqz v17, :cond_17

    if-eqz v16, :cond_16

    .line 87
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 88
    :cond_16
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v14

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-lez v0, :cond_1a

    :goto_b
    move-wide v6, v3

    const-wide/16 v3, 0x0

    goto :goto_d

    :cond_17
    if-eqz v18, :cond_1a

    .line 89
    iget-object v0, v5, Lp9/b0;->a:Lp9/y;

    .line 90
    iget-object v0, v0, Lp9/y;->a:Lp9/s;

    .line 91
    iget-object v3, v0, Lp9/s;->g:Ljava/util/List;

    if-nez v3, :cond_18

    const/4 v0, 0x0

    goto :goto_c

    .line 92
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object v0, v0, Lp9/s;->g:Ljava/util/List;

    invoke-static {v3, v0}, Lp9/s;->i(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_1a

    if-eqz v16, :cond_19

    .line 95
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 96
    :cond_19
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v12, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v12, v3

    if-lez v0, :cond_1b

    const-wide/16 v6, 0xa

    .line 97
    div-long v6, v12, v6

    goto :goto_d

    :cond_1a
    const-wide/16 v3, 0x0

    :cond_1b
    move-wide v6, v3

    .line 98
    :goto_d
    iget v0, v2, Lp9/d;->c:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_1c

    .line 99
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 100
    :cond_1c
    iget v0, v2, Lp9/d;->i:I

    if-eq v0, v11, :cond_1d

    .line 101
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_e

    :cond_1d
    move-wide v12, v3

    :goto_e
    move-object/from16 v0, v23

    .line 102
    iget-boolean v14, v0, Lp9/d;->g:Z

    if-nez v14, :cond_1e

    .line 103
    iget v2, v2, Lp9/d;->h:I

    if-eq v2, v11, :cond_1e

    .line 104
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v14, v2

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_f

    :cond_1e
    move-wide v2, v3

    .line 105
    :goto_f
    iget-boolean v0, v0, Lp9/d;->a:Z

    if-nez v0, :cond_22

    add-long/2addr v12, v9

    add-long/2addr v2, v6

    cmp-long v0, v12, v2

    if-gez v0, :cond_22

    .line 106
    new-instance v0, Lp9/b0$a;

    invoke-direct {v0, v5}, Lp9/b0$a;-><init>(Lp9/b0;)V

    const-string v1, "Warning"

    cmp-long v2, v12, v6

    if-ltz v2, :cond_1f

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    .line 107
    invoke-virtual {v0, v1, v2}, Lp9/b0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lp9/b0$a;

    :cond_1f
    const-wide/32 v2, 0x5265c00

    cmp-long v4, v9, v2

    if-lez v4, :cond_21

    .line 108
    invoke-virtual {v5}, Lp9/b0;->d()Lp9/d;

    move-result-object v2

    .line 109
    iget v2, v2, Lp9/d;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    if-nez v17, :cond_20

    const/4 v2, 0x1

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_21

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    .line 110
    invoke-virtual {v0, v1, v2}, Lp9/b0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lp9/b0$a;

    .line 111
    :cond_21
    new-instance v2, Lr9/d;

    invoke-virtual {v0}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v0}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    move-object v3, v1

    goto :goto_14

    :cond_22
    if-eqz v19, :cond_23

    move-object/from16 v4, v24

    goto :goto_12

    :cond_23
    if-eqz v18, :cond_24

    move-object/from16 v19, v20

    goto :goto_11

    :cond_24
    if-eqz v16, :cond_25

    move-object/from16 v19, v21

    :goto_11
    move-object v4, v1

    .line 112
    :goto_12
    iget-object v0, v8, Lp9/y;->c:Lp9/r;

    .line 113
    invoke-virtual {v0}, Lp9/r;->e()Lp9/r$a;

    move-result-object v0

    .line 114
    sget-object v1, Lq9/a;->a:Lq9/a;

    check-cast v1, Lp9/v$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, v0, Lp9/r$a;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, v0, Lp9/r$a;->a:Ljava/util/List;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lp9/y$a;

    invoke-direct {v1, v8}, Lp9/y$a;-><init>(Lp9/y;)V

    .line 118
    iget-object v0, v0, Lp9/r$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 119
    new-instance v2, Lp9/r$a;

    invoke-direct {v2}, Lp9/r$a;-><init>()V

    .line 120
    iget-object v3, v2, Lp9/r$a;->a:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 121
    iput-object v2, v1, Lp9/y$a;->c:Lp9/r$a;

    .line 122
    invoke-virtual {v1}, Lp9/y$a;->a()Lp9/y;

    move-result-object v0

    .line 123
    new-instance v2, Lr9/d;

    invoke-direct {v2, v0, v5}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    const/4 v3, 0x0

    goto :goto_14

    .line 124
    :cond_25
    new-instance v2, Lr9/d;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    goto :goto_14

    :cond_26
    :goto_13
    move-object/from16 v22, v0

    const/4 v3, 0x0

    .line 125
    new-instance v2, Lr9/d;

    invoke-direct {v2, v8, v3}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    .line 126
    :goto_14
    iget-object v0, v2, Lr9/d;->a:Lp9/y;

    if-eqz v0, :cond_27

    invoke-virtual {v8}, Lp9/y;->a()Lp9/d;

    move-result-object v0

    .line 127
    iget-boolean v0, v0, Lp9/d;->j:Z

    if-eqz v0, :cond_27

    .line 128
    new-instance v2, Lr9/d;

    invoke-direct {v2, v3, v3}, Lr9/d;-><init>(Lp9/y;Lp9/b0;)V

    .line 129
    :cond_27
    iget-object v0, v2, Lr9/d;->a:Lp9/y;

    .line 130
    iget-object v1, v2, Lr9/d;->b:Lp9/b0;

    move-object/from16 v4, p0

    .line 131
    iget-object v6, v4, Lr9/b;->a:Lr9/g;

    if-eqz v6, :cond_2a

    .line 132
    check-cast v6, Lp9/c$a;

    .line 133
    iget-object v6, v6, Lp9/c$a;->a:Lp9/c;

    .line 134
    monitor-enter v6

    .line 135
    :try_start_2
    iget v7, v6, Lp9/c;->g:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lp9/c;->g:I

    .line 136
    iget-object v7, v2, Lr9/d;->a:Lp9/y;

    if-eqz v7, :cond_28

    .line 137
    iget v2, v6, Lp9/c;->e:I

    add-int/2addr v2, v8

    iput v2, v6, Lp9/c;->e:I

    goto :goto_15

    .line 138
    :cond_28
    iget-object v2, v2, Lr9/d;->b:Lp9/b0;

    if-eqz v2, :cond_29

    .line 139
    iget v2, v6, Lp9/c;->f:I

    const/4 v7, 0x1

    add-int/2addr v2, v7

    iput v2, v6, Lp9/c;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :cond_29
    :goto_15
    monitor-exit v6

    goto :goto_16

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_2a
    :goto_16
    if-eqz v5, :cond_2b

    if-nez v1, :cond_2b

    .line 141
    iget-object v2, v5, Lp9/b0;->g:Lp9/d0;

    .line 142
    invoke-static {v2}, Lq9/c;->d(Ljava/io/Closeable;)V

    :cond_2b
    const-wide/16 v6, -0x1

    if-nez v0, :cond_2c

    if-nez v1, :cond_2c

    .line 143
    new-instance v0, Lp9/b0$a;

    invoke-direct {v0}, Lp9/b0$a;-><init>()V

    move-object/from16 v1, v22

    .line 144
    iget-object v1, v1, Lt9/f;->f:Lp9/y;

    .line 145
    iput-object v1, v0, Lp9/b0$a;->a:Lp9/y;

    .line 146
    sget-object v1, Lp9/w;->c:Lp9/w;

    .line 147
    iput-object v1, v0, Lp9/b0$a;->b:Lp9/w;

    const/16 v1, 0x1f8

    .line 148
    iput v1, v0, Lp9/b0$a;->c:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 149
    iput-object v1, v0, Lp9/b0$a;->d:Ljava/lang/String;

    .line 150
    sget-object v1, Lq9/c;->c:Lp9/d0;

    .line 151
    iput-object v1, v0, Lp9/b0$a;->g:Lp9/d0;

    .line 152
    iput-wide v6, v0, Lp9/b0$a;->k:J

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 154
    iput-wide v1, v0, Lp9/b0$a;->l:J

    .line 155
    invoke-virtual {v0}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    return-object v0

    :cond_2c
    if-nez v0, :cond_2d

    .line 156
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lp9/b0$a;

    invoke-direct {v0, v1}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 158
    invoke-static {v1}, Lr9/b;->d(Lp9/b0;)Lp9/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp9/b0$a;->c(Lp9/b0;)Lp9/b0$a;

    .line 159
    invoke-virtual {v0}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    return-object v0

    .line 160
    :cond_2d
    :try_start_3
    move-object/from16 v2, p1

    check-cast v2, Lt9/f;

    .line 161
    iget-object v8, v2, Lt9/f;->b:Ls9/e;

    iget-object v9, v2, Lt9/f;->c:Lt9/c;

    iget-object v10, v2, Lt9/f;->d:Ls9/c;

    invoke-virtual {v2, v0, v8, v9, v10}, Lt9/f;->b(Lp9/y;Ls9/e;Lt9/c;Ls9/c;)Lp9/b0;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_37

    .line 162
    iget v5, v2, Lp9/b0;->c:I

    const/16 v8, 0x130

    if-ne v5, v8, :cond_36

    .line 163
    new-instance v0, Lp9/b0$a;

    invoke-direct {v0, v1}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 164
    iget-object v5, v1, Lp9/b0;->f:Lp9/r;

    iget-object v6, v2, Lp9/b0;->f:Lp9/r;

    .line 165
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-virtual {v5}, Lp9/r;->f()I

    move-result v8

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v8, :cond_31

    .line 167
    invoke-virtual {v5, v9}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v10

    .line 168
    invoke-virtual {v5, v9}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Warning"

    .line 169
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2e

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2e

    goto :goto_18

    .line 170
    :cond_2e
    invoke-static {v10}, Lr9/b;->b(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2f

    invoke-static {v10}, Lr9/b;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 171
    invoke-virtual {v6, v10}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_30

    .line 172
    :cond_2f
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 174
    :cond_31
    invoke-virtual {v6}, Lp9/r;->f()I

    move-result v5

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v5, :cond_33

    .line 175
    invoke-virtual {v6, v8}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v9

    .line 176
    invoke-static {v9}, Lr9/b;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_32

    invoke-static {v9}, Lr9/b;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 177
    invoke-virtual {v6, v8}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 180
    :cond_33
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 181
    new-instance v6, Lp9/r$a;

    invoke-direct {v6}, Lp9/r$a;-><init>()V

    .line 182
    iget-object v7, v6, Lp9/r$a;->a:Ljava/util/List;

    invoke-static {v7, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 183
    iput-object v6, v0, Lp9/b0$a;->f:Lp9/r$a;

    .line 184
    iget-wide v5, v2, Lp9/b0;->k:J

    .line 185
    iput-wide v5, v0, Lp9/b0$a;->k:J

    .line 186
    iget-wide v5, v2, Lp9/b0;->l:J

    .line 187
    iput-wide v5, v0, Lp9/b0$a;->l:J

    .line 188
    invoke-static {v1}, Lr9/b;->d(Lp9/b0;)Lp9/b0;

    move-result-object v5

    invoke-virtual {v0, v5}, Lp9/b0$a;->c(Lp9/b0;)Lp9/b0$a;

    .line 189
    invoke-static {v2}, Lr9/b;->d(Lp9/b0;)Lp9/b0;

    move-result-object v5

    if-eqz v5, :cond_34

    const-string v6, "networkResponse"

    .line 190
    invoke-virtual {v0, v6, v5}, Lp9/b0$a;->d(Ljava/lang/String;Lp9/b0;)V

    .line 191
    :cond_34
    iput-object v5, v0, Lp9/b0$a;->h:Lp9/b0;

    .line 192
    invoke-virtual {v0}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v0

    .line 193
    iget-object v2, v2, Lp9/b0;->g:Lp9/d0;

    .line 194
    invoke-virtual {v2}, Lp9/d0;->close()V

    .line 195
    iget-object v2, v4, Lr9/b;->a:Lr9/g;

    check-cast v2, Lp9/c$a;

    .line 196
    iget-object v2, v2, Lp9/c$a;->a:Lp9/c;

    .line 197
    monitor-enter v2

    .line 198
    :try_start_4
    iget v5, v2, Lp9/c;->f:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v2, Lp9/c;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 199
    monitor-exit v2

    .line 200
    iget-object v2, v4, Lr9/b;->a:Lr9/g;

    check-cast v2, Lp9/c$a;

    .line 201
    iget-object v2, v2, Lp9/c$a;->a:Lp9/c;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v2, Lp9/c$d;

    invoke-direct {v2, v0}, Lp9/c$d;-><init>(Lp9/b0;)V

    .line 203
    iget-object v1, v1, Lp9/b0;->g:Lp9/d0;

    .line 204
    check-cast v1, Lp9/c$c;

    iget-object v1, v1, Lp9/c$c;->a:Lr9/e$e;

    .line 205
    :try_start_5
    iget-object v5, v1, Lr9/e$e;->d:Lr9/e;

    iget-object v6, v1, Lr9/e$e;->a:Ljava/lang/String;

    iget-wide v7, v1, Lr9/e$e;->b:J

    invoke-virtual {v5, v6, v7, v8}, Lr9/e;->l(Ljava/lang/String;J)Lr9/e$c;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v1, :cond_35

    .line 206
    :try_start_6
    invoke-virtual {v2, v1}, Lp9/c$d;->c(Lr9/e$c;)V

    .line 207
    invoke-virtual {v1}, Lr9/e$c;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1b

    :catch_2
    nop

    goto :goto_1a

    :catch_3
    move-object v1, v3

    :goto_1a
    if-eqz v1, :cond_35

    .line 208
    :try_start_7
    invoke-virtual {v1}, Lr9/e$c;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_35
    :goto_1b
    return-object v0

    :catchall_1
    move-exception v0

    .line 209
    monitor-exit v2

    throw v0

    .line 210
    :cond_36
    iget-object v5, v1, Lp9/b0;->g:Lp9/d0;

    .line 211
    invoke-static {v5}, Lq9/c;->d(Ljava/io/Closeable;)V

    .line 212
    :cond_37
    new-instance v5, Lp9/b0$a;

    invoke-direct {v5, v2}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 213
    invoke-static {v1}, Lr9/b;->d(Lp9/b0;)Lp9/b0;

    move-result-object v1

    invoke-virtual {v5, v1}, Lp9/b0$a;->c(Lp9/b0;)Lp9/b0$a;

    .line 214
    invoke-static {v2}, Lr9/b;->d(Lp9/b0;)Lp9/b0;

    move-result-object v1

    if-eqz v1, :cond_38

    const-string v2, "networkResponse"

    .line 215
    invoke-virtual {v5, v2, v1}, Lp9/b0$a;->d(Ljava/lang/String;Lp9/b0;)V

    .line 216
    :cond_38
    iput-object v1, v5, Lp9/b0$a;->h:Lp9/b0;

    .line 217
    invoke-virtual {v5}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v1

    .line 218
    iget-object v2, v4, Lr9/b;->a:Lr9/g;

    if-eqz v2, :cond_42

    .line 219
    invoke-static {v1}, Lt9/e;->b(Lp9/b0;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {v1, v0}, Lr9/d;->a(Lp9/b0;Lp9/y;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 220
    iget-object v0, v4, Lr9/b;->a:Lr9/g;

    check-cast v0, Lp9/c$a;

    .line 221
    iget-object v0, v0, Lp9/c$a;->a:Lp9/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v2, v1, Lp9/b0;->a:Lp9/y;

    .line 223
    iget-object v2, v2, Lp9/y;->b:Ljava/lang/String;

    .line 224
    invoke-static {v2}, Lb0/a;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 225
    :try_start_8
    iget-object v2, v1, Lp9/b0;->a:Lp9/y;

    .line 226
    invoke-virtual {v0, v2}, Lp9/c;->l(Lp9/y;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1d

    :cond_39
    const-string v5, "GET"

    .line 227
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_1d

    .line 228
    :cond_3a
    sget v2, Lt9/e;->a:I

    .line 229
    iget-object v2, v1, Lp9/b0;->f:Lp9/r;

    .line 230
    invoke-static {v2}, Lt9/e;->f(Lp9/r;)Ljava/util/Set;

    move-result-object v2

    const-string v5, "*"

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_1d

    .line 231
    :cond_3b
    new-instance v2, Lp9/c$d;

    invoke-direct {v2, v1}, Lp9/c$d;-><init>(Lp9/b0;)V

    .line 232
    :try_start_9
    iget-object v5, v0, Lp9/c;->b:Lr9/e;

    .line 233
    iget-object v8, v1, Lp9/b0;->a:Lp9/y;

    .line 234
    iget-object v8, v8, Lp9/y;->a:Lp9/s;

    .line 235
    invoke-static {v8}, Lp9/c;->d(Lp9/s;)Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-virtual {v5, v8, v6, v7}, Lr9/e;->l(Ljava/lang/String;J)Lr9/e$c;

    move-result-object v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    if-nez v5, :cond_3c

    goto :goto_1d

    .line 237
    :cond_3c
    :try_start_a
    invoke-virtual {v2, v5}, Lp9/c$d;->c(Lr9/e$c;)V

    .line 238
    new-instance v2, Lp9/c$b;

    invoke-direct {v2, v0, v5}, Lp9/c$b;-><init>(Lp9/c;Lr9/e$c;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1e

    :catch_5
    nop

    goto :goto_1c

    :catch_6
    move-object v5, v3

    :goto_1c
    if-eqz v5, :cond_3d

    .line 239
    :try_start_b
    invoke-virtual {v5}, Lr9/e$c;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    :cond_3d
    :goto_1d
    move-object v2, v3

    :goto_1e
    if-nez v2, :cond_3e

    goto :goto_20

    .line 240
    :cond_3e
    iget-object v0, v2, Lp9/c$b;->c:Laa/x;

    if-nez v0, :cond_3f

    goto :goto_20

    .line 241
    :cond_3f
    iget-object v5, v1, Lp9/b0;->g:Lp9/d0;

    .line 242
    invoke-virtual {v5}, Lp9/d0;->l()Laa/h;

    move-result-object v5

    .line 243
    sget-object v6, Laa/o;->a:Ljava/util/logging/Logger;

    .line 244
    new-instance v6, Laa/r;

    invoke-direct {v6, v0}, Laa/r;-><init>(Laa/x;)V

    .line 245
    new-instance v0, Lr9/a;

    invoke-direct {v0, v4, v5, v2, v6}, Lr9/a;-><init>(Lr9/b;Laa/h;Lr9/c;Laa/g;)V

    .line 246
    iget-object v2, v1, Lp9/b0;->f:Lp9/r;

    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    goto :goto_1f

    :cond_40
    move-object v2, v3

    .line 247
    :goto_1f
    iget-object v3, v1, Lp9/b0;->g:Lp9/d0;

    .line 248
    invoke-virtual {v3}, Lp9/d0;->d()J

    move-result-wide v5

    .line 249
    new-instance v3, Lp9/b0$a;

    invoke-direct {v3, v1}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 250
    new-instance v1, Lt9/g;

    .line 251
    new-instance v7, Laa/t;

    invoke-direct {v7, v0}, Laa/t;-><init>(Laa/y;)V

    .line 252
    invoke-direct {v1, v2, v5, v6, v7}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    .line 253
    iput-object v1, v3, Lp9/b0$a;->g:Lp9/d0;

    .line 254
    invoke-virtual {v3}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v1

    :goto_20
    return-object v1

    .line 255
    :cond_41
    iget-object v2, v0, Lp9/y;->b:Ljava/lang/String;

    .line 256
    invoke-static {v2}, Lb0/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 257
    :try_start_c
    iget-object v2, v4, Lr9/b;->a:Lr9/g;

    check-cast v2, Lp9/c$a;

    .line 258
    iget-object v2, v2, Lp9/c$a;->a:Lp9/c;

    invoke-virtual {v2, v0}, Lp9/c;->l(Lp9/y;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    :cond_42
    return-object v1

    :catchall_2
    move-exception v0

    if-eqz v5, :cond_43

    .line 259
    iget-object v1, v5, Lp9/b0;->g:Lp9/d0;

    .line 260
    invoke-static {v1}, Lq9/c;->d(Ljava/io/Closeable;)V

    :cond_43
    throw v0
.end method
