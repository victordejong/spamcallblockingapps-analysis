.class public Lcom/allinone/callerid/util/i0;
.super Ljava/lang/Object;
.source "MyThreadPool.java"


# static fields
.field private static volatile a:Lcom/allinone/callerid/util/i0;


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/allinone/callerid/util/i0;
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/i0;->a:Lcom/allinone/callerid/util/i0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/allinone/callerid/util/i0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/allinone/callerid/util/i0;->a:Lcom/allinone/callerid/util/i0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/allinone/callerid/util/i0;

    invoke-direct {v1}, Lcom/allinone/callerid/util/i0;-><init>()V

    sput-object v1, Lcom/allinone/callerid/util/i0;->a:Lcom/allinone/callerid/util/i0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/allinone/callerid/util/i0;->a:Lcom/allinone/callerid/util/i0;

    return-object v0
.end method
