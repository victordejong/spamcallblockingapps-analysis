.class public final Lu9/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Laa/l;

.field public b:Z

.field public final synthetic c:Lu9/a;


# direct methods
.method public constructor <init>(Lu9/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu9/a$c;->c:Lu9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Laa/l;

    iget-object p1, p1, Lu9/a;->d:Laa/g;

    invoke-interface {p1}, Laa/x;->b()Laa/z;

    move-result-object p1

    invoke-direct {v0, p1}, Laa/l;-><init>(Laa/z;)V

    iput-object v0, p0, Lu9/a$c;->a:Laa/l;

    return-void
.end method


# virtual methods
.method public E(Laa/f;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lu9/a$c;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    iget-object v0, v0, Lu9/a;->d:Laa/g;

    invoke-interface {v0, p2, p3}, Laa/g;->g(J)Laa/g;

    .line 3
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    iget-object v0, v0, Lu9/a;->d:Laa/g;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    .line 4
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    iget-object v0, v0, Lu9/a;->d:Laa/g;

    invoke-interface {v0, p1, p2, p3}, Laa/x;->E(Laa/f;J)V

    .line 5
    iget-object p1, p0, Lu9/a$c;->c:Lu9/a;

    iget-object p1, p1, Lu9/a;->d:Laa/g;

    invoke-interface {p1, v1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a$c;->a:Laa/l;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lu9/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lu9/a$c;->b:Z

    .line 3
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    iget-object v0, v0, Lu9/a;->d:Laa/g;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    .line 4
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    iget-object v1, p0, Lu9/a$c;->a:Laa/l;

    invoke-virtual {v0, v1}, Lu9/a;->g(Laa/l;)V

    .line 5
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    const/4 v1, 0x3

    iput v1, v0, Lu9/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lu9/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu9/a$c;->c:Lu9/a;

    iget-object v0, v0, Lu9/a;->d:Laa/g;

    invoke-interface {v0}, Laa/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
