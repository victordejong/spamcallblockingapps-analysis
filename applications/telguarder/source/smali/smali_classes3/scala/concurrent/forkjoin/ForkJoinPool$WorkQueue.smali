.class final Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Lscala/concurrent/forkjoin/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field volatile currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:I

.field nextWait:I

.field nsteals:I

.field final owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Lscala/concurrent/forkjoin/ForkJoinPool;

.field poolIndex:I

.field volatile qlock:I

.field seed:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1381
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->access$000()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1382
    const-class v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 1383
    const-class v2, [Lscala/concurrent/forkjoin/ForkJoinTask;

    const-string v3, "qlock"

    .line 1384
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1386
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1387
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 1390
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    return-void

    .line 1389
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1392
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lscala/concurrent/forkjoin/ForkJoinPool;Lscala/concurrent/forkjoin/ForkJoinWorkerThread;II)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 1026
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .line 1027
    iput p3, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    .line 1028
    iput p4, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    const/16 p1, 0x1000

    .line 1030
    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    return-void
.end method

.method private pollAndExecAll()V
    .locals 1

    .line 1252
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private popAndExecAll()V
    .locals 8

    .line 1240
    :cond_0
    :goto_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v6, v2, -0x1

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v6, v2

    if-ltz v2, :cond_1

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    and-int/2addr v0, v6

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v3

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    move-object v0, v2

    move-wide v2, v3

    move-object v4, v7

    .line 1241
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iput v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1243
    invoke-virtual {v7}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 1

    .line 1208
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 1209
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 1210
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1085
    iget-object v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v6, :cond_0

    .line 1086
    array-length v0, v6

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2000

    :goto_0
    const/high16 v1, 0x4000000

    if-gt v0, v1, :cond_4

    .line 1090
    new-array v7, v0, [Lscala/concurrent/forkjoin/ForkJoinTask;

    iput-object v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v6, :cond_3

    .line 1091
    array-length v1, v6

    add-int/lit8 v8, v1, -0x1

    if-ltz v8, :cond_3

    iget v9, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v9, v1

    if-lez v2, :cond_3

    add-int/lit8 v10, v0, -0x1

    move v11, v1

    :cond_1
    and-int v0, v11, v8

    .line 1096
    sget v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v2

    and-int v3, v11, v10

    shl-int v1, v3, v1

    add-int v12, v1, v2

    .line 1098
    sget-object v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v13, v6, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v14, :cond_2

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v6

    move-object v4, v14

    .line 1099
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-long v0, v12

    .line 1101
    invoke-virtual {v13, v7, v0, v1, v14}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_1

    :cond_3
    return-object v7

    .line 1088
    :cond_4
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Queue capacity exceeded"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final isApparentlyUnblocked()Z
    .locals 2

    .line 1367
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEmpty()Z
    .locals 9

    .line 1048
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-gez v0, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1049
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v0, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    if-ltz v3, :cond_1

    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sub-int/2addr v1, v2

    and-int/2addr v1, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v3

    int-to-long v5, v1

    sget v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method final nextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1174
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pop()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final nextSeed()I
    .locals 2

    .line 1222
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 1225
    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    return v0
.end method

.method final peek()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v0, :cond_2

    .line 1182
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    goto :goto_1

    .line 1184
    :cond_0
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    if-nez v2, :cond_1

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    :goto_0
    and-int/2addr v1, v2

    .line 1185
    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v1, v2

    .line 1186
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinTask;

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final poll()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1151
    :cond_0
    :goto_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v0, v1

    if-gez v1, :cond_3

    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v3, :cond_3

    .line 1152
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v1, v2

    .line 1153
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_1

    .line 1155
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v6, v0, :cond_0

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1157
    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    return-object v1

    .line 1161
    :cond_1
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1162
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1164
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final pollAndExecCC(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1310
    :cond_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v0, v1

    if-gez v1, :cond_4

    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v3, :cond_4

    .line 1311
    array-length v1, v3

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int/2addr v1, v0

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v1, v2

    int-to-long v4, v1

    .line 1312
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1315
    :cond_1
    check-cast v1, Lscala/concurrent/forkjoin/CountedCompleter;

    move-object v2, v1

    :cond_2
    if-ne v2, p1, :cond_3

    .line 1317
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v2, v0, :cond_0

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v0, v8

    .line 1319
    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 1320
    invoke-virtual {v1}, Lscala/concurrent/forkjoin/CountedCompleter;->doExec()I

    return v8

    .line 1326
    :cond_3
    iget-object v2, v2, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v2, :cond_2

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method final pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1134
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_0

    .line 1135
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v2

    .line 1136
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v6, :cond_0

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, p1, :cond_0

    const/4 v5, 0x0

    move-object v0, v2

    move-wide v2, v3

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1139
    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    return-object v6

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final pop()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1113
    iget-object v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v6, :cond_2

    array-length v0, v6

    add-int/lit8 v7, v0, -0x1

    if-ltz v7, :cond_2

    .line 1114
    :cond_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v8, v0, -0x1

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v8, v0

    if-ltz v0, :cond_2

    and-int v0, v7, v8

    .line 1115
    sget v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 1116
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v1, v6

    move-object v4, v9

    .line 1118
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iput v8, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    return-object v9

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final push(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1066
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1067
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_1

    .line 1068
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int v3, v2, v0

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v3, v4

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v3, v4

    .line 1069
    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v5, v3

    invoke-virtual {v4, v1, v5, v6, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    .line 1070
    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v0, p1

    const/4 p1, 0x2

    if-gt v0, p1, :cond_0

    .line 1071
    iget-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz p1, :cond_1

    .line 1072
    invoke-virtual {p1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    .line 1075
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;

    :cond_1
    :goto_0
    return-void
.end method

.method final queueSize()I
    .locals 2

    .line 1037
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method

.method final runSubtask(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1356
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1357
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    .line 1358
    iput-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    :cond_0
    return-void
.end method

.method final runTask(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1339
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    const/4 p1, 0x0

    .line 1340
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1341
    iget p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1342
    iget p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr p1, v0

    if-gez p1, :cond_1

    .line 1343
    iget p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    if-nez p1, :cond_0

    .line 1344
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->popAndExecAll()V

    goto :goto_0

    .line 1346
    :cond_0
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    :cond_1
    :goto_0
    return-void
.end method

.method final tryRemoveAndExec(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1266
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    array-length v0, v1

    sub-int/2addr v0, v7

    if-ltz v0, :cond_7

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v4, v2, v3

    if-lez v4, :cond_7

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v8, v2, -0x1

    and-int v2, v8, v0

    .line 1269
    sget v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v9

    sget v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v9

    .line 1270
    sget-object v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v10, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-nez v12, :cond_0

    goto :goto_2

    :cond_0
    if-ne v12, p1, :cond_3

    add-int/lit8 v0, v8, 0x1

    .line 1274
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_2

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v2, v10

    move-object v4, p1

    .line 1275
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1277
    :cond_1
    iput v8, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    const/4 v6, 0x1

    goto :goto_2

    .line 1280
    :cond_2
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v3, :cond_7

    .line 1281
    new-instance v5, Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;-><init>()V

    move-object v0, v9

    move-wide v2, v10

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 1285
    :cond_3
    iget v2, v12, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v8, 0x1

    .line 1287
    iget v13, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v2, v13, :cond_5

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v2, v10

    move-object v4, v12

    .line 1288
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1289
    iput v8, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_6

    if-nez v5, :cond_7

    .line 1293
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v3, :cond_7

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    move v2, v8

    goto :goto_0

    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    .line 1300
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    :cond_8
    return v7
.end method

.method final tryUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1195
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_0

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-eq v0, v2, :cond_0

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    array-length v3, v1

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    add-int/lit8 v7, v0, -0x1

    and-int v0, v3, v7

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v3

    int-to-long v3, v0

    const/4 v5, 0x0

    move-object v0, v2

    move-wide v2, v3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1198
    iput v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    return v6

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
