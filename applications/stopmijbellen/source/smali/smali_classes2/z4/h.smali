.class public final synthetic Lz4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz4/s;

.field public final synthetic b:Lw5/b;


# direct methods
.method public synthetic constructor <init>(Lz4/s;Lw5/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/h;->a:Lz4/s;

    iput-object p2, p0, Lz4/h;->b:Lw5/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lz4/h;->a:Lz4/s;

    iget-object v1, p0, Lz4/h;->b:Lw5/b;

    .line 1
    iget-object v2, v0, Lz4/s;->b:Lw5/b;

    sget-object v3, Lz4/r;->a:Lz4/r;

    if-ne v2, v3, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lz4/s;->a:Lw5/a$a;

    const/4 v3, 0x0

    .line 4
    iput-object v3, v0, Lz4/s;->a:Lw5/a$a;

    .line 5
    iput-object v1, v0, Lz4/s;->b:Lw5/b;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v2, v1}, Lw5/a$a;->d(Lw5/b;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
