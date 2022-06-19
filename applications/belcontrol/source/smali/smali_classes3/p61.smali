.class public Lp61;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu61;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp61;->a:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lp61;->b:J

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lp61;->c(Ljava/lang/String;ZILjava/lang/String;)Z

    return-void
.end method

.method public c(Ljava/lang/String;ZILjava/lang/String;)Z
    .locals 9

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "PROTO_FROM_SERVER"

    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj91;->B(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lp61;->e(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lp61;->d(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    sget-object v2, Lr71$a;->y1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->e()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, -0x1

    if-nez p2, :cond_4

    if-eq p3, v6, :cond_4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "V2"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    add-int/2addr v3, v1

    if-le p3, v3, :cond_3

    add-int/lit8 p3, p3, 0x1

    sget-object p2, Lr71$a;->w1:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->g()J

    move-result-wide v7

    sub-long/2addr v4, v7

    goto :goto_1

    :cond_3
    move p3, v3

    :cond_4
    :goto_1
    if-eq p3, v6, :cond_5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Lr71$a;->m(Ljava/lang/Integer;)V

    :cond_5
    sget-object p2, Lr71$a;->X0:Lr71$a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr71$a;->n(Ljava/lang/Long;)V

    :cond_6
    invoke-static {p0, v0}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lj91;->D(Ljava/lang/String;Z)V

    return p1

    :cond_7
    :goto_2
    const-string p1, "Community list is empty!"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 13

    new-instance v0, Lo81;

    invoke-direct {v0}, Lo81;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lda1;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, ","

    const-string v6, ";"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    if-eq v9, v8, :cond_0

    goto :goto_0

    :cond_0
    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-ge v6, v8, :cond_1

    goto :goto_0

    :cond_1
    aget-object v6, v5, v2

    const-string v8, "A"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    aget-object v3, v5, v2

    const-string v6, "D"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    aget-object v3, v5, v7

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lo81;->E()V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo81;->F(J)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_1
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, -0x1

    :try_start_4
    aget-object v10, v3, v7

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    aget-object v11, v3, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    nop

    goto :goto_3

    :catchall_3
    move-object v10, v4

    :cond_7
    :goto_3
    if-nez v10, :cond_8

    goto :goto_2

    :cond_8
    :try_start_6
    invoke-virtual {v0}, Lo81;->E()V

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lo81;->G(J)Lo81;

    invoke-virtual {v0}, Lo81;->K()Ljava/lang/Long;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v3, :cond_6

    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lha1;->d(J)[B

    move-result-object v3

    invoke-static {v3}, Lha1;->a([B)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v3

    invoke-virtual {v0, v10, v11, v3}, Lo81;->M(JLi91;)V

    iput v9, v0, Lo81;->d:I

    invoke-virtual {v0}, Lo81;->z()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :cond_a
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    return v7

    :catch_0
    move-exception p1

    const-string v0, "Error updating community."

    invoke-static {p0, v0, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public e(Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Lp81;

    invoke-direct {v0}, Lp81;-><init>()V

    invoke-virtual {v0}, Lp81;->R()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lda1;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :catchall_0
    :goto_0
    const/4 v2, 0x0

    :catchall_1
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v3, v1

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, -0x1

    :try_start_1
    aget-object v7, v3, v1

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    array-length v7, v3

    if-le v7, v4, :cond_3

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    :cond_3
    :goto_2
    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lo81;->E()V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo81;->G(J)Lo81;

    invoke-virtual {v0}, Lo81;->K()Ljava/lang/Long;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_6

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lha1;->d(J)[B

    move-result-object v3

    invoke-static {v3}, Lha1;->a([B)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v3

    invoke-virtual {v0, v4, v5, v3}, Lo81;->M(JLi91;)V

    iput v6, v0, Lo81;->d:I

    invoke-virtual {v0}, Lo81;->z()Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    int-to-long v3, v2

    const-wide/16 v5, 0x64

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-wide v2, p0, Lp61;->b:J

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lp61;->a:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x7530

    cmp-long v8, v2, v6

    if-lez v8, :cond_7

    iget-wide v2, p0, Lp61;->b:J

    const-wide/16 v6, 0x32

    add-long/2addr v2, v6

    iput-wide v2, p0, Lp61;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lp61;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lp61;->a:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :try_start_5
    iget-wide v2, p0, Lp61;->b:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-virtual {v0}, Lp81;->Q()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    return v4

    :catch_0
    move-exception p1

    const-string v0, "Error updating community."

    invoke-static {p0, v0, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
