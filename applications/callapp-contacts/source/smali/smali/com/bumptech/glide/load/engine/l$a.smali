.class final Lcom/bumptech/glide/load/engine/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/l;

.field private final b:Lcom/bumptech/glide/e/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/e/i;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l$a;->a:Lcom/bumptech/glide/load/engine/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l$a;->b:Lcom/bumptech/glide/e/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l$a;->b:Lcom/bumptech/glide/e/i;

    invoke-interface {v0}, Lcom/bumptech/glide/e/i;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l$a;->a:Lcom/bumptech/glide/load/engine/l;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 401
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$a;->a:Lcom/bumptech/glide/load/engine/l;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/l;->a:Lcom/bumptech/glide/load/engine/l$e;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$a;->b:Lcom/bumptech/glide/e/i;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/l$e;->a(Lcom/bumptech/glide/e/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$a;->a:Lcom/bumptech/glide/load/engine/l;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$a;->b:Lcom/bumptech/glide/e/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1173
    :try_start_2
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/l;->d:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/e/i;->a(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1175
    :try_start_3
    new-instance v3, Lcom/bumptech/glide/load/engine/b;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/engine/b;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 405
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$a;->a:Lcom/bumptech/glide/load/engine/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l;->a()V

    .line 406
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 406
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    .line 407
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
