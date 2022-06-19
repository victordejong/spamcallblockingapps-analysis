.class public final Lcom/mopub/common/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/DiskLruCache$a;,
        Lcom/mopub/common/DiskLruCache$Editor;,
        Lcom/mopub/common/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/DiskLruCache$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,64}"

    .line 97
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/DiskLruCache;->a:Ljava/util/regex/Pattern;

    .line 715
    new-instance v0, Lcom/mopub/common/DiskLruCache$2;

    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/mopub/common/DiskLruCache;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 150
    iput-wide v2, v0, Lcom/mopub/common/DiskLruCache;->j:J

    .line 152
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    .line 161
    iput-wide v2, v0, Lcom/mopub/common/DiskLruCache;->n:J

    .line 164
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    new-instance v2, Lcom/mopub/common/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/mopub/common/DiskLruCache$1;-><init>(Lcom/mopub/common/DiskLruCache;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    .line 183
    iput-object v1, v0, Lcom/mopub/common/DiskLruCache;->c:Ljava/io/File;

    move/from16 v2, p2

    .line 184
    iput v2, v0, Lcom/mopub/common/DiskLruCache;->g:I

    .line 185
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    .line 186
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->e:Ljava/io/File;

    .line 187
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/common/DiskLruCache;->f:Ljava/io/File;

    move/from16 v1, p3

    .line 188
    iput v1, v0, Lcom/mopub/common/DiskLruCache;->i:I

    move-wide/from16 v1, p4

    .line 189
    iput-wide v1, v0, Lcom/mopub/common/DiskLruCache;->h:J

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/DiskLruCache;->a(Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 456
    :try_start_0
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->f()V

    .line 457
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DiskLruCache$a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 14877
    iget-wide v1, v0, Lcom/mopub/common/DiskLruCache$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 461
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 464
    :try_start_1
    new-instance v0, Lcom/mopub/common/DiskLruCache$a;

    invoke-direct {v0, p0, p1, v3}, Lcom/mopub/common/DiskLruCache$a;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;Lcom/mopub/common/DiskLruCache$1;)V

    .line 465
    iget-object p2, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15877
    :cond_2
    iget-object p2, v0, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 467
    monitor-exit p0

    return-object v3

    .line 470
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/mopub/common/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$a;Lcom/mopub/common/DiskLruCache$1;)V

    .line 16877
    iput-object p2, v0, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    .line 474
    iget-object p3, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIRTY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a()Ljava/io/OutputStream;
    .locals 1

    .line 90
    sget-object v0, Lcom/mopub/common/DiskLruCache;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/common/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33667
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/mopub/common/DiskLruCacheUtil;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Lcom/mopub/common/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 511
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$a;

    move-result-object v0

    .line 17877
    iget-object v1, v0, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 18877
    iget-boolean v2, v0, Lcom/mopub/common/DiskLruCache$a;->c:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 518
    :goto_0
    iget v3, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v2, v3, :cond_2

    .line 519
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache$Editor;->b(Lcom/mopub/common/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 523
    invoke-virtual {v0, v2}, Lcom/mopub/common/DiskLruCache$a;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V

    .line 521
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 530
    :cond_2
    :goto_1
    iget p1, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v1, p1, :cond_5

    .line 531
    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache$a;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 533
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 534
    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache$a;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 535
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 19877
    iget-object p1, v0, Lcom/mopub/common/DiskLruCache$a;->b:[J

    .line 536
    aget-wide v3, p1, v1

    .line 537
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 20877
    iget-object p1, v0, Lcom/mopub/common/DiskLruCache$a;->b:[J

    .line 538
    aput-wide v5, p1, v1

    .line 539
    iget-wide v7, p0, Lcom/mopub/common/DiskLruCache;->j:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/mopub/common/DiskLruCache;->j:J

    goto :goto_2

    .line 542
    :cond_3
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :cond_5
    iget p1, p0, Lcom/mopub/common/DiskLruCache;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mopub/common/DiskLruCache;->m:I

    const/4 p1, 0x0

    .line 21877
    iput-object p1, v0, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    .line 22877
    iget-boolean p1, v0, Lcom/mopub/common/DiskLruCache$a;->c:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 23877
    iput-boolean v1, v0, Lcom/mopub/common/DiskLruCache$a;->c:Z

    .line 550
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24877
    iget-object v3, v0, Lcom/mopub/common/DiskLruCache$a;->a:Ljava/lang/String;

    .line 550
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mopub/common/DiskLruCache$a;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 552
    iget-wide p1, p0, Lcom/mopub/common/DiskLruCache;->n:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/mopub/common/DiskLruCache;->n:J

    .line 25877
    iput-wide p1, v0, Lcom/mopub/common/DiskLruCache$a;->e:J

    goto :goto_3

    .line 555
    :cond_6
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    .line 26877
    iget-object p2, v0, Lcom/mopub/common/DiskLruCache$a;->a:Ljava/lang/String;

    .line 555
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "REMOVE "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27877
    iget-object v0, v0, Lcom/mopub/common/DiskLruCache$a;->a:Ljava/lang/String;

    .line 556
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 558
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 560
    iget-wide p1, p0, Lcom/mopub/common/DiskLruCache;->j:J

    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->h:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 561
    :cond_8
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/mopub/common/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :cond_9
    monitor-exit p0

    return-void

    .line 513
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 394
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;)V

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 397
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .line 660
    sget-object v0, Lcom/mopub/common/DiskLruCache;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 250
    new-instance v1, Lcom/mopub/common/c;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/mopub/common/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/c;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 252
    :try_start_0
    invoke-virtual {v1}, Lcom/mopub/common/c;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1}, Lcom/mopub/common/c;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v1}, Lcom/mopub/common/c;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Lcom/mopub/common/c;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v1}, Lcom/mopub/common/c;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 257
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "1"

    .line 258
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/mopub/common/DiskLruCache;->g:I

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/mopub/common/DiskLruCache;->i:I

    .line 260
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, ""

    .line 261
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    const/4 v0, 0x0

    .line 269
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/mopub/common/c;->readLine()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    .line 1282
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "unexpected journal line: "

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    add-int/lit8 v7, v4, 0x1

    .line 1288
    :try_start_2
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1291
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    if-ne v4, v8, :cond_1

    const-string v8, "REMOVE"

    .line 1292
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1293
    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1297
    :cond_0
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1300
    :cond_1
    iget-object v8, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/common/DiskLruCache$a;

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 1302
    new-instance v8, Lcom/mopub/common/DiskLruCache$a;

    invoke-direct {v8, p0, v7, v9}, Lcom/mopub/common/DiskLruCache$a;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;Lcom/mopub/common/DiskLruCache$1;)V

    .line 1303
    iget-object v10, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v7, 0x5

    if-eq v3, v6, :cond_3

    if-ne v4, v7, :cond_3

    const-string v10, "CLEAN"

    .line 1306
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 1307
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1877
    iput-boolean v3, v8, Lcom/mopub/common/DiskLruCache$a;->c:Z

    .line 2877
    iput-object v9, v8, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    .line 3877
    invoke-virtual {v8, v2}, Lcom/mopub/common/DiskLruCache$a;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v3, v6, :cond_4

    if-ne v4, v7, :cond_4

    const-string v7, "DIRTY"

    .line 1311
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1312
    new-instance v2, Lcom/mopub/common/DiskLruCache$Editor;

    invoke-direct {v2, p0, v8, v9}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$a;Lcom/mopub/common/DiskLruCache$1;)V

    .line 4877
    iput-object v2, v8, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    goto :goto_1

    :cond_4
    if-ne v3, v6, :cond_5

    const/4 v3, 0x4

    if-ne v4, v3, :cond_5

    const-string v3, "READ"

    .line 1313
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1316
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1284
    :cond_6
    new-instance v3, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :catch_0
    :try_start_3
    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/common/DiskLruCache;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V

    return-void

    .line 262
    :cond_7
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 277
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V

    .line 278
    throw v0
.end method

.method static synthetic b(Lcom/mopub/common/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->g()V

    return-void
.end method

.method private c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/DiskLruCache$a;

    .line 5877
    iget-object v2, v1, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 329
    :goto_1
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v3, v2, :cond_0

    .line 330
    iget-wide v4, p0, Lcom/mopub/common/DiskLruCache;->j:J

    .line 6877
    iget-object v2, v1, Lcom/mopub/common/DiskLruCache$a;->b:[J

    .line 330
    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mopub/common/DiskLruCache;->j:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7877
    iput-object v2, v1, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    .line 334
    :goto_2
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v3, v2, :cond_2

    .line 335
    invoke-virtual {v1, v3}, Lcom/mopub/common/DiskLruCache$a;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;)V

    .line 336
    invoke-virtual {v1, v3}, Lcom/mopub/common/DiskLruCache$a;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 338
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/mopub/common/DiskLruCache;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->e()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized d()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 352
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/mopub/common/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 355
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 356
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 357
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 358
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v1, p0, Lcom/mopub/common/DiskLruCache;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 360
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v1, p0, Lcom/mopub/common/DiskLruCache;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/DiskLruCache$a;

    .line 8877
    iget-object v3, v2, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9877
    iget-object v2, v2, Lcom/mopub/common/DiskLruCache$a;->a:Ljava/lang/String;

    .line 367
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10877
    iget-object v5, v2, Lcom/mopub/common/DiskLruCache$a;->a:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mopub/common/DiskLruCache$a;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->f:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/mopub/common/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 373
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 374
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/mopub/common/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->d()V

    return-void
.end method

.method static synthetic e(Lcom/mopub/common/DiskLruCache;)I
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/mopub/common/DiskLruCache;->m:I

    return v0
.end method

.method private e()Z
    .locals 2

    .line 571
    iget v0, p0, Lcom/mopub/common/DiskLruCache;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    .line 572
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/mopub/common/DiskLruCache;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/mopub/common/DiskLruCache;->i:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic g(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache;->c:Ljava/io/File;

    return-object p0
.end method

.method private g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    :goto_0
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->j:J

    iget-wide v2, p0, Lcom/mopub/common/DiskLruCache;->h:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 644
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/mopub/common/DiskLruCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    if-lez p2, :cond_3

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 218
    invoke-static {v0, v1, v2}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 223
    :cond_1
    :goto_0
    new-instance v0, Lcom/mopub/common/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 224
    iget-object v1, v0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :try_start_0
    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache;->b()V

    .line 227
    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache;->c()V

    .line 228
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/mopub/common/DiskLruCache;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/mopub/common/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 232
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/mopub/common/DiskLruCache;->delete()V

    .line 243
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v0, Lcom/mopub/common/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 245
    invoke-direct {v0}, Lcom/mopub/common/DiskLruCache;->d()V

    return-object v0

    .line 207
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 630
    monitor-exit p0

    return-void

    .line 632
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/DiskLruCache$a;

    .line 31877
    iget-object v2, v1, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    if-eqz v2, :cond_1

    .line 32877
    iget-object v1, v1, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    .line 634
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V

    goto :goto_0

    .line 637
    :cond_2
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->g()V

    .line 638
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache;->close()V

    .line 656
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/File;)V

    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 452
    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/lang/String;J)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->f()V

    .line 623
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->g()V

    .line 624
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Snapshot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->f()V

    .line 408
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DiskLruCache$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 411
    monitor-exit p0

    return-object v1

    .line 11877
    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lcom/mopub/common/DiskLruCache$a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 415
    monitor-exit p0

    return-object v1

    .line 421
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->i:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 423
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v3, v4, :cond_2

    .line 424
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/mopub/common/DiskLruCache$a;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    :cond_2
    :try_start_4
    iget v1, p0, Lcom/mopub/common/DiskLruCache;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/common/DiskLruCache;->m:I

    .line 439
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 440
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 444
    :cond_3
    new-instance v1, Lcom/mopub/common/DiskLruCache$Snapshot;

    .line 12877
    iget-wide v6, v0, Lcom/mopub/common/DiskLruCache$a;->e:J

    .line 13877
    iget-object v9, v0, Lcom/mopub/common/DiskLruCache$a;->b:[J

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    .line 444
    invoke-direct/range {v3 .. v10}, Lcom/mopub/common/DiskLruCache$Snapshot;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/mopub/common/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 428
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v2, p1, :cond_4

    .line 429
    aget-object p1, v8, v2

    if-eqz p1, :cond_4

    .line 430
    aget-object p1, v8, v2

    invoke-static {p1}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 435
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->c:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 489
    :try_start_0
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 582
    :try_start_0
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->f()V

    .line 583
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DiskLruCache$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 28877
    iget-object v2, v0, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    if-eqz v2, :cond_0

    goto :goto_2

    .line 589
    :cond_0
    :goto_0
    iget v2, p0, Lcom/mopub/common/DiskLruCache;->i:I

    if-ge v1, v2, :cond_3

    .line 590
    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache$a;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 592
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to delete "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/mopub/common/DiskLruCache;->j:J

    .line 29877
    iget-object v4, v0, Lcom/mopub/common/DiskLruCache$a;->b:[J

    .line 594
    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/mopub/common/DiskLruCache;->j:J

    .line 30877
    iget-object v2, v0, Lcom/mopub/common/DiskLruCache$a;->b:[J

    const-wide/16 v3, 0x0

    .line 595
    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_3
    iget v0, p0, Lcom/mopub/common/DiskLruCache;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/common/DiskLruCache;->m:I

    .line 599
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCache;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 603
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/mopub/common/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :cond_4
    monitor-exit p0

    return v1

    .line 586
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 497
    :try_start_0
    iput-wide p1, p0, Lcom/mopub/common/DiskLruCache;->h:J

    .line 498
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/mopub/common/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 507
    :try_start_0
    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
