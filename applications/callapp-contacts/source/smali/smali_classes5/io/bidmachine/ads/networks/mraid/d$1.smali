.class final Lio/bidmachine/ads/networks/mraid/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/d;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/mraid/d;

.field final synthetic val$iabClickCallback:Lcom/explorestack/iab/utils/c;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/d;Lcom/explorestack/iab/utils/c;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/d$1;->this$0:Lio/bidmachine/ads/networks/mraid/d;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/d$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/d$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/c;

    invoke-interface {v0}, Lcom/explorestack/iab/utils/c;->clickHandled()V

    return-void
.end method
