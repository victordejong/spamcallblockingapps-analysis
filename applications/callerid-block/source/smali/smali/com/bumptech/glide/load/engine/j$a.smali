.class Lcom/bumptech/glide/load/engine/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/request/f;

.field final synthetic c:Lcom/bumptech/glide/load/engine/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/request/f;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j$a;->c:Lcom/bumptech/glide/load/engine/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/j$a;->b:Lcom/bumptech/glide/request/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$a;->b:Lcom/bumptech/glide/request/f;

    invoke-interface {v0}, Lcom/bumptech/glide/request/f;->f()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j$a;->c:Lcom/bumptech/glide/load/engine/j;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j$a;->c:Lcom/bumptech/glide/load/engine/j;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/j$e;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/j$a;->b:Lcom/bumptech/glide/request/f;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/j$e;->j(Lcom/bumptech/glide/request/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j$a;->c:Lcom/bumptech/glide/load/engine/j;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/j$a;->b:Lcom/bumptech/glide/request/f;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/j;->e(Lcom/bumptech/glide/request/f;)V

    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j$a;->c:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/j;->h()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
