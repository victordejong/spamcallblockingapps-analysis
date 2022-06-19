.class public Lp1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp1/k;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Lz1/c;

.field public final synthetic c:Lp1/k;


# direct methods
.method public constructor <init>(Lp1/k;Lcom/google/common/util/concurrent/ListenableFuture;Lz1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp1/k$a;->c:Lp1/k;

    iput-object p2, p0, Lp1/k$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lp1/k$a;->b:Lz1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lp1/k$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lp1/k$a;->c:Lp1/k;

    iget-object v4, v4, Lp1/k;->e:Lx1/p;

    iget-object v4, v4, Lx1/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lp1/k$a;->c:Lp1/k;

    iget-object v1, v0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, v0, Lp1/k;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    iget-object v0, p0, Lp1/k$a;->b:Lz1/c;

    iget-object v1, p0, Lp1/k$a;->c:Lp1/k;

    iget-object v1, v1, Lp1/k;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lz1/c;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lp1/k$a;->b:Lz1/c;

    invoke-virtual {v1, v0}, Lz1/c;->l(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
