.class final Ld/a/b$c;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final d:Ljava/util/concurrent/Executor;

.field final e:Ld/a/b$b;

.field final synthetic f:Ld/a/b;


# virtual methods
.method a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/a/b$c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Ld/a/b;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/a/b$c;->e:Ld/a/b$b;

    iget-object v1, p0, Ld/a/b$c;->f:Ld/a/b;

    invoke-interface {v0, v1}, Ld/a/b$b;->a(Ld/a/b;)V

    return-void
.end method
