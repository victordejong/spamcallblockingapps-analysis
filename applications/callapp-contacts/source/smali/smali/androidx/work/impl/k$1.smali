.class final Landroidx/work/impl/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/utils/a/c;

.field final synthetic b:Landroidx/work/impl/k;


# direct methods
.method constructor <init>(Landroidx/work/impl/k;Landroidx/work/impl/utils/a/c;)V
    .locals 0

    .line 277
    iput-object p1, p0, Landroidx/work/impl/k$1;->b:Landroidx/work/impl/k;

    iput-object p2, p0, Landroidx/work/impl/k$1;->a:Landroidx/work/impl/utils/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 281
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v0, Landroidx/work/impl/k;->a:Ljava/lang/String;

    const-string v0, "Starting work for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/work/impl/k$1;->b:Landroidx/work/impl/k;

    iget-object v3, v3, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Landroidx/work/impl/k$1;->b:Landroidx/work/impl/k;

    iget-object v1, v0, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/a;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/k;->g:Lcom/google/common/util/concurrent/a;

    .line 284
    iget-object v0, p0, Landroidx/work/impl/k$1;->a:Landroidx/work/impl/utils/a/c;

    iget-object v1, p0, Landroidx/work/impl/k$1;->b:Landroidx/work/impl/k;

    iget-object v1, v1, Landroidx/work/impl/k;->g:Lcom/google/common/util/concurrent/a;

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Lcom/google/common/util/concurrent/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 286
    iget-object v1, p0, Landroidx/work/impl/k$1;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
