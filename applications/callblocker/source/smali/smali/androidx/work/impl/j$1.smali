.class Landroidx/work/impl/j$1;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/utils/a/c;

.field final synthetic b:Landroidx/work/impl/j;


# direct methods
.method constructor <init>(Landroidx/work/impl/j;Landroidx/work/impl/utils/a/c;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Landroidx/work/impl/j$1;->b:Landroidx/work/impl/j;

    iput-object p2, p0, Landroidx/work/impl/j$1;->a:Landroidx/work/impl/utils/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/j$1;->b:Landroidx/work/impl/j;

    iget-object v5, v5, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v5, v5, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 281
    iget-object v0, p0, Landroidx/work/impl/j$1;->b:Landroidx/work/impl/j;

    iget-object v1, p0, Landroidx/work/impl/j$1;->b:Landroidx/work/impl/j;

    iget-object v1, v1, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->d()Lcom/google/a/a/a/a;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/j;->g:Lcom/google/a/a/a/a;

    .line 282
    iget-object v0, p0, Landroidx/work/impl/j$1;->a:Landroidx/work/impl/utils/a/c;

    iget-object v1, p0, Landroidx/work/impl/j$1;->b:Landroidx/work/impl/j;

    iget-object v1, v1, Landroidx/work/impl/j;->g:Lcom/google/a/a/a/a;

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Lcom/google/a/a/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    iget-object v1, p0, Landroidx/work/impl/j$1;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
