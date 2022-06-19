.class public Lcom/millennialmedia/internal/task/ThreadTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/task/ThreadTask;->execute(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/task/ThreadTask;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/task/ThreadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/task/ThreadTask$1;->this$0:Lcom/millennialmedia/internal/task/ThreadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/task/ThreadTask$1;->this$0:Lcom/millennialmedia/internal/task/ThreadTask;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/task/ThreadTask;->executeCommand()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/millennialmedia/internal/task/ThreadTask;->access$002(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method
