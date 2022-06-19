.class public Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "InterstitialWebAdapter"


# instance fields
.field public controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

.field public webController:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

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
.method public getImpressionDelay()J
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->isEnhancedAdControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->isEnhancedAdControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 3

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isMoatEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->isEnhancedAdControlEnabled()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p2, v2, v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZ)V

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController;->init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->close()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Display options not specified, using defaults."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    invoke-direct {p2}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;-><init>()V

    :cond_2
    new-instance p1, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->isImmersive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->getEnterAnimationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->getExitAnimationId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransitionAnimation(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p1

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p1

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {p2, p1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    return-void
.end method
