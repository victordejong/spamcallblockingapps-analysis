.class public Lcom/googlecode/mp4parser/a/d/a;
.super Lcom/googlecode/mp4parser/a/a;
.source "SourceFile"


# static fields
.field private static h:Lcom/googlecode/mp4parser/c/f;


# instance fields
.field d:[Lcom/googlecode/mp4parser/a/g;

.field e:Lcom/b/a/a/v;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;"
        }
    .end annotation
.end field

.field g:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/googlecode/mp4parser/a/d/a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/Class;)Lcom/googlecode/mp4parser/c/f;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/mp4parser/a/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/googlecode/mp4parser/a/d/a;->a([Lcom/googlecode/mp4parser/a/g;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/a/a;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_3

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->f:Ljava/util/List;

    .line 65
    array-length v3, p1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    .line 71
    array-length v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-lt v0, v2, :cond_1

    .line 74
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->g:[J

    .line 77
    array-length v4, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v0

    .line 78
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v3

    .line 79
    iget-object v5, p0, Lcom/googlecode/mp4parser/a/d/a;->g:[J

    array-length v6, v3

    invoke-static {v3, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 71
    :cond_1
    aget-object v4, p1, v0

    .line 72
    invoke-interface {v4}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_2
    aget-object v2, p1, v0

    .line 67
    iget-object v4, p0, Lcom/googlecode/mp4parser/a/d/a;->f:Ljava/util/List;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_3
    aget-object v3, p1, v2

    .line 55
    iget-object v4, p0, Lcom/googlecode/mp4parser/a/d/a;->e:Lcom/b/a/a/v;

    if-nez v4, :cond_4

    .line 56
    new-instance v4, Lcom/b/a/a/v;

    invoke-direct {v4}, Lcom/b/a/a/v;-><init>()V

    iput-object v4, p0, Lcom/googlecode/mp4parser/a/d/a;->e:Lcom/b/a/a/v;

    .line 57
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->l()Lcom/b/a/a/v;

    move-result-object v3

    const-class v5, Lcom/b/a/a/c/c;

    invoke-virtual {v3, v5}, Lcom/b/a/a/v;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/b;

    invoke-virtual {v4, v3}, Lcom/b/a/a/v;->a(Lcom/b/a/a/b;)V

    goto :goto_4

    .line 59
    :cond_4
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->l()Lcom/b/a/a/v;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/googlecode/mp4parser/a/d/a;->a(Lcom/b/a/a/v;Lcom/b/a/a/v;)Lcom/b/a/a/v;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/mp4parser/a/d/a;->e:Lcom/b/a/a/v;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/b/a/a/c/b;Lcom/b/a/a/c/b;)Lcom/b/a/a/c/b;
    .locals 7

    .line 214
    new-instance v0, Lcom/b/a/a/c/b;

    invoke-virtual {p1}, Lcom/b/a/a/c/b;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/a/c/b;-><init>(Ljava/lang/String;)V

    .line 20118
    iget-wide v1, p0, Lcom/b/a/a/c/b;->j:J

    .line 21118
    iget-wide v3, p1, Lcom/b/a/a/c/b;->j:J

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_9

    .line 22118
    iget-wide v1, p0, Lcom/b/a/a/c/b;->j:J

    .line 22171
    iput-wide v1, v0, Lcom/b/a/a/c/b;->j:J

    .line 23114
    iget-wide v1, p0, Lcom/b/a/a/c/b;->i:J

    .line 24114
    iget-wide v3, p1, Lcom/b/a/a/c/b;->i:J

    cmp-long v6, v1, v3

    if-nez v6, :cond_8

    .line 25114
    iget-wide v1, p0, Lcom/b/a/a/c/b;->i:J

    .line 25167
    iput-wide v1, v0, Lcom/b/a/a/c/b;->i:J

    .line 26122
    iget-wide v1, p0, Lcom/b/a/a/c/b;->k:J

    .line 27122
    iget-wide v3, p1, Lcom/b/a/a/c/b;->k:J

    cmp-long v6, v1, v3

    if-nez v6, :cond_7

    .line 28122
    iget-wide v1, p0, Lcom/b/a/a/c/b;->k:J

    .line 28175
    iput-wide v1, v0, Lcom/b/a/a/c/b;->k:J

    .line 29086
    iget v1, p0, Lcom/b/a/a/c/b;->b:I

    .line 30086
    iget v2, p1, Lcom/b/a/a/c/b;->b:I

    if-ne v1, v2, :cond_6

    .line 31086
    iget v1, p0, Lcom/b/a/a/c/b;->b:I

    .line 31139
    iput v1, v0, Lcom/b/a/a/c/b;->b:I

    .line 32106
    iget v1, p0, Lcom/b/a/a/c/b;->g:I

    .line 33106
    iget v2, p1, Lcom/b/a/a/c/b;->g:I

    if-ne v1, v2, :cond_5

    .line 34106
    iget v1, p0, Lcom/b/a/a/c/b;->g:I

    .line 34159
    iput v1, v0, Lcom/b/a/a/c/b;->g:I

    .line 35102
    iget v1, p0, Lcom/b/a/a/c/b;->f:I

    .line 36102
    iget v2, p1, Lcom/b/a/a/c/b;->f:I

    if-ne v1, v2, :cond_4

    .line 37102
    iget v1, p0, Lcom/b/a/a/c/b;->f:I

    .line 37155
    iput v1, v0, Lcom/b/a/a/c/b;->f:I

    .line 38094
    iget-wide v1, p0, Lcom/b/a/a/c/b;->d:J

    .line 39094
    iget-wide v3, p1, Lcom/b/a/a/c/b;->d:J

    cmp-long v6, v1, v3

    if-nez v6, :cond_4

    .line 40094
    iget-wide v1, p0, Lcom/b/a/a/c/b;->d:J

    .line 40147
    iput-wide v1, v0, Lcom/b/a/a/c/b;->d:J

    .line 41090
    iget v1, p0, Lcom/b/a/a/c/b;->c:I

    .line 42090
    iget v2, p1, Lcom/b/a/a/c/b;->c:I

    if-ne v1, v2, :cond_4

    .line 43090
    iget v1, p0, Lcom/b/a/a/c/b;->c:I

    .line 43143
    iput v1, v0, Lcom/b/a/a/c/b;->c:I

    .line 44110
    iget-wide v1, p0, Lcom/b/a/a/c/b;->h:J

    .line 45110
    iget-wide v3, p1, Lcom/b/a/a/c/b;->h:J

    cmp-long v6, v1, v3

    if-nez v6, :cond_4

    .line 46110
    iget-wide v1, p0, Lcom/b/a/a/c/b;->h:J

    .line 46163
    iput-wide v1, v0, Lcom/b/a/a/c/b;->h:J

    .line 47098
    iget v1, p0, Lcom/b/a/a/c/b;->e:I

    .line 48098
    iget v2, p1, Lcom/b/a/a/c/b;->e:I

    if-ne v1, v2, :cond_4

    .line 49098
    iget v1, p0, Lcom/b/a/a/c/b;->e:I

    .line 49151
    iput v1, v0, Lcom/b/a/a/c/b;->e:I

    .line 50127
    iget-object v1, p0, Lcom/b/a/a/c/b;->l:[B

    .line 50128
    iget-object v2, p1, Lcom/b/a/a/c/b;->l:[B

    .line 268
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50129
    iget-object v1, p0, Lcom/b/a/a/c/b;->l:[B

    .line 50130
    iput-object v1, v0, Lcom/b/a/a/c/b;->l:[B

    .line 273
    invoke-virtual {p0}, Lcom/b/a/a/c/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/b/a/a/c/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/b/a/a/c/b;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 275
    invoke-virtual {p1}, Lcom/b/a/a/c/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 276
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 277
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 278
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/b;

    .line 279
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    :try_start_0
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/b/a/a/b;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 283
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/b/a/a/b;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {v0, v1}, Lcom/b/a/a/c/b;->a(Lcom/b/a/a/b;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-interface {v1}, Lcom/b/a/a/b;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "esds"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/b/a/a/b;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    move-object v3, v1

    check-cast v3, Lcom/googlecode/mp4parser/b/b/b;

    .line 293
    check-cast v2, Lcom/googlecode/mp4parser/b/b/b;

    .line 294
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/b/b/b;->b()Lcom/googlecode/mp4parser/b/b/a/h;

    move-result-object v4

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/b;->b()Lcom/googlecode/mp4parser/b/b/a/h;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/googlecode/mp4parser/a/d/a;->a(Lcom/googlecode/mp4parser/b/b/a/b;Lcom/googlecode/mp4parser/b/b/a/b;)Lcom/googlecode/mp4parser/b/b/a/h;

    move-result-object v2

    .line 295
    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Lcom/googlecode/mp4parser/b/b/a/b;)V

    .line 296
    invoke-virtual {v0, v1}, Lcom/b/a/a/c/b;->a(Lcom/b/a/a/b;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    sget-object p1, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/googlecode/mp4parser/c/f;->b(Ljava/lang/String;)V

    return-object v5

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object v5

    .line 240
    :cond_5
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "ChannelCount differ"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    :cond_6
    return-object v5

    .line 229
    :cond_7
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "BytesPerSample differ"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    :cond_8
    return-object v5

    .line 218
    :cond_9
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "BytesPerFrame differ"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5
.end method

.method private static a(Lcom/b/a/a/c/d;Lcom/b/a/a/c/d;)Lcom/b/a/a/c/d;
    .locals 7

    .line 135
    new-instance v0, Lcom/b/a/a/c/d;

    invoke-direct {v0}, Lcom/b/a/a/c/d;-><init>()V

    .line 2111
    iget-wide v1, p0, Lcom/b/a/a/c/d;->d:D

    .line 3111
    iget-wide v3, p1, Lcom/b/a/a/c/d;->d:D

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-nez v6, :cond_a

    .line 4111
    iget-wide v1, p0, Lcom/b/a/a/c/d;->d:D

    .line 4115
    iput-wide v1, v0, Lcom/b/a/a/c/d;->d:D

    .line 4135
    iget-object v1, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    .line 4139
    iput-object v1, v0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    .line 4143
    iget v1, p0, Lcom/b/a/a/c/d;->h:I

    .line 5143
    iget v2, p1, Lcom/b/a/a/c/d;->h:I

    if-ne v1, v2, :cond_9

    .line 6143
    iget v1, p0, Lcom/b/a/a/c/d;->h:I

    .line 6147
    iput v1, v0, Lcom/b/a/a/c/d;->h:I

    .line 7127
    iget v1, p0, Lcom/b/a/a/c/d;->f:I

    .line 8127
    iget v2, p1, Lcom/b/a/a/c/d;->f:I

    if-ne v1, v2, :cond_8

    .line 9127
    iget v1, p0, Lcom/b/a/a/c/d;->f:I

    .line 9131
    iput v1, v0, Lcom/b/a/a/c/d;->f:I

    .line 10103
    iget v1, p0, Lcom/b/a/a/c/d;->c:I

    .line 11103
    iget v2, p1, Lcom/b/a/a/c/d;->c:I

    if-ne v1, v2, :cond_7

    .line 12103
    iget v1, p0, Lcom/b/a/a/c/d;->c:I

    .line 12107
    iput v1, v0, Lcom/b/a/a/c/d;->c:I

    .line 13095
    iget v1, p0, Lcom/b/a/a/c/d;->b:I

    .line 14095
    iget v2, p1, Lcom/b/a/a/c/d;->b:I

    if-ne v1, v2, :cond_6

    .line 15095
    iget v1, p0, Lcom/b/a/a/c/d;->b:I

    .line 15099
    iput v1, v0, Lcom/b/a/a/c/d;->b:I

    .line 15119
    iget-wide v1, p0, Lcom/b/a/a/c/d;->e:D

    .line 16119
    iget-wide v3, p1, Lcom/b/a/a/c/d;->e:D

    cmpl-double v6, v1, v3

    if-nez v6, :cond_5

    .line 17119
    iget-wide v1, p0, Lcom/b/a/a/c/d;->e:D

    .line 17123
    iput-wide v1, v0, Lcom/b/a/a/c/d;->e:D

    .line 18111
    iget-wide v1, p0, Lcom/b/a/a/c/d;->d:D

    .line 19111
    iget-wide v3, p1, Lcom/b/a/a/c/d;->d:D

    cmpl-double v6, v1, v3

    if-nez v6, :cond_4

    .line 20111
    iget-wide v1, p0, Lcom/b/a/a/c/d;->d:D

    .line 20115
    iput-wide v1, v0, Lcom/b/a/a/c/d;->d:D

    .line 184
    invoke-virtual {p0}, Lcom/b/a/a/c/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/b/a/a/c/d;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/b/a/a/c/d;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 186
    invoke-virtual {p1}, Lcom/b/a/a/c/d;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 187
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/b;

    .line 190
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    :try_start_0
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/b/a/a/b;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 194
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/b/a/a/b;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v0, v1}, Lcom/b/a/a/c/d;->a(Lcom/b/a/a/b;)V

    goto :goto_0

    .line 202
    :cond_2
    instance-of v3, v1, Lcom/googlecode/mp4parser/b/b/a;

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/googlecode/mp4parser/b/b/a;

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v1

    check-cast v3, Lcom/googlecode/mp4parser/b/b/a;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/b/b/a;->a()Lcom/googlecode/mp4parser/b/b/a/b;

    move-result-object v4

    check-cast v2, Lcom/googlecode/mp4parser/b/b/a;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/a;->a()Lcom/googlecode/mp4parser/b/b/a/b;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/googlecode/mp4parser/a/d/a;->a(Lcom/googlecode/mp4parser/b/b/a/b;Lcom/googlecode/mp4parser/b/b/a/b;)Lcom/googlecode/mp4parser/b/b/a/h;

    move-result-object v2

    .line 204
    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/b/b/a;->a(Lcom/googlecode/mp4parser/b/b/a/b;)V

    .line 205
    invoke-virtual {v0, v1}, Lcom/b/a/a/c/d;->a(Lcom/b/a/a/b;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    sget-object p1, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/googlecode/mp4parser/c/f;->b(Ljava/lang/String;)V

    return-object v5

    :cond_3
    :goto_1
    return-object v0

    .line 180
    :cond_4
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "horizontal resolution differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5

    .line 173
    :cond_5
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "vert resolution differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5

    .line 166
    :cond_6
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "width differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5

    .line 160
    :cond_7
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "height differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5

    .line 153
    :cond_8
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "frame count differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5

    .line 146
    :cond_9
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "Depth differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5

    .line 139
    :cond_a
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "Horizontal Resolution differs"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v5
.end method

.method private a(Lcom/b/a/a/v;Lcom/b/a/a/v;)Lcom/b/a/a/v;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/b/a/a/v;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 103
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/b/a/a/v;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 111
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    const-class v0, Lcom/b/a/a/c/c;

    invoke-virtual {p1, v0}, Lcom/b/a/a/v;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/c/c;

    const-class v3, Lcom/b/a/a/c/c;

    invoke-virtual {p2, v3}, Lcom/b/a/a/v;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/c/c;

    .line 1123
    invoke-interface {v0}, Lcom/b/a/a/c/c;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/b/a/a/c/c;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1125
    instance-of v4, v0, Lcom/b/a/a/c/d;

    if-eqz v4, :cond_0

    instance-of v4, v3, Lcom/b/a/a/c/d;

    if-eqz v4, :cond_0

    .line 1126
    check-cast v0, Lcom/b/a/a/c/d;

    check-cast v3, Lcom/b/a/a/c/d;

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/a/d/a;->a(Lcom/b/a/a/c/d;Lcom/b/a/a/c/d;)Lcom/b/a/a/c/d;

    move-result-object v2

    goto :goto_0

    .line 1127
    :cond_0
    instance-of v4, v0, Lcom/b/a/a/c/b;

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcom/b/a/a/c/b;

    if-eqz v4, :cond_1

    .line 1128
    check-cast v0, Lcom/b/a/a/c/b;

    check-cast v3, Lcom/b/a/a/c/b;

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/a/d/a;->a(Lcom/b/a/a/c/b;Lcom/b/a/a/c/b;)Lcom/b/a/a/c/b;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 114
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b/a/a/v;->a(Ljava/util/List;)V

    goto :goto_1

    .line 116
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot merge "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/b/a/a/c/c;

    invoke-virtual {p1, v3}, Lcom/b/a/a/v;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/b/a/a/c/c;

    invoke-virtual {p2, p1}, Lcom/b/a/a/v;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 105
    sget-object p2, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v2
.end method

.method private static a(Lcom/googlecode/mp4parser/b/b/a/b;Lcom/googlecode/mp4parser/b/b/a/b;)Lcom/googlecode/mp4parser/b/b/a/h;
    .locals 8

    .line 307
    instance-of v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    instance-of v0, p1, Lcom/googlecode/mp4parser/b/b/a/h;

    if-eqz v0, :cond_16

    .line 308
    check-cast p0, Lcom/googlecode/mp4parser/b/b/a/h;

    .line 309
    check-cast p1, Lcom/googlecode/mp4parser/b/b/a/h;

    .line 50132
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    .line 50133
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    if-eq v0, v2, :cond_0

    return-object v1

    .line 50136
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    .line 50137
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    if-eq v0, v2, :cond_1

    return-object v1

    .line 50138
    :cond_1
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    .line 50139
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    if-eq v0, v2, :cond_2

    return-object v1

    .line 50140
    :cond_2
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    .line 50141
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    if-eq v0, v2, :cond_3

    return-object v1

    .line 50142
    :cond_3
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    .line 50143
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    if-eq v0, v2, :cond_4

    return-object v1

    .line 50144
    :cond_4
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->h:I

    .line 50145
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->h:I

    if-eq v0, v2, :cond_5

    return-object v1

    .line 50146
    :cond_5
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    .line 50147
    iget v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    if-eq v0, v2, :cond_6

    return-object v1

    .line 50150
    :cond_6
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 50151
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    .line 50152
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50154
    :cond_7
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    if-eqz v0, :cond_8

    .line 50155
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    .line 50156
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    .line 50157
    :cond_8
    iget-object v0, p1, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    if-eqz v0, :cond_11

    .line 50158
    :goto_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    .line 50159
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    .line 50160
    iget-object v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    if-eqz v3, :cond_9

    .line 50161
    iget-object v3, v2, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    if-eqz v3, :cond_9

    .line 50162
    iget-object v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    .line 50163
    iget-object v4, v2, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    .line 344
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/b/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return-object v1

    .line 50164
    :cond_9
    iget-wide v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    .line 50165
    iget-wide v5, v2, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a

    .line 50166
    iget-wide v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    .line 50167
    iget-wide v5, v2, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    .line 348
    div-long/2addr v3, v5

    .line 50168
    iput-wide v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    .line 50172
    :cond_a
    iget-object v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    if-eqz v3, :cond_b

    .line 50173
    iget-object v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    .line 50174
    iget-object v4, v2, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    .line 354
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/b/b/a/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    .line 50175
    :cond_b
    iget-object v3, v2, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    if-eqz v3, :cond_c

    :goto_1
    return-object v1

    .line 50176
    :cond_c
    iget-wide v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    .line 50177
    iget-wide v5, v2, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_d

    .line 50178
    iget-wide v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    .line 50179
    iget-wide v5, v2, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    .line 359
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 50180
    iput-wide v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    .line 50182
    :cond_d
    iget-object v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    .line 50183
    iget-object v4, v2, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    .line 361
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return-object v1

    .line 50184
    :cond_e
    iget v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->a:I

    .line 50185
    iget v4, v2, Lcom/googlecode/mp4parser/b/b/a/e;->a:I

    if-eq v3, v4, :cond_f

    return-object v1

    .line 50186
    :cond_f
    iget v3, v0, Lcom/googlecode/mp4parser/b/b/a/e;->b:I

    .line 50187
    iget v4, v2, Lcom/googlecode/mp4parser/b/b/a/e;->b:I

    if-eq v3, v4, :cond_10

    return-object v1

    .line 50188
    :cond_10
    iget v0, v0, Lcom/googlecode/mp4parser/b/b/a/e;->c:I

    .line 50189
    iget v2, v2, Lcom/googlecode/mp4parser/b/b/a/e;->c:I

    if-eq v0, v2, :cond_11

    return-object v1

    .line 50190
    :cond_11
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 50191
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    .line 50192
    iget-object v2, p1, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    .line 376
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2

    .line 50193
    :cond_12
    iget-object v0, p1, Lcom/googlecode/mp4parser/b/b/a/h;->m:Ljava/util/List;

    if-eqz v0, :cond_13

    :goto_2
    return-object v1

    .line 50194
    :cond_13
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    if-eqz v0, :cond_14

    .line 50195
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    .line 50196
    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    .line 379
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/b/b/a/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_3

    .line 50197
    :cond_14
    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    if-eqz p1, :cond_15

    :goto_3
    return-object v1

    :cond_15
    return-object p0

    .line 384
    :cond_16
    sget-object p0, Lcom/googlecode/mp4parser/a/d/a;->h:Lcom/googlecode/mp4parser/c/f;

    const-string p1, "I can only merge ESDescriptors"

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c/f;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method private static varargs a([Lcom/googlecode/mp4parser/a/g;)Ljava/lang/String;
    .locals 6

    .line 86
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    invoke-virtual {v2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    aget-object v4, p0, v3

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/googlecode/mp4parser/a/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/d$a;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 405
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 406
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_4

    .line 409
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [I

    .line 411
    array-length v8, v7

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v8, :cond_1

    goto :goto_1

    :cond_1
    aget v2, v7, v0

    .line 412
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/d$a;

    .line 50198
    iget v3, v3, Lcom/b/a/a/d$a;->b:I

    if-eq v3, v2, :cond_2

    goto :goto_3

    .line 416
    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/d$a;

    .line 50199
    iget v3, v2, Lcom/b/a/a/d$a;->a:I

    add-int/2addr v3, v4

    .line 50200
    iput v3, v2, Lcom/b/a/a/d$a;->a:I

    goto :goto_4

    .line 413
    :cond_3
    :goto_3
    new-instance v3, Lcom/b/a/a/d$a;

    invoke-direct {v3, v4, v2}, Lcom/b/a/a/d$a;-><init>(II)V

    .line 414
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 406
    :cond_4
    aget-object v5, v2, v4

    .line 407
    invoke-interface {v5}, Lcom/googlecode/mp4parser/a/g;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/b/a/a/d;->a(Ljava/util/List;)[I

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()[J
    .locals 15

    .line 428
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    .line 430
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v2, :cond_3

    .line 433
    new-array v5, v4, [J

    const-wide/16 v2, 0x0

    .line 437
    iget-object v6, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    array-length v7, v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    if-lt v0, v7, :cond_0

    return-object v5

    :cond_0
    aget-object v8, v6, v0

    .line 438
    invoke-interface {v8}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v9

    if-eqz v9, :cond_2

    .line 439
    invoke-interface {v8}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v10, :cond_1

    goto :goto_3

    :cond_1
    aget-wide v12, v9, v11

    add-int/lit8 v14, v4, 0x1

    add-long/2addr v12, v2

    .line 440
    aput-wide v12, v5, v4

    add-int/lit8 v11, v11, 0x1

    move v4, v14

    goto :goto_2

    .line 443
    :cond_2
    :goto_3
    invoke-interface {v8}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    :cond_3
    aget-object v5, v0, v3

    .line 431
    invoke-interface {v5}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v5

    array-length v5, v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/u$a;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 454
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v4, v2, v1

    .line 455
    invoke-interface {v4}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    .line 94
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final d()Lcom/b/a/a/ac;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->d()Lcom/b/a/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized k()[J
    .locals 1

    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->g:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Lcom/b/a/a/v;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->e:Lcom/b/a/a/v;

    return-object v0
.end method

.method public final m()Lcom/googlecode/mp4parser/a/h;
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/a;->d:[Lcom/googlecode/mp4parser/a/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
