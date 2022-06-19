.class public final Landroidx/work/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/a$b;,
        Landroidx/work/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lo1/q;

.field public final d:Lo1/n;

.field public final e:Lf/t;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Landroidx/work/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/work/a;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/work/a;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    .line 4
    sget-object p1, Lo1/q;->a:Ljava/lang/String;

    .line 5
    new-instance p1, Lo1/p;

    invoke-direct {p1}, Lo1/p;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/work/a;->c:Lo1/q;

    .line 7
    new-instance p1, Lo1/g;

    invoke-direct {p1}, Lo1/g;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/work/a;->d:Lo1/n;

    .line 9
    new-instance p1, Lf/t;

    invoke-direct {p1}, Lf/t;-><init>()V

    iput-object p1, p0, Landroidx/work/a;->e:Lf/t;

    const/4 p1, 0x4

    .line 10
    iput p1, p0, Landroidx/work/a;->f:I

    const p1, 0x7fffffff

    .line 11
    iput p1, p0, Landroidx/work/a;->g:I

    const/16 p1, 0x14

    .line 12
    iput p1, p0, Landroidx/work/a;->h:I

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    new-instance v1, Lo1/a;

    invoke-direct {v1, p0, p1}, Lo1/a;-><init>(Landroidx/work/a;Z)V

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method
