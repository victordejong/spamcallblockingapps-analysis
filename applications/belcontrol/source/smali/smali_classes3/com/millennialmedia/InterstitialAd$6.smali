.class public Lcom/millennialmedia/InterstitialAd$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InterstitialAd;

.field public final synthetic val$localInterstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$6;->this$0:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$6;->val$localInterstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$6;->val$localInterstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$6;->this$0:Lcom/millennialmedia/InterstitialAd;

    new-instance v2, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialListener;->onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method
