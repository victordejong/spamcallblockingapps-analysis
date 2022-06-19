.class public Lcom/millennialmedia/InlineAd$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->onRequestSucceeded(Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InlineAd;

.field public final synthetic val$adAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

.field public final synthetic val$adContainer:Landroid/view/ViewGroup;

.field public final synthetic val$callerRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd;Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$5;->val$adContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/millennialmedia/InlineAd$5;->val$callerRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p4, p0, Lcom/millennialmedia/InlineAd$5;->val$adAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->val$adContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$2200(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    const-string v1, "loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$3302(Lcom/millennialmedia/InlineAd;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request succeeded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$3400(Lcom/millennialmedia/InlineAd;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->val$callerRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    new-instance v7, Lcom/millennialmedia/InlineAd$ImpressionListener;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$2200(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$5;->val$adAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$3500(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$5;->val$adAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$3600(Lcom/millennialmedia/internal/adadapters/AdAdapter;)I

    move-result v6

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/millennialmedia/InlineAd$ImpressionListener;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;JI)V

    invoke-static {v0, v7}, Lcom/millennialmedia/InlineAd;->access$402(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$ImpressionListener;)Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$400(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$ImpressionListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/InlineAd$ImpressionListener;->listen()V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$3700(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/InlineAd$5$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$5$1;-><init>(Lcom/millennialmedia/InlineAd$5;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
