.class public Lcom/liulishuo/filedownloader/download/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/e$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private final c:Le/e/a/e0/a;

.field private final d:Lcom/liulishuo/filedownloader/download/e$a;

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/HandlerThread;

.field private volatile k:Z

.field private volatile l:Ljava/lang/Thread;

.field private volatile m:J

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/e;->k:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/liulishuo/filedownloader/download/e;->m:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/c;->f()Le/e/a/e0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    const/4 p1, 0x5

    if-ge p3, p1, :cond_0

    const/4 p3, 0x5

    :cond_0
    iput p3, p0, Lcom/liulishuo/filedownloader/download/e;->f:I

    iput p4, p0, Lcom/liulishuo/filedownloader/download/e;->g:I

    new-instance p1, Lcom/liulishuo/filedownloader/download/e$a;

    invoke-direct {p1}, Lcom/liulishuo/filedownloader/download/e$a;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->d:Lcom/liulishuo/filedownloader/download/e$a;

    iput p2, p0, Lcom/liulishuo/filedownloader/download/e;->e:I

    return-void
.end method

.method private static a(JJ)J
    .locals 7

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x1

    cmp-long v6, p0, v0

    if-nez v6, :cond_1

    return-wide v4

    :cond_1
    div-long/2addr p0, p2

    cmp-long p2, p0, v2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, p0

    :goto_0
    return-wide v4
.end method

.method private c(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 10

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Le/e/a/h0/e;->a()Le/e/a/h0/e;

    move-result-object v1

    iget-boolean v1, v1, Le/e/a/h0/e;->f:Z

    if-eqz v1, :cond_3

    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Le/e/a/h0/f;->x(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v1, 0x1000

    cmp-long v5, v3, v1

    if-gtz v5, :cond_3

    const-wide/16 v1, 0x0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "Exception with: free space isn\'t enough, and the target file not exist."

    invoke-static {p0, p1, v5, v0}, Le/e/a/h0/d;->c(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v7, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    move-wide v7, v0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    const-wide/16 v5, 0x1000

    move-object v2, v0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJLjava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    const-wide/16 v5, 0x1000

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method private d()V
    .locals 5

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->w()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->m()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Le/e/a/e0/a;->g(IJ)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    invoke-interface {v0, v2}, Le/e/a/e0/a;->c(I)V

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    invoke-static {}, Le/e/a/h0/e;->a()Le/e/a/h0/e;

    move-result-object v0

    iget-boolean v0, v0, Le/e/a/h0/e;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/services/f;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Exception;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->c(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    instance-of v1, v0, Landroid/database/sqlite/SQLiteFullException;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->i(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->x(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v3

    invoke-interface {p1, v1, v0, v3, v4}, Le/e/a/e0/a;->i(ILjava/lang/Throwable;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->i(Landroid/database/sqlite/SQLiteFullException;)V

    :goto_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->d:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-virtual {p1, v0}, Lcom/liulishuo/filedownloader/download/e$a;->d(Ljava/lang/Exception;)V

    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Le/e/a/e0/a;->q(IJ)V

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    return-void
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->m()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Le/e/a/e0/a;->l(IJ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "handleProgress update model\'s status with progress"

    invoke-static {p0, v4, v0}, Le/e/a/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleProgress notify user progress status"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    :cond_4
    return-void
.end method

.method private h(Ljava/lang/Exception;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->c(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->d:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/e$a;->d(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->d:Lcom/liulishuo/filedownloader/download/e$a;

    iget v1, p0, Lcom/liulishuo/filedownloader/download/e;->e:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e$a;->f(I)V

    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->x(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-interface {p2, v1, p1}, Le/e/a/e0/a;->e(ILjava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->x(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    invoke-interface {p1, v0}, Le/e/a/e0/a;->remove(I)Z

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    invoke-interface {p1, v0}, Le/e/a/e0/a;->c(I)V

    return-void
.end method

.method private j(J)V
    .locals 9

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/liulishuo/filedownloader/download/e;->m:J

    sub-long v3, p1, v3

    iget-wide v5, p0, Lcom/liulishuo/filedownloader/download/e;->h:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/download/e;->h:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/liulishuo/filedownloader/download/e;->f:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "inspectNeedCallbackToUser need callback to user"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/e;->m:J

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    return-void
.end method

.method private k()Z
    .locals 6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->E(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->m()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "sofar[%d] not equal total[%d]"

    invoke-static {v1, v2}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method private v(B)V
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    sget-boolean p1, Le/e/a/h0/d;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    invoke-static {p0, v0, p1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/message/b;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->d:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-static {p1, v1, v2}, Lcom/liulishuo/filedownloader/message/c;->d(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/download/e$a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/b;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method private w()V
    .locals 12

    const-string v0, "delete the temp file(%s) failed, on completed downloading."

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-static {p0, v7, v11}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v6, v5

    if-nez v6, :cond_3

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {p0, v0, v2}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    const-string v9, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    aput-object v2, v8, v5

    invoke-static {v9, v8}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p0, v0, v3}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    throw v2
.end method

.method private declared-synchronized x(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->j:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method b()V
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->l:Ljava/lang/Thread;

    :goto_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/e;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->l:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/e;->k:Z

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, p1}, Lcom/liulishuo/filedownloader/download/e;->h(Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/download/e;->k:Z

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->l:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->l:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/download/e;->k:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->l:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_3
    throw p1
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m()V
    .locals 1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->d()V

    return-void
.end method

.method n(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p4, p2, v2

    aput-object v0, p2, v1

    const-string p3, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"

    invoke-static {p3, p2}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->d:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/e$a;->e(Z)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1, p2, p3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->E(J)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1, p4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1, p5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->y(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v5

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Le/e/a/e0/a;->m(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    iget p1, p0, Lcom/liulishuo/filedownloader/download/e;->g:I

    int-to-long p4, p1

    invoke-static {p2, p3, p4, p5}, Lcom/liulishuo/filedownloader/download/e;->a(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/e;->h:J

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method o(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method p()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "source-status-callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/Handler;

    return-void
.end method

.method q()V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->f()V

    return-void
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    invoke-interface {v0, v2}, Le/e/a/e0/a;->a(I)V

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    return-void
.end method

.method s(J)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->o(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/download/e;->j(J)V

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->x(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method t(Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/download/e;->h(Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->x(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method u()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->D(B)V

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/e;->v(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Le/e/a/e0/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-interface {v0, v1}, Le/e/a/e0/a;->f(I)V

    return-void
.end method
