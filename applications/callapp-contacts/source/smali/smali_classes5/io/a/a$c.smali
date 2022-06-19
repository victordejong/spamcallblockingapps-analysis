.class final Lio/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:Lio/a/a$b;

.field final synthetic b:Lio/a/a;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/a/a;Ljava/util/concurrent/Executor;Lio/a/a$b;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lio/a/a$c;->b:Lio/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p2, p0, Lio/a/a$c;->c:Ljava/util/concurrent/Executor;

    .line 1019
    iput-object p3, p0, Lio/a/a$c;->a:Lio/a/a$b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1024
    :try_start_0
    iget-object v0, p0, Lio/a/a$c;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1026
    sget-object v1, Lio/a/a;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lio/a/a$c;->a:Lio/a/a$b;

    iget-object v1, p0, Lio/a/a$c;->b:Lio/a/a;

    invoke-interface {v0, v1}, Lio/a/a$b;->a(Lio/a/a;)V

    return-void
.end method
