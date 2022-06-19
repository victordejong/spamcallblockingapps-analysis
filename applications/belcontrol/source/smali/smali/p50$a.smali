.class public Lp50$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp50;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu70;

.field public final synthetic b:Lp50;


# direct methods
.method public constructor <init>(Lp50;Lu70;)V
    .locals 0

    iput-object p1, p0, Lp50$a;->b:Lp50;

    iput-object p2, p0, Lp50$a;->a:Lu70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    sget-object v1, Lp50;->u:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lp50$a;->b:Lp50;

    iget-object v4, v4, Lp50;->f:Lc70;

    iget-object v4, v4, Lc70;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Lp50$a;->b:Lp50;

    iget-object v1, v0, Lp50;->g:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, v0, Lp50;->s:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lp50$a;->a:Lu70;

    iget-object v1, p0, Lp50$a;->b:Lp50;

    iget-object v1, v1, Lp50;->s:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lu70;->q(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lp50$a;->a:Lu70;

    invoke-virtual {v1, v0}, Lu70;->p(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
