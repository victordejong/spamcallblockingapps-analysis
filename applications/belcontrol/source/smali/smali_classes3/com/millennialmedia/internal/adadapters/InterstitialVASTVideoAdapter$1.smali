.class public Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    :cond_0
    return-void
.end method

.method public attachSucceeded()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$002(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Z)Z

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->shown()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/MMActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/MMActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    :cond_0
    return-void
.end method

.method public initFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    return-void
.end method

.method public initSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initSucceeded()V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClicked()V

    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method
