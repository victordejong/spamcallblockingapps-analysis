.class public Lcom/millennialmedia/InterstitialAd$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InterstitialAd;

.field public final synthetic val$errorStatus:Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

.field public final synthetic val$localInterstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$8;->this$0:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$8;->val$localInterstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$8;->val$errorStatus:Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$8;->val$localInterstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$8;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$8;->val$errorStatus:Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialListener;->onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method
