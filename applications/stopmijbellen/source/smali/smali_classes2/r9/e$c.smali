.class public final Lr9/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lr9/e$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lr9/e;


# direct methods
.method public constructor <init>(Lr9/e;Lr9/e$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/e$c;->d:Lr9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr9/e$c;->a:Lr9/e$d;

    .line 3
    iget-boolean p2, p2, Lr9/e$d;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lr9/e;->h:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lr9/e$c;->b:[Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr9/e$c;->d:Lr9/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lr9/e$c;->c:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lr9/e$c;->a:Lr9/e$d;

    iget-object v1, v1, Lr9/e$d;->f:Lr9/e$c;

    if-ne v1, p0, :cond_0

    .line 4
    iget-object v1, p0, Lr9/e$c;->d:Lr9/e;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lr9/e;->k(Lr9/e$c;Z)V

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lr9/e$c;->c:Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr9/e$c;->d:Lr9/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lr9/e$c;->c:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lr9/e$c;->a:Lr9/e$d;

    iget-object v1, v1, Lr9/e$d;->f:Lr9/e$c;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 4
    iget-object v1, p0, Lr9/e$c;->d:Lr9/e;

    invoke-virtual {v1, p0, v2}, Lr9/e;->k(Lr9/e$c;Z)V

    .line 5
    :cond_0
    iput-boolean v2, p0, Lr9/e$c;->c:Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr9/e$c;->a:Lr9/e$d;

    iget-object v0, v0, Lr9/e$d;->f:Lr9/e$c;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lr9/e$c;->d:Lr9/e;

    iget v2, v1, Lr9/e;->h:I

    if-ge v0, v2, :cond_0

    .line 3
    :try_start_0
    iget-object v1, v1, Lr9/e;->a:Lw9/a;

    iget-object v2, p0, Lr9/e$c;->a:Lr9/e$d;

    iget-object v2, v2, Lr9/e$d;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    check-cast v1, Lw9/a$a;

    invoke-virtual {v1, v2}, Lw9/a$a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lr9/e$c;->a:Lr9/e$d;

    const/4 v1, 0x0

    iput-object v1, v0, Lr9/e$d;->f:Lr9/e$c;

    :cond_1
    return-void
.end method

.method public d(I)Laa/x;
    .locals 4

    .line 1
    iget-object v0, p0, Lr9/e$c;->d:Lr9/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lr9/e$c;->c:Z

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lr9/e$c;->a:Lr9/e$d;

    iget-object v2, v1, Lr9/e$d;->f:Lr9/e$c;

    if-eq v2, p0, :cond_0

    .line 4
    sget-object p1, Laa/o;->a:Ljava/util/logging/Logger;

    .line 5
    new-instance p1, Laa/p;

    invoke-direct {p1}, Laa/p;-><init>()V

    .line 6
    monitor-exit v0

    return-object p1

    .line 7
    :cond_0
    iget-boolean v2, v1, Lr9/e$d;->e:Z

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lr9/e$c;->b:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 9
    :cond_1
    iget-object v1, v1, Lr9/e$d;->d:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v1, p0, Lr9/e$c;->d:Lr9/e;

    iget-object v1, v1, Lr9/e;->a:Lw9/a;

    check-cast v1, Lw9/a$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {p1}, Laa/o;->c(Ljava/io/File;)Laa/x;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 13
    invoke-static {p1}, Laa/o;->c(Ljava/io/File;)Laa/x;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :goto_0
    :try_start_4
    new-instance v1, Lr9/e$c$a;

    invoke-direct {v1, p0, p1}, Lr9/e$c$a;-><init>(Lr9/e$c;Laa/x;)V

    monitor-exit v0

    return-object v1

    .line 15
    :catch_1
    sget-object p1, Laa/o;->a:Ljava/util/logging/Logger;

    .line 16
    new-instance p1, Laa/p;

    invoke-direct {p1}, Laa/p;-><init>()V

    .line 17
    monitor-exit v0

    return-object p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
