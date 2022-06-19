.class public Lcom/callerid/block/util/c0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile b:Lcom/callerid/block/util/c0;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/callerid/block/util/c0;
    .locals 2

    sget-object v0, Lcom/callerid/block/util/c0;->b:Lcom/callerid/block/util/c0;

    if-nez v0, :cond_1

    const-class v0, Lcom/callerid/block/util/c0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callerid/block/util/c0;->b:Lcom/callerid/block/util/c0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/callerid/block/util/c0;

    invoke-direct {v1}, Lcom/callerid/block/util/c0;-><init>()V

    sput-object v1, Lcom/callerid/block/util/c0;->b:Lcom/callerid/block/util/c0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/callerid/block/util/c0;->b:Lcom/callerid/block/util/c0;

    return-object v0
.end method
