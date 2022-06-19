.class public Lcom/googlecode/mp4parser/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/e;
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/a/e;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator<",
        "Lcom/b/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/a/b;

.field private static b:Lcom/googlecode/mp4parser/c/f;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Lcom/b/a/b;

.field protected r:Lcom/googlecode/mp4parser/e;

.field s:Lcom/b/a/a/b;

.field t:J

.field u:J

.field v:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/googlecode/mp4parser/d$1;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/d$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    .line 39
    const-class v0, Lcom/googlecode/mp4parser/d;

    invoke-static {v0}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/Class;)Lcom/googlecode/mp4parser/c/f;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/d;->b:Lcom/googlecode/mp4parser/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/googlecode/mp4parser/d;->t:J

    .line 44
    iput-wide v0, p0, Lcom/googlecode/mp4parser/d;->u:J

    .line 45
    iput-wide v0, p0, Lcom/googlecode/mp4parser/d;->v:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/b/a/a/b;
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/googlecode/mp4parser/d;->t:J

    iget-wide v3, p0, Lcom/googlecode/mp4parser/d;->v:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 183
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/d;->t:J

    invoke-interface {v1, v2, v3}, Lcom/googlecode/mp4parser/e;->a(J)V

    .line 185
    iget-object v1, p0, Lcom/googlecode/mp4parser/d;->q:Lcom/b/a/b;

    iget-object v2, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    invoke-interface {v1, v2, p0}, Lcom/b/a/b;->a(Lcom/googlecode/mp4parser/e;Lcom/b/a/a/e;)Lcom/b/a/a/b;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/e;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googlecode/mp4parser/d;->t:J

    .line 188
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 191
    :catch_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 178
    :cond_1
    sget-object v0, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    .line 179
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(JJ)Ljava/nio/ByteBuffer;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-wide/from16 v2, p3

    .line 221
    iget-object v4, v1, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    if-eqz v4, :cond_0

    .line 222
    monitor-enter v4

    .line 223
    :try_start_0
    iget-object v0, v1, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    iget-wide v5, v1, Lcom/googlecode/mp4parser/d;->u:J

    add-long v5, v5, p1

    invoke-interface {v0, v5, v6, v2, v3}, Lcom/googlecode/mp4parser/e;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    .line 222
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_0
    invoke-static/range {p3 .. p4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-long v2, p1, v2

    const-wide/16 v4, 0x0

    .line 230
    iget-object v6, v1, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0

    .line 230
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/b/a/a/b;

    .line 232
    invoke-interface {v7}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v10, v8, p1

    if-lez v10, :cond_5

    cmp-long v10, v4, v2

    if-gez v10, :cond_5

    .line 234
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    invoke-static {v10}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v11

    .line 236
    invoke-interface {v7, v11}, Lcom/b/a/a/b;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 237
    invoke-interface {v11}, Ljava/nio/channels/WritableByteChannel;->close()V

    cmp-long v11, v4, p1

    if-ltz v11, :cond_2

    cmp-long v12, v8, v2

    if-gtz v12, :cond_2

    .line 240
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    if-gez v11, :cond_3

    cmp-long v12, v8, v2

    if-lez v12, :cond_3

    .line 244
    invoke-interface {v7}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v11

    sub-long v4, p1, v4

    sub-long/2addr v11, v4

    sub-long v13, v8, v2

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v7

    .line 245
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v4

    invoke-virtual {v0, v10, v4, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    if-gez v11, :cond_4

    cmp-long v12, v8, v2

    if-gtz v12, :cond_4

    .line 248
    invoke-interface {v7}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v11

    sub-long v4, p1, v4

    sub-long/2addr v11, v4

    invoke-static {v11, v12}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v7

    .line 249
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v4

    invoke-virtual {v0, v10, v4, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    if-ltz v11, :cond_5

    cmp-long v4, v8, v2

    if-lez v4, :cond_5

    .line 251
    invoke-interface {v7}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v4

    sub-long v11, v8, v2

    sub-long/2addr v4, v11

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v4

    .line 252
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_5
    :goto_1
    move-wide v4, v8

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-eqz v2, :cond_1

    .line 100
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 102
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 81
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/b;

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_3

    move-object v2, v4

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/b/a/a/b;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    .line 135
    invoke-interface {p1, p0}, Lcom/b/a/a/b;->setParent(Lcom/b/a/a/e;)V

    .line 136
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/googlecode/mp4parser/e;JLcom/b/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    .line 143
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/d;->u:J

    iput-wide v0, p0, Lcom/googlecode/mp4parser/d;->t:J

    .line 144
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/e;->a(J)V

    .line 145
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/mp4parser/d;->v:J

    .line 146
    iput-object p4, p0, Lcom/googlecode/mp4parser/d;->q:Lcom/b/a/b;

    return-void
.end method

.method public final a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 216
    invoke-interface {v1, p1}, Lcom/b/a/a/b;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/b;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    .line 61
    sget-object p1, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    iput-object p1, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    sget-object v1, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v0, Lcom/googlecode/mp4parser/c/e;

    iget-object v1, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/googlecode/mp4parser/c/e;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->r:Lcom/googlecode/mp4parser/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->close()V

    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    sget-object v1, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 161
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/googlecode/mp4parser/d;->a()Lcom/b/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 164
    :catch_0
    sget-object v0, Lcom/googlecode/mp4parser/d;->a:Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/googlecode/mp4parser/d;->s:Lcom/b/a/a/b;

    return v2
.end method

.method protected final k()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-wide v0

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/b;

    invoke-interface {v3}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/d;->a()Lcom/b/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const-string v1, "]"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ";"

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/googlecode/mp4parser/d;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
