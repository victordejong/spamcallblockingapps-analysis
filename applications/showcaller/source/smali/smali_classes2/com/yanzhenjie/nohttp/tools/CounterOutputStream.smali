.class public Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;
.super Ljava/io/OutputStream;
.source "CounterOutputStream.java"


# instance fields
.field private final length:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->length:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public get()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->length:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->length:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public write([B)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->length:Ljava/util/concurrent/atomic/AtomicLong;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->length:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public writeLength(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->length:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method
