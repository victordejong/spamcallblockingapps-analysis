.class public Lcom/millennialmedia/internal/adcontrollers/WebController$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field public final synthetic val$activityConfig:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->val$activityConfig:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMWebView instance is null, unable to expand"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-direct {v2}, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;-><init>()V

    const/4 v3, -0x1

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showCloseIndicator:Z

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->val$activityConfig:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-virtual {v1, v0, v2, v3}, Lcom/millennialmedia/internal/SizableStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    :cond_1
    return-void
.end method
