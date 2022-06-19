.class final Lcom/facebook/appevents/b/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/b/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/TimerTask;

.field final synthetic b:Lcom/facebook/appevents/b/e;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/b/e;Ljava/util/TimerTask;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/facebook/appevents/b/e$2;->b:Lcom/facebook/appevents/b/e;

    iput-object p2, p0, Lcom/facebook/appevents/b/e$2;->a:Ljava/util/TimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/b/e$2;->b:Lcom/facebook/appevents/b/e;

    invoke-static {v0}, Lcom/facebook/appevents/b/e;->c(Lcom/facebook/appevents/b/e;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/facebook/appevents/b/e$2;->b:Lcom/facebook/appevents/b/e;

    invoke-static {v0}, Lcom/facebook/appevents/b/e;->c(Lcom/facebook/appevents/b/e;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/facebook/appevents/b/e$2;->b:Lcom/facebook/appevents/b/e;

    invoke-static {v0}, Lcom/facebook/appevents/b/e;->d(Lcom/facebook/appevents/b/e;)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/facebook/appevents/b/e$2;->b:Lcom/facebook/appevents/b/e;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/appevents/b/e;->a(Lcom/facebook/appevents/b/e;Ljava/util/Timer;)Ljava/util/Timer;

    .line 150
    iget-object v0, p0, Lcom/facebook/appevents/b/e$2;->b:Lcom/facebook/appevents/b/e;

    invoke-static {v0}, Lcom/facebook/appevents/b/e;->c(Lcom/facebook/appevents/b/e;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/b/e$2;->a:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    :try_start_1
    invoke-static {}, Lcom/facebook/appevents/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error scheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 155
    :goto_0
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
