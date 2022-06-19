.class Lorg/xutils/http/body/MultipartBody$a;
.super Ljava/io/OutputStream;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/body/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic e:Lorg/xutils/http/body/MultipartBody;


# direct methods
.method public constructor <init>(Lorg/xutils/http/body/MultipartBody;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->e:Lorg/xutils/http/body/MultipartBody;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public e(Ljava/io/InputStream;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/xutils/http/body/InputStreamBody;->getInputStreamLength(Ljava/io/InputStream;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method public write([B)V
    .locals 5

    .line 3
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 5
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method
