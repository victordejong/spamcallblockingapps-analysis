.class public final Lcom/facebook/biddingkit/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Landroid/content/Context; = null

.field private static volatile b:Ljava/lang/String; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 88
    sget-object v0, Lcom/facebook/biddingkit/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/biddingkit/b/a;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 42
    invoke-static {p0, v1}, Lcom/facebook/biddingkit/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/biddingkit/b/a;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-boolean v1, Lcom/facebook/biddingkit/b/a;->c:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/biddingkit/b/a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    .line 63
    sput-boolean v1, Lcom/facebook/biddingkit/b/a;->c:Z

    .line 64
    sput-object p1, Lcom/facebook/biddingkit/b/a;->b:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/facebook/biddingkit/e/a;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/biddingkit/b/a$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/biddingkit/b/a$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/facebook/biddingkit/b/a;->b:Ljava/lang/String;

    return-object v0
.end method
