.class public Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->showCloseIndicatorDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->access$602(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->access$700(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    return-void
.end method
