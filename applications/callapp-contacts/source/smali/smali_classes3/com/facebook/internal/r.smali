.class public final Lcom/facebook/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/r$a;,
        Lcom/facebook/internal/r$g;,
        Lcom/facebook/internal/r$b;,
        Lcom/facebook/internal/r$d;,
        Lcom/facebook/internal/r$e;,
        Lcom/facebook/internal/r$f;,
        Lcom/facebook/internal/r$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u0000 )2\u00020\u0001:\u0008\'()*+,-.B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0016\u001a\u00020\u0017J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\u0002J\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0019J\u001c\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0007J\u0008\u0010 \u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u000bH\u0002J\u0006\u0010#\u001a\u00020$J\u0008\u0010%\u001a\u00020\u0003H\u0016J\u0008\u0010&\u001a\u00020\u0017H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/facebook/internal/FileLruCache;",
        "",
        "tag",
        "",
        "limits",
        "Lcom/facebook/internal/FileLruCache$Limits;",
        "(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V",
        "condition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "directory",
        "Ljava/io/File;",
        "isTrimInProgress",
        "",
        "isTrimPending",
        "lastClearCacheTime",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "location",
        "getLocation",
        "()Ljava/lang/String;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "clearCache",
        "",
        "get",
        "Ljava/io/InputStream;",
        "key",
        "contentTag",
        "interceptAndPut",
        "input",
        "openPutStream",
        "Ljava/io/OutputStream;",
        "postTrim",
        "renameToTargetAndTrim",
        "buffer",
        "sizeInBytesForTest",
        "",
        "toString",
        "trim",
        "BufferFile",
        "CloseCallbackOutputStream",
        "Companion",
        "CopyingInputStream",
        "Limits",
        "ModifiedFile",
        "StreamCloseCallback",
        "StreamHeader",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final c:Lcom/facebook/internal/r$c;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private d:Z

.field private e:Z

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;

.field private final g:Ljava/util/concurrent/locks/Condition;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/facebook/internal/r$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/r$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/r$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/r;->c:Lcom/facebook/internal/r$c;

    .line 577
    const-class v0, Lcom/facebook/internal/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileLruCache::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    .line 580
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/internal/r;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/internal/r$d;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limits"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/r;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/r;->i:Lcom/facebook/internal/r$d;

    .line 75
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/facebook/g;->s()Ljava/io/File;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/internal/r;->a:Ljava/io/File;

    .line 78
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/r;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/r;->g:Ljava/util/concurrent/locks/Condition;

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/facebook/internal/r;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 586
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 588
    :cond_0
    sget-object p1, Lcom/facebook/internal/r$a;->a:Lcom/facebook/internal/r$a;

    invoke-static {p2}, Lcom/facebook/internal/r$a;->a(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 74
    sget-object v0, Lcom/facebook/internal/r;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final synthetic a(Lcom/facebook/internal/r;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/facebook/internal/r;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static final synthetic a(Lcom/facebook/internal/r;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 1221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/internal/r;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/internal/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1230
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1249
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/r;->f:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1250
    :try_start_0
    iget-boolean p2, p0, Lcom/facebook/internal/r;->d:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 1251
    iput-boolean p2, p0, Lcom/facebook/internal/r;->d:Z

    .line 1252
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/facebook/internal/r$j;

    invoke-direct {v0, p0}, Lcom/facebook/internal/r$j;-><init>(Lcom/facebook/internal/r;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1254
    :cond_1
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lcom/facebook/internal/r;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1258
    iget-object v0, v1, Lcom/facebook/internal/r;->f:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 1259
    :try_start_0
    iput-boolean v3, v1, Lcom/facebook/internal/r;->d:Z

    const/4 v0, 0x1

    .line 1260
    iput-boolean v0, v1, Lcom/facebook/internal/r;->e:Z

    .line 1261
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1258
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1263
    :try_start_1
    sget-object v0, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    sget-object v2, Lcom/facebook/m;->CACHE:Lcom/facebook/m;

    sget-object v4, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    const-string v5, "trim started"

    invoke-virtual {v0, v2, v4, v5}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 1267
    iget-object v2, v1, Lcom/facebook/internal/r;->a:Ljava/io/File;

    sget-object v4, Lcom/facebook/internal/r$a;->a:Lcom/facebook/internal/r$a;

    invoke-static {}, Lcom/facebook/internal/r$a;->a()Ljava/io/FilenameFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_0

    .line 1269
    array-length v6, v2

    move-wide v7, v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_1

    aget-object v10, v2, v9

    .line 1270
    new-instance v11, Lcom/facebook/internal/r$e;

    const-string v12, "file"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v10}, Lcom/facebook/internal/r$e;-><init>(Ljava/io/File;)V

    .line 1271
    invoke-virtual {v0, v11}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 1272
    sget-object v12, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    .line 1273
    sget-object v13, Lcom/facebook/m;->CACHE:Lcom/facebook/m;

    .line 1274
    sget-object v14, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    .line 1275
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "  trim considering time="

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v2

    .line 1546
    iget-wide v2, v11, Lcom/facebook/internal/r$e;->a:J

    .line 1276
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    iget-object v2, v11, Lcom/facebook/internal/r$e;->b:Ljava/io/File;

    .line 1278
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1272
    invoke-virtual {v12, v13, v14, v2}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v4, v2

    const-wide/16 v2, 0x1

    add-long/2addr v7, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move-wide v7, v4

    .line 1283
    :cond_1
    :goto_1
    iget-object v2, v1, Lcom/facebook/internal/r;->i:Lcom/facebook/internal/r$d;

    .line 3528
    iget v2, v2, Lcom/facebook/internal/r$d;->a:I

    int-to-long v2, v2

    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    .line 1283
    iget-object v2, v1, Lcom/facebook/internal/r;->i:Lcom/facebook/internal/r$d;

    .line 3535
    iget v2, v2, Lcom/facebook/internal/r$d;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v2, v2

    cmp-long v6, v7, v2

    if-lez v6, :cond_2

    goto :goto_2

    .line 1291
    :cond_2
    iget-object v0, v1, Lcom/facebook/internal/r;->f:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 1292
    :try_start_2
    iput-boolean v3, v1, Lcom/facebook/internal/r;->e:Z

    .line 1293
    iget-object v0, v1, Lcom/facebook/internal/r;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1294
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1291
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1284
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/r$e;

    .line 3545
    iget-object v2, v2, Lcom/facebook/internal/r$e;->b:Ljava/io/File;

    .line 1285
    sget-object v3, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    sget-object v6, Lcom/facebook/m;->CACHE:Lcom/facebook/m;

    sget-object v9, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  trim removing "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v9, v10}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v4, v9

    const-wide/16 v9, -0x1

    add-long/2addr v7, v9

    .line 1288
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1291
    iget-object v2, v1, Lcom/facebook/internal/r;->f:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 1292
    :try_start_4
    iput-boolean v3, v1, Lcom/facebook/internal/r;->e:Z

    .line 1293
    iget-object v1, v1, Lcom/facebook/internal/r;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1294
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1291
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_3
    move-exception v0

    .line 1258
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/internal/r;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/internal/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 115
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance v3, Ljava/io/BufferedInputStream;

    check-cast v2, Ljava/io/InputStream;

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 122
    :try_start_1
    sget-object v5, Lcom/facebook/internal/r$g;->a:Lcom/facebook/internal/r$g;

    move-object v5, v3

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lcom/facebook/internal/r$g;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_0

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    .line 123
    :cond_0
    :try_start_2
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    :cond_1
    :try_start_3
    const-string p1, "tag"

    .line 127
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    .line 131
    :cond_2
    :try_start_4
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 132
    sget-object v1, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    .line 133
    sget-object v5, Lcom/facebook/m;->CACHE:Lcom/facebook/m;

    .line 134
    sget-object v6, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Setting lastModified to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v1, v5, v6, v7}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :try_start_5
    check-cast v3, Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v3

    :catchall_0
    move-exception p1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-nez v2, :cond_3

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    throw p1

    :catch_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/facebook/internal/r$a;->a:Lcom/facebook/internal/r$a;

    iget-object v0, p0, Lcom/facebook/internal/r;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/r$a;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 151
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 157
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 164
    new-instance v8, Lcom/facebook/internal/r$i;

    move-object v1, v8

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/internal/r$i;-><init>(Lcom/facebook/internal/r;JLjava/io/File;Ljava/lang/String;)V

    .line 163
    check-cast v8, Lcom/facebook/internal/r$f;

    .line 175
    new-instance v1, Lcom/facebook/internal/r$b;

    check-cast v7, Ljava/io/OutputStream;

    invoke-direct {v1, v7, v8}, Lcom/facebook/internal/r$b;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/r$f;)V

    .line 176
    new-instance v2, Ljava/io/BufferedOutputStream;

    check-cast v1, Ljava/io/OutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v1, 0x0

    .line 180
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 181
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 182
    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "tag"

    .line 183
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_0
    sget-object p1, Lcom/facebook/internal/r$g;->a:Lcom/facebook/internal/r$g;

    move-object p1, v2

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {p1, v3}, Lcom/facebook/internal/r$g;->a(Ljava/io/OutputStream;Lorg/json/JSONObject;)V

    const/4 v1, 0x1

    .line 187
    check-cast v2, Ljava/io/OutputStream;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 190
    :try_start_2
    sget-object p2, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    sget-object v3, Lcom/facebook/m;->CACHE:Lcom/facebook/m;

    sget-object v4, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    const-string v5, "Error creating JSON header for cache file: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v0, v4, v5}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v1, :cond_1

    .line 194
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw p1

    :catch_1
    move-exception p1

    .line 159
    sget-object p2, Lcom/facebook/internal/x;->a:Lcom/facebook/internal/x$a;

    sget-object v1, Lcom/facebook/m;->CACHE:Lcom/facebook/m;

    sget-object v2, Lcom/facebook/internal/r;->j:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error creating buffer output stream: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/facebook/internal/x$a;->a(Lcom/facebook/m;ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 152
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not create file at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{FileLruCache: tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/internal/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/internal/r;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
