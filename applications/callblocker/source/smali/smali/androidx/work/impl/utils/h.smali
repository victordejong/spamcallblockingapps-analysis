.class public Landroidx/work/impl/utils/h;
.super Ljava/lang/Object;
.source "StopWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/i;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "StopWorkRunnable"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/i;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/work/impl/utils/h;->b:Landroidx/work/impl/i;

    .line 47
    iput-object p2, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Landroidx/work/impl/utils/h;->d:Z

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 53
    iget-object v0, p0, Landroidx/work/impl/utils/h;->b:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 54
    iget-object v0, p0, Landroidx/work/impl/utils/h;->b:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    .line 55
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v2

    .line 56
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 58
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/work/impl/c;->h(Ljava/lang/String;)Z

    move-result v0

    .line 60
    iget-boolean v3, p0, Landroidx/work/impl/utils/h;->d:Z

    if-eqz v3, :cond_0

    .line 61
    iget-object v0, p0, Landroidx/work/impl/utils/h;->b:Landroidx/work/impl/i;

    .line 62
    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v2}, Landroidx/work/impl/c;->b(Ljava/lang/String;)Z

    move-result v0

    .line 76
    :goto_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/utils/h;->a:Ljava/lang/String;

    const-string/jumbo v4, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    .line 78
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 76
    invoke-virtual {v2, v3, v0, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 87
    return-void

    .line 65
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    .line 66
    invoke-interface {v2, v0}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v0

    sget-object v3, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    if-ne v0, v3, :cond_1

    .line 67
    sget-object v0, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v2, v0, v3}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 71
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/utils/h;->b:Landroidx/work/impl/i;

    .line 72
    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/utils/h;->c:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v2}, Landroidx/work/impl/c;->c(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 86
    throw v0
.end method
