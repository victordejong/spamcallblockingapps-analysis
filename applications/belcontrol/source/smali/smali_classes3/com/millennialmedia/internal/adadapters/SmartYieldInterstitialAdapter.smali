.class public Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source ""


# instance fields
.field private downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

.field private interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

.field private mediatedAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    iput-object p3, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->mediatedAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    return-void
.end method


# virtual methods
.method public getImpressionDelay()J
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getImpressionDelay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getMinImpressionViewabilityPercentage()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionViewabilityPercent()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->mediatedAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;->interstitialAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    return-void
.end method
