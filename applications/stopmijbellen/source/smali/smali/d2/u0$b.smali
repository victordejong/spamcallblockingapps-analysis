.class public Ld2/u0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/u0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/u0;


# direct methods
.method public constructor <init>(Ld2/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/u0$b;->a:Ld2/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ld2/u0$b;->a:Ld2/u0;

    .line 2
    iget-object v1, v1, Ld2/u0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x3c

    .line 3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/f4;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Ld2/u0$b;->a:Ld2/u0;

    invoke-static {v2, v1}, Ld2/u0;->c(Ld2/u0;Ld2/f4;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Ld2/u0$b;->a:Ld2/u0;

    .line 6
    iget-object v1, v1, Ld2/u0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v2, p0, Ld2/u0$b;->a:Ld2/u0;

    .line 9
    iget-object v2, v2, Ld2/u0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Ld2/u0$b;->a:Ld2/u0;

    .line 12
    iput-boolean v0, v2, Ld2/u0;->g:Z

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "Native messages thread was interrupted: "

    .line 15
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 16
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v0, v1, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_0
.end method
