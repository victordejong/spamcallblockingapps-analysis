.class public final synthetic Landroidx/emoji2/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/emoji2/text/e;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/emoji2/text/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/emoji2/text/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;

    iget-object v1, p0, Landroidx/emoji2/text/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/d$h;

    iget-object v2, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    iget-object v3, v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;->a:Landroid/content/Context;

    invoke-static {v3}, Landroidx/emoji2/text/c;->a(Landroid/content/Context;)Landroidx/emoji2/text/j;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    iget-object v4, v3, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    .line 3
    check-cast v4, Landroidx/emoji2/text/j$b;

    .line 4
    iget-object v5, v4, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iput-object v2, v4, Landroidx/emoji2/text/j$b;->f:Ljava/util/concurrent/Executor;

    .line 6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v3, v3, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    .line 8
    new-instance v4, Landroidx/emoji2/text/f;

    invoke-direct {v4, v0, v1, v2}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer$b;Landroidx/emoji2/text/d$h;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v3, v4}, Landroidx/emoji2/text/d$g;->a(Landroidx/emoji2/text/d$h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 11
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/d$h;->a(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_0
    return-void

    .line 13
    :goto_1
    iget-object v0, p0, Landroidx/emoji2/text/e;->b:Ljava/lang/Object;

    check-cast v0, Lm6/e;

    iget-object v1, p0, Landroidx/emoji2/text/e;->c:Ljava/lang/Object;

    check-cast v1, Lo6/g;

    iget-object v2, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    check-cast v2, Lo6/d;

    sget-object v3, Lm6/e;->r:Lg6/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lo6/i;->F()Lo6/i$b;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/protobuf/i$a;->n()V

    .line 16
    iget-object v4, v3, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v4, Lo6/i;

    invoke-static {v4, v1}, Lo6/i;->A(Lo6/i;Lo6/g;)V

    .line 17
    invoke-virtual {v0, v3, v2}, Lm6/e;->e(Lo6/i$b;Lo6/d;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
