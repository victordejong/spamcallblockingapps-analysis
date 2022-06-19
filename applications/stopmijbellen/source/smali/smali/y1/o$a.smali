.class public Ly1/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly1/o;->a(Landroid/content/Context;Ljava/util/UUID;Lo1/d;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/c;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic c:Lo1/d;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ly1/o;


# direct methods
.method public constructor <init>(Ly1/o;Lz1/c;Ljava/util/UUID;Lo1/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/o$a;->e:Ly1/o;

    iput-object p2, p0, Ly1/o$a;->a:Lz1/c;

    iput-object p3, p0, Ly1/o$a;->b:Ljava/util/UUID;

    iput-object p4, p0, Ly1/o$a;->c:Lo1/d;

    iput-object p5, p0, Ly1/o$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ly1/o$a;->a:Lz1/c;

    .line 2
    iget-object v0, v0, Lz1/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Lz1/a$c;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ly1/o$a;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ly1/o$a;->e:Ly1/o;

    iget-object v1, v1, Ly1/o;->c:Lx1/q;

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v0}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lo1/m;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Ly1/o$a;->e:Ly1/o;

    iget-object v1, v1, Ly1/o;->b:Lw1/a;

    iget-object v2, p0, Ly1/o$a;->c:Lo1/d;

    check-cast v1, Lp1/c;

    invoke-virtual {v1, v0, v2}, Lp1/c;->f(Ljava/lang/String;Lo1/d;)V

    .line 8
    iget-object v1, p0, Ly1/o$a;->d:Landroid/content/Context;

    iget-object v2, p0, Ly1/o$a;->c:Lo1/d;

    invoke-static {v1, v0, v2}, Landroidx/work/impl/foreground/a;->b(Landroid/content/Context;Ljava/lang/String;Lo1/d;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    iget-object v1, p0, Ly1/o$a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Ly1/o$a;->a:Lz1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz1/c;->k(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Ly1/o$a;->a:Lz1/c;

    invoke-virtual {v1, v0}, Lz1/c;->l(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
