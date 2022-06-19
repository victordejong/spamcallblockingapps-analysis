.class public final Landroidx/work/impl/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/j;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    .line 36
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/work/impl/utils/j;->b:Landroidx/work/impl/j;

    .line 47
    iput-object p2, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Landroidx/work/impl/utils/j;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 53
    iget-object v0, p0, Landroidx/work/impl/utils/j;->b:Landroidx/work/impl/j;

    .line 1317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 54
    iget-object v1, p0, Landroidx/work/impl/utils/j;->b:Landroidx/work/impl/j;

    .line 1346
    iget-object v1, v1, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 55
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 58
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/work/impl/d;->g(Ljava/lang/String;)Z

    move-result v1

    .line 60
    iget-boolean v3, p0, Landroidx/work/impl/utils/j;->d:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 61
    iget-object v1, p0, Landroidx/work/impl/utils/j;->b:Landroidx/work/impl/j;

    .line 2346
    iget-object v1, v1, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 62
    iget-object v2, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v2}, Landroidx/work/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    .line 66
    invoke-interface {v2, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v1

    sget-object v3, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    if-ne v1, v3, :cond_1

    .line 67
    sget-object v1, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    new-array v3, v5, [Ljava/lang/String;

    iget-object v6, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-interface {v2, v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 71
    :cond_1
    iget-object v1, p0, Landroidx/work/impl/utils/j;->b:Landroidx/work/impl/j;

    .line 3346
    iget-object v1, v1, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 72
    iget-object v2, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2}, Landroidx/work/impl/d;->b(Ljava/lang/String;)Z

    move-result v1

    .line 76
    :goto_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/utils/j;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v5

    .line 78
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 86
    throw v1
.end method
