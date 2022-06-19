.class public final Lc/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/v;-><init>(J)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "okio/Pipe$source$1",
        "Lokio/Source;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
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
.field final synthetic a:Lc/v;

.field private final b:Lc/ae;


# direct methods
.method constructor <init>(Lc/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lc/v$b;->a:Lc/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance p1, Lc/ae;

    invoke-direct {p1}, Lc/ae;-><init>()V

    iput-object p1, p0, Lc/v$b;->b:Lc/ae;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 145
    iget-object v0, p0, Lc/v$b;->a:Lc/v;

    .line 8037
    iget-object v0, v0, Lc/v;->a:Lc/f;

    .line 251
    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    const/4 v2, 0x1

    .line 8040
    iput-boolean v2, v1, Lc/v;->d:Z

    .line 147
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 9037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    if-eqz v1, :cond_0

    .line 147
    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 148
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 147
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0

    throw v1
.end method

.method public final read(Lc/f;J)J
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lc/v$b;->a:Lc/v;

    .line 1037
    iget-object v0, v0, Lc/v;->a:Lc/f;

    .line 249
    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 1040
    iget-boolean v1, v1, Lc/v;->d:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 130
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 2038
    iget-boolean v1, v1, Lc/v;->b:Z

    if-nez v1, :cond_4

    .line 132
    :goto_0
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 3037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    .line 3073
    iget-wide v1, v1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 133
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 4039
    iget-boolean v1, v1, Lc/v;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 133
    monitor-exit v0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 134
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc/v$b;->b:Lc/ae;

    iget-object v2, p0, Lc/v$b;->a:Lc/v;

    .line 5037
    iget-object v2, v2, Lc/v;->a:Lc/f;

    .line 134
    invoke-virtual {v1, v2}, Lc/ae;->waitUntilNotified(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 5038
    iget-boolean v1, v1, Lc/v;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 138
    :cond_2
    iget-object v1, p0, Lc/v$b;->a:Lc/v;

    .line 6037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    .line 138
    invoke-virtual {v1, p1, p2, p3}, Lc/f;->read(Lc/f;J)J

    move-result-wide p1

    .line 139
    iget-object p3, p0, Lc/v$b;->a:Lc/v;

    .line 7037
    iget-object p3, p3, Lc/v;->a:Lc/f;

    if-eqz p3, :cond_3

    .line 139
    check-cast p3, Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit v0

    return-wide p1

    .line 139
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    const-string p1, "closed"

    .line 129
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v0

    throw p1
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 151
    iget-object v0, p0, Lc/v$b;->b:Lc/ae;

    return-object v0
.end method
