.class public Lsk0$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk0$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsk0$e;


# direct methods
.method public constructor <init>(Lsk0$e;)V
    .locals 0

    iput-object p1, p0, Lsk0$e$a;->a:Lsk0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lsk0;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lsk0$e$a;->a:Lsk0$e;

    iget-object v0, v0, Lsk0$e;->b:Ljava/lang/String;

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v2

    invoke-static {}, Lsk0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lbl0;->e(Ljava/lang/String;Lal0;Ljava/lang/String;)V

    invoke-static {}, Lal0;->a()V

    invoke-static {v1}, Lsk0;->i(Lal0;)Lal0;

    :cond_0
    invoke-static {}, Lsk0;->m()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lsk0;->n(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
