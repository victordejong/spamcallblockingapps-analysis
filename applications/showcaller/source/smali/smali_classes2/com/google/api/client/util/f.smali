.class final Lcom/google/api/client/util/f;
.super Ljava/io/OutputStream;
.source "ByteCountingOutputStream.java"


# instance fields
.field d:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/google/api/client/util/f;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/api/client/util/f;->d:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 1
    iget-wide p1, p0, Lcom/google/api/client/util/f;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/api/client/util/f;->d:J

    return-void
.end method
