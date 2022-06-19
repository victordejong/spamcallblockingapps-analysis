.class public Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "InterstitialVASTVideoAdapter"


# instance fields
.field private volatile attached:Z

.field private mmVastActivity:Lcom/millennialmedia/internal/MMActivity;

.field private vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field public vastVideoControllerListener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoControllerListener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->attached:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->attached:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/MMActivity;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->mmVastActivity:Lcom/millennialmedia/internal/MMActivity;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->mmVastActivity:Lcom/millennialmedia/internal/MMActivity;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 1

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance p2, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoControllerListener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-direct {p2, v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->close()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Display options not specified, using defaults."

    invoke-static {p2, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    invoke-direct {p2}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->setImmersive(Z)Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    move-result-object p2

    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;->isImmersive()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p2

    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V

    invoke-static {p1, p2, v0}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    return-void
.end method
