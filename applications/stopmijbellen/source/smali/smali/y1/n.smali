.class public Ly1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Lz1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lx1/p;

.field public final d:Landroidx/work/ListenableWorker;

.field public final e:Lo1/e;

.field public final f:La2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly1/n;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx1/p;Landroidx/work/ListenableWorker;Lo1/e;La2/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lz1/c;

    invoke-direct {v0}, Lz1/c;-><init>()V

    .line 3
    iput-object v0, p0, Ly1/n;->a:Lz1/c;

    .line 4
    iput-object p1, p0, Ly1/n;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Ly1/n;->c:Lx1/p;

    .line 6
    iput-object p3, p0, Ly1/n;->d:Landroidx/work/ListenableWorker;

    .line 7
    iput-object p4, p0, Ly1/n;->e:Lo1/e;

    .line 8
    iput-object p5, p0, Ly1/n;->f:La2/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly1/n;->c:Lx1/p;

    iget-boolean v0, v0, Lx1/p;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, Li0/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lz1/c;

    invoke-direct {v0}, Lz1/c;-><init>()V

    .line 3
    iget-object v1, p0, Ly1/n;->f:La2/a;

    check-cast v1, La2/b;

    .line 4
    iget-object v1, v1, La2/b;->c:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v2, Ly1/n$a;

    invoke-direct {v2, p0, v0}, Ly1/n$a;-><init>(Ly1/n;Lz1/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    new-instance v1, Ly1/n$b;

    invoke-direct {v1, p0, v0}, Ly1/n$b;-><init>(Ly1/n;Lz1/c;)V

    iget-object v2, p0, Ly1/n;->f:La2/a;

    .line 7
    check-cast v2, La2/b;

    .line 8
    iget-object v2, v2, La2/b;->c:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v0, v1, v2}, Lz1/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Ly1/n;->a:Lz1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz1/c;->k(Ljava/lang/Object;)Z

    return-void
.end method
