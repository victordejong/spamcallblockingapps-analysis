.class final Landroidx/work/impl/utils/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/l;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/f;)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/utils/a/c;

.field final synthetic b:Ljava/util/UUID;

.field final synthetic c:Landroidx/work/f;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Landroidx/work/impl/utils/l;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/l;Landroidx/work/impl/utils/a/c;Ljava/util/UUID;Landroidx/work/f;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Landroidx/work/impl/utils/l$1;->e:Landroidx/work/impl/utils/l;

    iput-object p2, p0, Landroidx/work/impl/utils/l$1;->a:Landroidx/work/impl/utils/a/c;

    iput-object p3, p0, Landroidx/work/impl/utils/l$1;->b:Ljava/util/UUID;

    iput-object p4, p0, Landroidx/work/impl/utils/l$1;->c:Landroidx/work/f;

    iput-object p5, p0, Landroidx/work/impl/utils/l$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/l$1;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v0}, Landroidx/work/impl/utils/a/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Landroidx/work/impl/utils/l$1;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Landroidx/work/impl/utils/l$1;->e:Landroidx/work/impl/utils/l;

    iget-object v1, v1, Landroidx/work/impl/utils/l;->b:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Landroidx/work/t$a;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Landroidx/work/impl/utils/l$1;->e:Landroidx/work/impl/utils/l;

    iget-object v1, v1, Landroidx/work/impl/utils/l;->a:Landroidx/work/impl/foreground/a;

    iget-object v2, p0, Landroidx/work/impl/utils/l$1;->c:Landroidx/work/f;

    invoke-interface {v1, v0, v2}, Landroidx/work/impl/foreground/a;->a(Ljava/lang/String;Landroidx/work/f;)V

    .line 96
    iget-object v1, p0, Landroidx/work/impl/utils/l$1;->d:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/utils/l$1;->c:Landroidx/work/f;

    invoke-static {v1, v0, v2}, Landroidx/work/impl/foreground/b;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/f;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/work/impl/utils/l$1;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/l$1;->a:Landroidx/work/impl/utils/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Landroidx/work/impl/utils/l$1;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
