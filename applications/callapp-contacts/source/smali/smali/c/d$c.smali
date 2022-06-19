.class public final Lc/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d;->sink(Lc/ab;)Lc/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "okio/AsyncTimeout$sink$1",
        "Lokio/Sink;",
        "close",
        "",
        "flush",
        "timeout",
        "Lokio/AsyncTimeout;",
        "toString",
        "",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
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
.field final synthetic a:Lc/d;

.field final synthetic b:Lc/ab;


# direct methods
.method constructor <init>(Lc/d;Lc/ab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/ab;",
            ")V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lc/d$c;->a:Lc/d;

    iput-object p2, p0, Lc/d$c;->b:Lc/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 113
    iget-object v0, p0, Lc/d$c;->a:Lc/d;

    .line 351
    invoke-virtual {v0}, Lc/d;->enter()V

    .line 113
    :try_start_0
    iget-object v1, p0, Lc/d$c;->b:Lc/ab;

    invoke-interface {v1}, Lc/ab;->close()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, Lc/d;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Lc/d;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 357
    :try_start_1
    invoke-virtual {v0}, Lc/d;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lc/d;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    :goto_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :goto_2
    invoke-virtual {v0}, Lc/d;->exit()Z

    .line 360
    throw v1
.end method

.method public final flush()V
    .locals 3

    .line 109
    iget-object v0, p0, Lc/d$c;->a:Lc/d;

    .line 340
    invoke-virtual {v0}, Lc/d;->enter()V

    .line 109
    :try_start_0
    iget-object v1, p0, Lc/d$c;->b:Lc/ab;

    invoke-interface {v1}, Lc/ab;->flush()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v0}, Lc/d;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Lc/d;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 346
    :try_start_1
    invoke-virtual {v0}, Lc/d;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lc/d;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    :goto_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_2
    invoke-virtual {v0}, Lc/d;->exit()Z

    .line 349
    throw v1
.end method

.method public final bridge synthetic timeout()Lc/ae;
    .locals 1

    .line 1116
    iget-object v0, p0, Lc/d$c;->a:Lc/d;

    .line 83
    check-cast v0, Lc/ae;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/d$c;->b:Lc/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lc/f;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    iget-wide v1, p1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 85
    invoke-static/range {v1 .. v6}, Lc/c;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4

    .line 91
    iget-object v2, p1, Lc/f;->a:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 93
    iget v3, v2, Lc/y;->c:I

    iget v4, v2, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 99
    :cond_0
    iget-object v2, v2, Lc/y;->f:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    :cond_1
    :goto_2
    iget-object v2, p0, Lc/d$c;->a:Lc/d;

    .line 329
    invoke-virtual {v2}, Lc/d;->enter()V

    .line 103
    :try_start_0
    iget-object v3, p0, Lc/d$c;->b:Lc/ab;

    invoke-interface {v3, p1, v0, v1}, Lc/ab;->write(Lc/f;J)V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v2}, Lc/d;->exit()Z

    move-result v3

    if-nez v3, :cond_2

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 338
    invoke-virtual {v2, p1}, Lc/d;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 335
    :try_start_1
    invoke-virtual {v2}, Lc/d;->exit()Z

    move-result p2

    if-nez p2, :cond_3

    :goto_3
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_4

    :cond_3
    invoke-virtual {v2, p1}, Lc/d;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_4
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :goto_5
    invoke-virtual {v2}, Lc/d;->exit()Z

    .line 338
    throw p1

    :cond_4
    return-void
.end method
