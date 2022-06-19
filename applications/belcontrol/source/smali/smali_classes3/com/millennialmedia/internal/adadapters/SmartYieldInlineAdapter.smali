.class public Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

.field private inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

.field private mediatedAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field private upstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineAdapter;Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;Lcom/millennialmedia/internal/adadapters/InlineAdapter;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    iput-object p4, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->mediatedAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->upstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;

    iput-object p3, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    return-void
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V
    .locals 3

    iget v0, p2, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertDipsToPixels(I)I

    move-result v0

    iget v1, p2, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertDipsToPixels(I)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->upstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;->attachView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V

    return-void
.end method

.method public getImpressionDelay()J
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

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

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getMinImpressionViewabilityPercentage()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionViewabilityPercent()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->mediatedAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-virtual {v0, p1, v1, p3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->downstreamMediatedAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;->inlineAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    :cond_0
    return-void
.end method
