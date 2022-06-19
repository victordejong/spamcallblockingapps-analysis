.class Le/e/a/p$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Le/e/a/p$b;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Le/e/a/p$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    const-string v2, "LauncherTask"

    invoke-static {v1, v0, v2}, Le/e/a/h0/b;->b(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Le/e/a/p$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public a(Le/e/a/w$b;)V
    .locals 2

    iget-object v0, p0, Le/e/a/p$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Le/e/a/p$c;

    invoke-direct {v1, p1}, Le/e/a/p$c;-><init>(Le/e/a/w$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
