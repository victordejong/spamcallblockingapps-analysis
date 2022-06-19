.class public final synthetic Ll6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll6/a;->a:I

    iput-object p1, p0, Ll6/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll6/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll6/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ll6/a;->c:Ljava/lang/Object;

    check-cast v0, Ll6/f;

    iget-object v1, p0, Ll6/a;->b:Ljava/lang/Object;

    check-cast v1, Ln6/e;

    sget-object v2, Ll6/f;->f:Lg6/a;

    .line 1
    invoke-virtual {v0, v1}, Ll6/f;->b(Ln6/e;)Lo6/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Ll6/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Ll6/a;->c:Ljava/lang/Object;

    check-cast v0, Ll6/b;

    iget-object v1, p0, Ll6/a;->b:Ljava/lang/Object;

    check-cast v1, Ln6/e;

    .line 4
    invoke-virtual {v0, v1}, Ll6/b;->b(Ln6/e;)Lo6/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Ll6/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Ll6/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Ll6/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Semaphore;

    sget-object v2, Lk7/h;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
