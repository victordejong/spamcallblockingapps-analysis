.class public Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomEventInterstitialListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClicked()V

    return-void
.end method

.method public onClosed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    return-void
.end method

.method public onExpired()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onExpired()V

    return-void
.end method

.method public onLoadFailed(Lcom/millennialmedia/mediation/ErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initSucceeded()V

    return-void
.end method

.method public onShowFailed(Lcom/millennialmedia/mediation/ErrorCode;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method

.method public onShown()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->shown()V

    return-void
.end method
