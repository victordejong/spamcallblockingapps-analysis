.class final Lcom/facebook/appevents/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/a;Lcom/facebook/appevents/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a;

.field final synthetic b:Lcom/facebook/appevents/c;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a;Lcom/facebook/appevents/c;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/facebook/appevents/e$4;->a:Lcom/facebook/appevents/a;

    iput-object p2, p0, Lcom/facebook/appevents/e$4;->b:Lcom/facebook/appevents/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/e;->c()Lcom/facebook/appevents/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/e$4;->a:Lcom/facebook/appevents/a;

    iget-object v2, p0, Lcom/facebook/appevents/e$4;->b:Lcom/facebook/appevents/c;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/d;->a(Lcom/facebook/appevents/a;Lcom/facebook/appevents/c;)V

    .line 100
    invoke-static {}, Lcom/facebook/appevents/g;->a()I

    move-result v0

    sget v1, Lcom/facebook/appevents/g$a;->b:I

    if-eq v0, v1, :cond_1

    .line 101
    invoke-static {}, Lcom/facebook/appevents/e;->c()Lcom/facebook/appevents/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/d;->b()I

    move-result v0

    invoke-static {}, Lcom/facebook/appevents/e;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 102
    sget-object v0, Lcom/facebook/appevents/j;->EVENT_THRESHOLD:Lcom/facebook/appevents/j;

    invoke-static {v0}, Lcom/facebook/appevents/e;->b(Lcom/facebook/appevents/j;)V

    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/e;->e()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    invoke-static {}, Lcom/facebook/appevents/e;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/facebook/appevents/e;->f()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/facebook/appevents/e;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 108
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
