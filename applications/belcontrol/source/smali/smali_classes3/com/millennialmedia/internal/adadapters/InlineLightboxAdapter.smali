.class public Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source ""


# instance fields
.field private inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field private lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field private lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    return-object p0
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

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->attach(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getImpressionDelay()J
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionViewabilityPercent()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    new-instance p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iget-object p3, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-direct {p2, p3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iget-object p3, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->close()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    :cond_0
    return-void
.end method
