.class public Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

.field public final synthetic val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController$7;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$twoPartWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expanded web view is no longer valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$sizableStateManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/SizableStateManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sizing container is no longer valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/millennialmedia/internal/SizableStateManager;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sizing container has been collapsed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$expandParams:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->hideLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    if-eqz v2, :cond_6

    iget v3, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_6

    iget-object v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to retrieve expanded content"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->showCloseIndicator(Z)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
