.class public final Lcom/b/a/a/v;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/l;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "stsd"

    .line 59
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/b/a/a/v;->j()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v0, 0x8

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/b/a/a/v;->a:I

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 97
    iget v1, p0, Lcom/b/a/a/v;->b:I

    invoke-static {v0, v1}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    .line 98
    invoke-virtual {p0}, Lcom/b/a/a/v;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 100
    invoke-virtual {p0, p1}, Lcom/b/a/a/v;->a(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public final getSize()J
    .locals 7

    .line 112
    invoke-virtual {p0}, Lcom/b/a/a/v;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    .line 114
    iget-boolean v4, p0, Lcom/b/a/a/v;->p:Z

    if-nez v4, :cond_1

    add-long/2addr v2, v0

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x10

    :goto_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final parse(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/b/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    .line 83
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 84
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    .line 85
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1068
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 86
    iput v0, p0, Lcom/b/a/a/v;->a:I

    .line 87
    invoke-static {p2}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;)I

    move-result p2

    iput p2, p0, Lcom/b/a/a/v;->b:I

    const-wide/16 v0, 0x8

    sub-long/2addr p3, v0

    .line 89
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/b/a/a/v;->a(Lcom/googlecode/mp4parser/e;JLcom/b/a/b;)V

    return-void
.end method
