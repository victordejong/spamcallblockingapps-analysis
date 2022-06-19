.class public final Lc/m;
.super Lc/ae;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0001H\u0016J\u0008\u0010\u0007\u001a\u00020\u0001H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u00020\u00018\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokio/ForwardingTimeout;",
        "Lokio/Timeout;",
        "delegate",
        "(Lokio/Timeout;)V",
        "()Lokio/Timeout;",
        "setDelegate",
        "clearDeadline",
        "clearTimeout",
        "deadlineNanoTime",
        "",
        "hasDeadline",
        "",
        "throwIfReached",
        "",
        "timeout",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "timeoutNanos",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Lc/ae;


# direct methods
.method public constructor <init>(Lc/ae;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lc/ae;-><init>()V

    iput-object p1, p0, Lc/m;->a:Lc/ae;

    return-void
.end method


# virtual methods
.method public final clearDeadline()Lc/ae;
    .locals 1

    .line 47
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->clearDeadline()Lc/ae;

    move-result-object v0

    return-object v0
.end method

.method public final clearTimeout()Lc/ae;
    .locals 1

    .line 45
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->clearTimeout()Lc/ae;

    move-result-object v0

    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 40
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lc/ae;
    .locals 1

    .line 42
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0, p1, p2}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    move-result-object p1

    return-object p1
.end method

.method public final hasDeadline()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0, p1, p2, p3}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    move-result-object p1

    return-object p1
.end method

.method public final timeoutNanos()J
    .locals 2

    .line 36
    iget-object v0, p0, Lc/m;->a:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
