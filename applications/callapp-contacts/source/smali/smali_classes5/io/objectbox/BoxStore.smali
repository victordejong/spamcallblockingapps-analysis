.class public Lio/objectbox/BoxStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static q:Ljava/lang/Object;

.field private static r:Ljava/lang/Object;

.field private static final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile t:Ljava/lang/Thread;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J

.field final c:Lorg/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/a/a/b<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final d:[I

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/objectbox/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/objectbox/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/ExecutorService;

.field public final h:Lio/objectbox/f;

.field final i:Z

.field final j:Z

.field public final k:Z

.field final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/objectbox/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z

.field final n:Ljava/lang/Object;

.field volatile o:I

.field public final p:I

.field private final u:Ljava/lang/String;

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/objectbox/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private y:I

.field private final z:Lio/objectbox/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lio/objectbox/b;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->v:Ljava/util/Map;

    .line 220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->w:Ljava/util/Map;

    .line 221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->x:Ljava/util/Map;

    .line 222
    new-instance v2, Lorg/a/a/a/b;

    invoke-direct {v2}, Lorg/a/a/a/b;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->c:Lorg/a/a/a/b;

    .line 224
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    .line 225
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    .line 226
    new-instance v2, Lio/objectbox/b/e;

    invoke-direct {v2, v1}, Lio/objectbox/b/e;-><init>(Lio/objectbox/BoxStore;)V

    iput-object v2, v1, Lio/objectbox/BoxStore;->g:Ljava/util/concurrent/ExecutorService;

    .line 233
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    .line 237
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lio/objectbox/BoxStore;->n:Ljava/lang/Object;

    .line 255
    iget-object v2, v0, Lio/objectbox/b;->f:Ljava/lang/Object;

    sput-object v2, Lio/objectbox/BoxStore;->q:Ljava/lang/Object;

    .line 256
    iget-object v2, v0, Lio/objectbox/b;->g:Ljava/lang/Object;

    sput-object v2, Lio/objectbox/BoxStore;->r:Ljava/lang/Object;

    .line 257
    invoke-static {}, Lio/objectbox/b/d;->a()V

    .line 259
    iget-object v2, v0, Lio/objectbox/b;->b:Ljava/io/File;

    iput-object v2, v1, Lio/objectbox/BoxStore;->a:Ljava/io/File;

    .line 260
    invoke-static {v2}, Lio/objectbox/BoxStore;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/objectbox/BoxStore;->u:Ljava/lang/String;

    .line 1329
    sget-object v3, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    monitor-enter v3

    .line 1330
    :try_start_0
    invoke-static {v2}, Lio/objectbox/BoxStore;->a(Ljava/lang/String;)Z

    .line 1331
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1335
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    :try_start_1
    new-instance v3, Lcom/google/flatbuffers/d;

    invoke-direct {v3}, Lcom/google/flatbuffers/d;-><init>()V

    const/4 v4, 0x1

    .line 1964
    iput-boolean v4, v3, Lcom/google/flatbuffers/d;->l:Z

    .line 1462
    invoke-virtual {v3, v2}, Lcom/google/flatbuffers/d;->a(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1464
    invoke-static {v3}, Lio/objectbox/model/FlatStoreOptions;->startFlatStoreOptions(Lcom/google/flatbuffers/d;)V

    .line 1467
    invoke-static {v3, v2}, Lio/objectbox/model/FlatStoreOptions;->addDirectoryPath(Lcom/google/flatbuffers/d;I)V

    .line 1468
    iget-wide v5, v0, Lio/objectbox/b;->e:J

    invoke-static {v3, v5, v6}, Lio/objectbox/model/FlatStoreOptions;->addMaxDbSizeInKByte(Lcom/google/flatbuffers/d;J)V

    .line 1469
    iget v2, v0, Lio/objectbox/b;->k:I

    int-to-long v5, v2

    invoke-static {v3, v5, v6}, Lio/objectbox/model/FlatStoreOptions;->addFileMode(Lcom/google/flatbuffers/d;J)V

    .line 1470
    iget v2, v0, Lio/objectbox/b;->l:I

    int-to-long v5, v2

    invoke-static {v3, v5, v6}, Lio/objectbox/model/FlatStoreOptions;->addMaxReaders(Lcom/google/flatbuffers/d;J)V

    .line 1471
    iget-short v2, v0, Lio/objectbox/b;->q:S

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_0

    .line 1472
    iget-short v2, v0, Lio/objectbox/b;->q:S

    invoke-static {v3, v2}, Lio/objectbox/model/FlatStoreOptions;->addValidateOnOpen(Lcom/google/flatbuffers/d;I)V

    .line 1473
    iget-wide v7, v0, Lio/objectbox/b;->r:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_0

    .line 1474
    iget-wide v7, v0, Lio/objectbox/b;->r:J

    invoke-static {v3, v7, v8}, Lio/objectbox/model/FlatStoreOptions;->addValidateOnOpenPageLimit(Lcom/google/flatbuffers/d;J)V

    .line 1477
    :cond_0
    iget-boolean v2, v0, Lio/objectbox/b;->n:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lio/objectbox/b;->n:Z

    invoke-static {v3, v2}, Lio/objectbox/model/FlatStoreOptions;->addSkipReadSchema(Lcom/google/flatbuffers/d;Z)V

    .line 1478
    :cond_1
    iget-boolean v2, v0, Lio/objectbox/b;->p:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lio/objectbox/b;->p:Z

    invoke-static {v3, v2}, Lio/objectbox/model/FlatStoreOptions;->addUsePreviousCommit(Lcom/google/flatbuffers/d;Z)V

    .line 1479
    :cond_2
    iget-boolean v2, v0, Lio/objectbox/b;->o:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lio/objectbox/b;->o:Z

    invoke-static {v3, v2}, Lio/objectbox/model/FlatStoreOptions;->addReadOnly(Lcom/google/flatbuffers/d;Z)V

    .line 1480
    :cond_3
    iget v2, v0, Lio/objectbox/b;->h:I

    if-eqz v2, :cond_4

    .line 1481
    iget v2, v0, Lio/objectbox/b;->h:I

    int-to-long v7, v2

    invoke-static {v3, v7, v8}, Lio/objectbox/model/FlatStoreOptions;->addDebugFlags(Lcom/google/flatbuffers/d;J)V

    .line 1484
    :cond_4
    invoke-static {v3}, Lio/objectbox/model/FlatStoreOptions;->endFlatStoreOptions(Lcom/google/flatbuffers/d;)I

    move-result v2

    .line 1485
    invoke-virtual {v3, v2}, Lcom/google/flatbuffers/d;->e(I)V

    .line 1486
    invoke-virtual {v3}, Lcom/google/flatbuffers/d;->d()[B

    move-result-object v2

    .line 264
    iget-object v3, v0, Lio/objectbox/b;->a:[B

    invoke-static {v2, v3}, Lio/objectbox/BoxStore;->nativeCreateWithFlatOptions([B[B)J

    move-result-wide v2

    iput-wide v2, v1, Lio/objectbox/BoxStore;->b:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_d

    .line 267
    iget v2, v0, Lio/objectbox/b;->h:I

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 269
    :goto_0
    iput-boolean v5, v1, Lio/objectbox/BoxStore;->i:Z

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 270
    :goto_1
    iput-boolean v2, v1, Lio/objectbox/BoxStore;->j:Z

    goto :goto_2

    .line 272
    :cond_7
    iput-boolean v3, v1, Lio/objectbox/BoxStore;->j:Z

    iput-boolean v3, v1, Lio/objectbox/BoxStore;->i:Z

    .line 274
    :goto_2
    iget-boolean v2, v0, Lio/objectbox/b;->j:Z

    iput-boolean v2, v1, Lio/objectbox/BoxStore;->k:Z

    .line 276
    iget-object v2, v0, Lio/objectbox/b;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/objectbox/c;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :try_start_2
    iget-object v6, v1, Lio/objectbox/BoxStore;->v:Ljava/util/Map;

    invoke-interface {v5}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v5}, Lio/objectbox/c;->getDbName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-wide v6, v1, Lio/objectbox/BoxStore;->b:J

    invoke-interface {v5}, Lio/objectbox/c;->getDbName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lio/objectbox/BoxStore;->nativeRegisterEntityClass(JLjava/lang/String;Ljava/lang/Class;)I

    move-result v6

    .line 280
    iget-object v7, v1, Lio/objectbox/BoxStore;->w:Ljava/util/Map;

    invoke-interface {v5}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v7, v1, Lio/objectbox/BoxStore;->c:Lorg/a/a/a/b;

    int-to-long v8, v6

    invoke-interface {v5}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/a/a/a/b;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v7, v1, Lio/objectbox/BoxStore;->x:Ljava/util/Map;

    invoke-interface {v5}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {v5}, Lio/objectbox/c;->getAllProperties()[Lio/objectbox/g;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 284
    iget-object v11, v10, Lio/objectbox/g;->j:Ljava/lang/Class;

    if-eqz v11, :cond_a

    .line 285
    iget-object v11, v10, Lio/objectbox/g;->i:Ljava/lang/Class;

    if-eqz v11, :cond_9

    .line 288
    iget-wide v11, v1, Lio/objectbox/BoxStore;->b:J

    const/4 v13, 0x0

    iget-object v14, v10, Lio/objectbox/g;->h:Ljava/lang/String;

    iget-object v15, v10, Lio/objectbox/g;->i:Ljava/lang/Class;

    iget-object v10, v10, Lio/objectbox/g;->j:Ljava/lang/Class;

    move-object/from16 v16, v10

    move-wide v10, v11

    move v12, v6

    invoke-static/range {v10 .. v16}, Lio/objectbox/BoxStore;->nativeRegisterCustomType(JIILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_4

    .line 286
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No converter class for custom type of "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 293
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not setup up entity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 296
    :cond_b
    iget-object v2, v1, Lio/objectbox/BoxStore;->c:Lorg/a/a/a/b;

    .line 2170
    iget v2, v2, Lorg/a/a/a/b;->c:I

    .line 297
    new-array v5, v2, [I

    iput-object v5, v1, Lio/objectbox/BoxStore;->d:[I

    .line 298
    iget-object v5, v1, Lio/objectbox/BoxStore;->c:Lorg/a/a/a/b;

    invoke-virtual {v5}, Lorg/a/a/a/b;->a()[J

    move-result-object v5

    :goto_5
    if-ge v3, v2, :cond_c

    .line 300
    iget-object v6, v1, Lio/objectbox/BoxStore;->d:[I

    aget-wide v7, v5, v3

    long-to-int v8, v7

    aput v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 303
    :cond_c
    new-instance v2, Lio/objectbox/f;

    invoke-direct {v2, v1}, Lio/objectbox/f;-><init>(Lio/objectbox/BoxStore;)V

    iput-object v2, v1, Lio/objectbox/BoxStore;->h:Lio/objectbox/f;

    .line 305
    iget-object v2, v0, Lio/objectbox/b;->s:Lio/objectbox/h;

    iput-object v2, v1, Lio/objectbox/BoxStore;->z:Lio/objectbox/h;

    .line 306
    iget v0, v0, Lio/objectbox/b;->m:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lio/objectbox/BoxStore;->p:I

    return-void

    .line 265
    :cond_d
    new-instance v0, Lio/objectbox/exception/DbException;

    const-string v2, "Could not create native store"

    invoke-direct {v0, v2}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 308
    invoke-virtual/range {p0 .. p0}, Lio/objectbox/BoxStore;->close()V

    .line 309
    throw v0

    .line 1332
    :cond_e
    :try_start_4
    new-instance v0, Lio/objectbox/exception/DbException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Another BoxStore is still open for this directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Hint: for most apps it\'s recommended to keep a BoxStore for the app\'s life time."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 1335
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static declared-synchronized a()Ljava/lang/Object;
    .locals 2

    const-class v0, Lio/objectbox/BoxStore;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lio/objectbox/BoxStore;->q:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Transaction;

    const-string v1, "Callable threw exception"

    if-nez v0, :cond_2

    .line 894
    invoke-virtual {p0}, Lio/objectbox/BoxStore;->e()Lio/objectbox/Transaction;

    move-result-object v0

    .line 895
    iget-object v2, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 897
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    iget-object v1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 907
    iget-object v1, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/objectbox/a;

    .line 908
    invoke-virtual {v2, v0}, Lio/objectbox/a;->a(Lio/objectbox/Transaction;)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 901
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 899
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    :goto_1
    iget-object v1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 907
    iget-object v1, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/objectbox/a;

    .line 908
    invoke-virtual {v2, v0}, Lio/objectbox/a;->a(Lio/objectbox/Transaction;)V

    goto :goto_2

    .line 911
    :cond_1
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    .line 912
    throw p1

    .line 915
    :cond_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 917
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 314
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Lio/objectbox/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is not a directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 324
    new-instance v0, Lio/objectbox/exception/DbException;

    const-string v1, "Could not verify dir"

    invoke-direct {v0, v1, p0}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 319
    :cond_2
    new-instance v0, Lio/objectbox/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .line 340
    sget-object v0, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    monitor-enter v0

    .line 341
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 342
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    sget-object v0, Lio/objectbox/BoxStore;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    invoke-static {p0, v2}, Lio/objectbox/BoxStore;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 346
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/objectbox/-$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ;

    invoke-direct {v1, p0}, Lio/objectbox/-$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 352
    sput-object v0, Lio/objectbox/BoxStore;->t:Ljava/lang/Thread;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0x1f4

    .line 355
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 363
    :goto_1
    sget-object v1, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    monitor-enter v1

    .line 364
    :try_start_2
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 365
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 342
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 5

    .line 369
    sget-object v0, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 371
    :try_start_0
    sget-object v2, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 373
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-le v1, v3, :cond_0

    .line 374
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    if-eqz p1, :cond_1

    if-le v1, v3, :cond_1

    .line 376
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-wide/16 v3, 0x64

    .line 378
    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 383
    :cond_2
    :try_start_2
    sget-object p1, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 384
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b()Ljava/lang/Object;
    .locals 2

    const-class v0, Lio/objectbox/BoxStore;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lio/objectbox/BoxStore;->r:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static synthetic b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 347
    invoke-static {p0, v0}, Lio/objectbox/BoxStore;->a(Ljava/lang/String;Z)Z

    const/4 p0, 0x0

    .line 348
    sput-object p0, Lio/objectbox/BoxStore;->t:Ljava/lang/Thread;

    return-void
.end method

.method public static b(Ljava/io/File;)Z
    .locals 6

    .line 645
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 648
    :cond_0
    invoke-static {p0}, Lio/objectbox/BoxStore;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/objectbox/BoxStore;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 652
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 656
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 657
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 659
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 664
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 649
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot delete files: store is still open"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f()V
    .locals 2

    .line 443
    iget-boolean v0, p0, Lio/objectbox/BoxStore;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()V
    .locals 6

    .line 599
    :try_start_0
    iget-object v0, p0, Lio/objectbox/BoxStore;->g:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v0

    .line 601
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Thread pool not terminated in time; printing stack traces..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    .line 602
    new-array v0, v0, [Ljava/lang/Thread;

    .line 603
    invoke-static {v0}, Ljava/lang/Thread;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 605
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Thread: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private declared-synchronized h()Z
    .locals 2

    monitor-enter p0

    .line 1115
    :try_start_0
    iget v0, p0, Lio/objectbox/BoxStore;->y:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1118
    iput v0, p0, Lio/objectbox/BoxStore;->y:I

    .line 1119
    iget-wide v0, p0, Lio/objectbox/BoxStore;->b:J

    invoke-direct {p0, v0, v1}, Lio/objectbox/BoxStore;->nativeStopObjectBrowser(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1116
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ObjectBrowser has not been started before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic lambda$7jHv0ehVygQknE54YZmDZX0D2RQ(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lio/objectbox/BoxStore;->b(Ljava/lang/String;)V

    return-void
.end method

.method static native nativeBeginReadTx(J)J
.end method

.method static native nativeBeginTx(J)J
.end method

.method static native nativeCleanStaleReadTransactions(J)I
.end method

.method static native nativeCreateWithFlatOptions([B[B)J
.end method

.method static native nativeDelete(J)V
.end method

.method public static native nativeDiagnose(J)Ljava/lang/String;
.end method

.method static native nativeRegisterCustomType(JIILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/objectbox/converter/PropertyConverter;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method static native nativeRegisterEntityClass(JLjava/lang/String;Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation
.end method

.method public static native nativeSetDbExceptionListener(JLio/objectbox/exception/DbExceptionListener;)V
.end method

.method private native nativeStopObjectBrowser(J)Z
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 843
    invoke-direct {p0, p1}, Lio/objectbox/BoxStore;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p2, :cond_3

    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    :goto_0
    if-gt v0, p2, :cond_2

    .line 851
    :try_start_0
    invoke-direct {p0, p1}, Lio/objectbox/BoxStore;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lio/objectbox/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    .line 5007
    iget-wide v4, p0, Lio/objectbox/BoxStore;->b:J

    invoke-static {v4, v5}, Lio/objectbox/BoxStore;->nativeDiagnose(J)Ljava/lang/String;

    move-result-object v4

    .line 856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " attempts of calling a read TX failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 858
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v3}, Lio/objectbox/exception/DbException;->printStackTrace()V

    .line 860
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 861
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    .line 863
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 864
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 5029
    iget-wide v6, p0, Lio/objectbox/BoxStore;->b:J

    invoke-static {v6, v7}, Lio/objectbox/BoxStore;->nativeCleanStaleReadTransactions(J)I

    .line 867
    iget-object v6, p0, Lio/objectbox/BoxStore;->z:Lio/objectbox/h;

    if-eqz v6, :cond_1

    .line 868
    iget-object v6, p0, Lio/objectbox/BoxStore;->z:Lio/objectbox/h;

    new-instance v7, Lio/objectbox/exception/DbException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v3}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v6, v7}, Lio/objectbox/h;->a(Ljava/lang/Throwable;)V

    .line 871
    :cond_1
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v4, 0x2

    mul-long v1, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 873
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 874
    throw v3

    .line 879
    :cond_2
    throw v3

    .line 845
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Illegal value of attempts: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lio/objectbox/BoxStore;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 785
    iget-object v0, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Transaction;

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lio/objectbox/BoxStore;->d()Lio/objectbox/Transaction;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 791
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 792
    invoke-virtual {v0}, Lio/objectbox/Transaction;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    iget-object p1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 795
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 794
    iget-object v1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 795
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    .line 796
    throw p1

    .line 4210
    :cond_0
    iget-boolean v0, v0, Lio/objectbox/Transaction;->d:Z

    if-nez v0, :cond_1

    .line 801
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 799
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot start a transaction while a read only transaction is active"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a([I)V
    .locals 5

    .line 736
    iget-object v0, p0, Lio/objectbox/BoxStore;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    iget v1, p0, Lio/objectbox/BoxStore;->o:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/objectbox/BoxStore;->o:I

    .line 738
    iget-boolean v1, p0, Lio/objectbox/BoxStore;->j:Z

    if-eqz v1, :cond_1

    .line 739
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TX committed. New commit count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lio/objectbox/BoxStore;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", entity types affected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 742
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 744
    iget-object v0, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/objectbox/a;

    .line 3168
    iget-object v3, v1, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/objectbox/Cursor;

    if-eqz v3, :cond_2

    .line 3170
    iget-object v1, v1, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 3171
    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 749
    iget-object v0, p0, Lio/objectbox/BoxStore;->h:Lio/objectbox/f;

    .line 4106
    iget-object v1, v0, Lio/objectbox/f;->c:Ljava/util/Deque;

    monitor-enter v1

    .line 4107
    :try_start_1
    iget-object v3, v0, Lio/objectbox/f;->c:Ljava/util/Deque;

    invoke-interface {v3, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 4109
    iget-boolean p1, v0, Lio/objectbox/f;->d:Z

    if-nez p1, :cond_4

    .line 4110
    iput-boolean v2, v0, Lio/objectbox/f;->d:Z

    .line 4111
    iget-object p1, v0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    invoke-virtual {p1, v0}, Lio/objectbox/BoxStore;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 4113
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 742
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final b(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lio/objectbox/BoxStore;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 460
    :cond_0
    new-instance v0, Lio/objectbox/exception/DbSchemaException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No entity registered for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/objectbox/exception/DbSchemaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 3

    .line 812
    iget-object v0, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Transaction;

    if-nez v0, :cond_2

    .line 815
    invoke-virtual {p0}, Lio/objectbox/BoxStore;->e()Lio/objectbox/Transaction;

    move-result-object v0

    .line 816
    iget-object v1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 818
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    iget-object p1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 824
    iget-object p1, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/objectbox/a;

    .line 825
    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Lio/objectbox/Transaction;)V

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 820
    iget-object v1, p0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 824
    iget-object v1, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/objectbox/a;

    .line 825
    invoke-virtual {v2, v0}, Lio/objectbox/a;->a(Lio/objectbox/Transaction;)V

    goto :goto_1

    .line 828
    :cond_1
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    .line 829
    throw p1

    .line 831
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method final c(Ljava/lang/Class;)Lio/objectbox/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/objectbox/c<",
            "TT;>;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lio/objectbox/BoxStore;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/objectbox/c;

    return-object p1
.end method

.method public final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lio/objectbox/BoxStore;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1158
    iget-object v0, p0, Lio/objectbox/BoxStore;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 6

    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    iget-boolean v0, p0, Lio/objectbox/BoxStore;->m:Z

    if-nez v0, :cond_3

    .line 562
    iget v1, p0, Lio/objectbox/BoxStore;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    .line 564
    :try_start_1
    invoke-direct {p0}, Lio/objectbox/BoxStore;->h()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 566
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 571
    iput-boolean v1, p0, Lio/objectbox/BoxStore;->m:Z

    .line 573
    iget-object v1, p0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 574
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 575
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 576
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/objectbox/Transaction;

    .line 577
    invoke-virtual {v2}, Lio/objectbox/Transaction;->close()V

    goto :goto_1

    .line 579
    :cond_1
    iget-wide v1, p0, Lio/objectbox/BoxStore;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 580
    invoke-static {v1, v2}, Lio/objectbox/BoxStore;->nativeDelete(J)V

    .line 584
    :cond_2
    iget-object v1, p0, Lio/objectbox/BoxStore;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 585
    invoke-direct {p0}, Lio/objectbox/BoxStore;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 575
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 587
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v0, :cond_4

    .line 589
    sget-object v0, Lio/objectbox/BoxStore;->s:Ljava/util/Set;

    monitor-enter v0

    .line 590
    :try_start_7
    iget-object v1, p0, Lio/objectbox/BoxStore;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 592
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    :cond_4
    return-void

    :catchall_3
    move-exception v0

    .line 587
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public final d()Lio/objectbox/Transaction;
    .locals 6

    .line 494
    invoke-direct {p0}, Lio/objectbox/BoxStore;->f()V

    .line 496
    iget v0, p0, Lio/objectbox/BoxStore;->o:I

    .line 497
    iget-boolean v1, p0, Lio/objectbox/BoxStore;->j:Z

    if-eqz v1, :cond_0

    .line 498
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Begin TX with commit count "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-wide v1, p0, Lio/objectbox/BoxStore;->b:J

    invoke-static {v1, v2}, Lio/objectbox/BoxStore;->nativeBeginTx(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 503
    new-instance v3, Lio/objectbox/Transaction;

    invoke-direct {v3, p0, v1, v2, v0}, Lio/objectbox/Transaction;-><init>(Lio/objectbox/BoxStore;JI)V

    .line 504
    iget-object v0, p0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 501
    :cond_1
    new-instance v0, Lio/objectbox/exception/DbException;

    const-string v1, "Could not create native transaction"

    invoke-direct {v0, v1}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/Class;)Lio/objectbox/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/objectbox/a<",
            "TT;>;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/a;

    if-nez v0, :cond_2

    .line 762
    iget-object v0, p0, Lio/objectbox/BoxStore;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    monitor-enter v0

    .line 768
    :try_start_0
    iget-object v1, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/objectbox/a;

    if-nez v1, :cond_0

    .line 770
    new-instance v1, Lio/objectbox/a;

    invoke-direct {v1, p0, p1}, Lio/objectbox/a;-><init>(Lio/objectbox/BoxStore;Ljava/lang/Class;)V

    .line 771
    iget-object v2, p0, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 763
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a known entity. Please add it and trigger generation again."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final e()Lio/objectbox/Transaction;
    .locals 6

    .line 516
    invoke-direct {p0}, Lio/objectbox/BoxStore;->f()V

    .line 522
    iget v0, p0, Lio/objectbox/BoxStore;->o:I

    .line 523
    iget-boolean v1, p0, Lio/objectbox/BoxStore;->i:Z

    if-eqz v1, :cond_0

    .line 524
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Begin read TX with commit count "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-wide v1, p0, Lio/objectbox/BoxStore;->b:J

    invoke-static {v1, v2}, Lio/objectbox/BoxStore;->nativeBeginReadTx(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 529
    new-instance v3, Lio/objectbox/Transaction;

    invoke-direct {v3, p0, v1, v2, v0}, Lio/objectbox/Transaction;-><init>(Lio/objectbox/BoxStore;JI)V

    .line 530
    iget-object v0, p0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 527
    :cond_1
    new-instance v0, Lio/objectbox/exception/DbException;

    const-string v1, "Could not create native read transaction"

    invoke-direct {v0, v1}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lio/objectbox/BoxStore;->close()V

    .line 439
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
