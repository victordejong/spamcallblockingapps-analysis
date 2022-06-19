.class public Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x7

    const-string v3, "Unable to start interstitial activity"

    invoke-direct {v1, v2, v3}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method

.method public attachSucceeded()V
    .locals 0

    return-void
.end method

.method public initFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    return-void
.end method

.method public initSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initSucceeded()V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClicked()V

    return-void
.end method

.method public onCollapsed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    return-void
.end method

.method public onExpanded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->shown()V

    return-void
.end method

.method public onResize(II)V
    .locals 0

    return-void
.end method

.method public onResized(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object p1, p1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    :cond_0
    return-void
.end method
