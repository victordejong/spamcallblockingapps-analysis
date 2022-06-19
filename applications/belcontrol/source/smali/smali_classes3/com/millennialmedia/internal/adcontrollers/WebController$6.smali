.class public Lcom/millennialmedia/internal/adcontrollers/WebController$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->createWebView(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field public final synthetic val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field public final synthetic val$contextRef:Ljava/lang/ref/WeakReference;

.field public final synthetic val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

.field public final synthetic val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;Ljava/lang/ref/WeakReference;Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    iput-object p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$contextRef:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->close()V

    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 8

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MMWebView instance is null, unable to expand"

    :goto_0
    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-boolean v3, v3, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->immersive:Z

    iput-boolean v3, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->immersive:Z

    iget-object v3, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-boolean v3, v3, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->interstitial:Z

    xor-int/2addr v3, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Context is no longer valid, unable to expand"

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-object v5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-boolean v6, v5, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableMoat:Z

    iget-boolean v5, v5, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableEnhancedAdControl:Z

    invoke-direct {v3, v1, v6, v5, v4}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZZ)V

    iget-object v5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iget-object v7, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-virtual {v5, v0, v3, v6, v7}, Lcom/millennialmedia/internal/adcontrollers/WebController;->createWebView(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$502(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$500(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setTwoPartExpand()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$500(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$500(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->loadTwoPartContentAsync(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$500(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iput-boolean v4, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->transparent:Z

    :cond_3
    invoke-virtual {v2, v0, p1, v3}, Lcom/millennialmedia/internal/SizableStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Z)Z

    move-result p1

    return p1
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onClicked()V

    return-void
.end method

.method public onFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->twoPart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->initFailed()V

    :cond_0
    return-void
.end method

.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->twoPart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->initSucceeded()V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MMWebView instance is null, unable to resize"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result p1

    return p1
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$600(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$600(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$600(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$600(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->showCloseIndicator(Z)V

    :cond_0
    return-void
.end method
