.class final Landroidx/g/b/a$a;
.super Landroidx/g/b/c;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/g/b/c",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroidx/g/b/a;

.field private final f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroidx/g/b/a;)V
    .locals 2

    .prologue
    .line 48
    iput-object p1, p0, Landroidx/g/b/a$a;->b:Landroidx/g/b/a;

    invoke-direct {p0}, Landroidx/g/b/c;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroidx/g/b/a$a;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/g/b/a$a;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Landroidx/g/b/a$a;->b:Landroidx/g/b/a;

    invoke-virtual {v0}, Landroidx/g/b/a;->e()Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {p0}, Landroidx/g/b/a$a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    throw v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroidx/g/b/a$a;->b:Landroidx/g/b/a;

    invoke-virtual {v0, p0, p1}, Landroidx/g/b/a;->b(Landroidx/g/b/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Landroidx/g/b/a$a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/g/b/a$a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Landroidx/g/b/a$a;->b:Landroidx/g/b/a;

    invoke-virtual {v0, p0, p1}, Landroidx/g/b/a;->a(Landroidx/g/b/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Landroidx/g/b/a$a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/g/b/a$a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/g/b/a$a;->a:Z

    .line 105
    iget-object v0, p0, Landroidx/g/b/a$a;->b:Landroidx/g/b/a;

    invoke-virtual {v0}, Landroidx/g/b/a;->c()V

    .line 106
    return-void
.end method
