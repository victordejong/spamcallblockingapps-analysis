.class public final Lcom/b/a/a/h;
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

    const-string v0, "dref"

    .line 47
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

    .line 85
    invoke-virtual {p0}, Lcom/b/a/a/h;->j()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v0, 0x8

    .line 86
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/b/a/a/h;->a:I

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 88
    iget v1, p0, Lcom/b/a/a/h;->b:I

    invoke-static {v0, v1}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    .line 89
    invoke-virtual {p0}, Lcom/b/a/a/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 91
    invoke-virtual {p0, p1}, Lcom/b/a/a/h;->a(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public final getSize()J
    .locals 7

    .line 96
    invoke-virtual {p0}, Lcom/b/a/a/h;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    .line 98
    iget-boolean v4, p0, Lcom/b/a/a/h;->p:Z

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

    .line 73
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 74
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    .line 75
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1068
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 76
    iput v0, p0, Lcom/b/a/a/h;->a:I

    .line 77
    invoke-static {p2}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;)I

    move-result p2

    iput p2, p0, Lcom/b/a/a/h;->b:I

    const-wide/16 v0, 0x8

    sub-long/2addr p3, v0

    .line 79
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/b/a/a/h;->a(Lcom/googlecode/mp4parser/e;JLcom/b/a/b;)V

    return-void
.end method
