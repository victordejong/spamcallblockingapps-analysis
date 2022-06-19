.class public Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source ""


# instance fields
.field public adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field public controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

.field public webController:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-void
.end method

.method private isEnhancedAdControlEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    const-string v1, "enhancedAdControlEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/AdMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V
    .locals 2

    iget v0, p2, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertDipsToPixels(I)I

    move-result v0

    iget p2, p2, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    invoke-static {p2}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertDipsToPixels(I)I

    move-result p2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getImpressionDelay()J
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->isEnhancedAdControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionDuration()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->isEnhancedAdControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionViewabilityPercent()I

    move-result v0

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 6

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    new-instance p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isMoatEnabled()Z

    move-result v2

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->isEnhancedAdControlEnabled()Z

    move-result v3

    invoke-virtual {p3}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->isImmersive()Z

    move-result v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZZZ)V

    new-instance p3, Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-direct {p3, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V

    iput-object p3, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController;->init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->close()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    :cond_0
    return-void
.end method
