.class public Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    new-instance v1, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$102(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;)Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$300(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v1}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$400(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventInterstitial;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;

    invoke-static {v3}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/millennialmedia/mediation/CustomEventInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/millennialmedia/mediation/CustomEventInterstitial$CustomEventInterstitialListener;Landroid/os/Bundle;)V

    return-void
.end method
