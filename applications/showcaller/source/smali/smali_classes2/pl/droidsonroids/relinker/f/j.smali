.class public Lpl/droidsonroids/relinker/f/j;
.super Lpl/droidsonroids/relinker/f/e;
.source "Program32Header.java"


# direct methods
.method public constructor <init>(Lpl/droidsonroids/relinker/f/i;Lpl/droidsonroids/relinker/f/d;J)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lpl/droidsonroids/relinker/f/e;-><init>()V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-boolean v1, p2, Lpl/droidsonroids/relinker/f/d;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    iget-wide v1, p2, Lpl/droidsonroids/relinker/f/d;->c:J

    iget p2, p2, Lpl/droidsonroids/relinker/f/d;->e:I

    int-to-long v3, p2

    mul-long p3, p3, v3

    add-long/2addr v1, p3

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->y(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lpl/droidsonroids/relinker/f/e;->a:J

    const-wide/16 p2, 0x4

    add-long/2addr p2, v1

    .line 6
    invoke-virtual {p1, v0, p2, p3}, Lpl/droidsonroids/relinker/f/i;->y(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lpl/droidsonroids/relinker/f/e;->b:J

    const-wide/16 p2, 0x8

    add-long/2addr p2, v1

    .line 7
    invoke-virtual {p1, v0, p2, p3}, Lpl/droidsonroids/relinker/f/i;->y(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lpl/droidsonroids/relinker/f/e;->c:J

    const-wide/16 p2, 0x14

    add-long/2addr v1, p2

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->y(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lpl/droidsonroids/relinker/f/e;->d:J

    return-void
.end method
