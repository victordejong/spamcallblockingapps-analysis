.class public Ljk0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk0;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/TimerTask;

.field public final synthetic b:Ljk0;


# direct methods
.method public constructor <init>(Ljk0;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Ljk0$b;->b:Ljk0;

    iput-object p2, p0, Ljk0$b;->a:Ljava/util/TimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Ljk0$b;->b:Ljk0;

    invoke-static {v0}, Ljk0;->e(Ljk0;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljk0$b;->b:Ljk0;

    invoke-static {v0}, Ljk0;->e(Ljk0;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Ljk0$b;->b:Ljk0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljk0;->h(Ljk0;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ljk0$b;->b:Ljk0;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Ljk0;->f(Ljk0;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Ljk0$b;->b:Ljk0;

    invoke-static {v0}, Ljk0;->e(Ljk0;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Ljk0$b;->a:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljk0;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error scheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
