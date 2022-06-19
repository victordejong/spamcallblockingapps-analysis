.class public Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;
.super Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
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

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$102(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->attach(Lcom/millennialmedia/internal/MMActivity;)V

    :cond_0
    return-void
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object p1, p1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$102(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;

    :cond_0
    return-void
.end method
