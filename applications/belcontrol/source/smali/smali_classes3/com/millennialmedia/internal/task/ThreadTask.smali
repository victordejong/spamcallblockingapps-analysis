.class public abstract Lcom/millennialmedia/internal/task/ThreadTask;
.super Lcom/millennialmedia/internal/task/Task;
.source ""


# static fields
.field private static volatile scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/Task;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/task/ThreadTask;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p0
.end method

.method private cancel()V
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/task/ThreadTask;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/ThreadTask;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancelling task."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/task/ThreadTask;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/internal/task/ThreadTask;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public execute(J)V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/ThreadTask;->cancel()V

    new-instance v0, Lcom/millennialmedia/internal/task/ThreadTask$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/task/ThreadTask$1;-><init>(Lcom/millennialmedia/internal/task/ThreadTask;)V

    invoke-static {v0, p1, p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p1

    sput-object p1, Lcom/millennialmedia/internal/task/ThreadTask;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method public abstract executeCommand()V
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method
